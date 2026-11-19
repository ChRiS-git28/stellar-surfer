#!/usr/bin/env bash
# Uploads the release zips of $TAG to CurseForge and Modrinth. Skips a site whose token is missing.
set -euo pipefail
VER="${TAG#v}"
CFG=.github/publish.json
CL="changelogs/$VER"
DP="dist/StellarSurfer-Datapack-$VER.zip"
RP="dist/StellarSurfer-ResourcePack-$VER.zip"
JAR="dist/StellarSurfer-NeoForge-$VER.jar"
CL_MOD="$CL/mod.md"; [ -f "$CL_MOD" ] || CL_MOD="$CL/datapack.md"
UA="stellar-surfer-publisher/1.0 (GitHub Actions)"
for f in "$DP" "$RP" "$CL/datapack.md" "$CL/resourcepack.md"; do
  [ -f "$f" ] || { echo "::error::missing $f"; exit 1; }
done
TARGETS="${TARGETS:-all}"
CHANNEL="${CHANNEL:-$(jq -r '.release_type // "release"' $CFG)}"
echo "Targets: $TARGETS, version type: $CHANNEL"
NAME_DP="$(jq -r .names.datapack $CFG) $VER"
NAME_RP="$(jq -r .names.resourcepack $CFG) $VER"
NAME_MOD="$(jq -r .names.mod $CFG) $VER"

# ---------- CurseForge ----------
cf_upload() { # project_id file changelog display_name [game_version_ids_json]
  local meta gv="${5:-$(jq -c .curseforge.game_version_ids $CFG)}"
  meta=$(jq -n --rawfile cl "$3" --arg dn "$4" --argjson gv "$gv" --arg rt "$CHANNEL" \
    '{changelog: $cl, changelogType: "markdown", displayName: $dn, gameVersions: $gv, releaseType: $rt}')
  curl -sS --fail-with-body -A "$UA" -H "X-Api-Token: $CF_TOKEN" \
    --form-string "metadata=$meta" -F "file=@$2" \
    "https://minecraft.curseforge.com/api/projects/$1/upload-file"
  echo
}
if [ "$TARGETS" = "modrinth" ]; then
  echo "CurseForge: not selected"
elif [ -n "${CF_TOKEN:-}" ]; then
  if [ "$TARGETS" != "modrinth+cf-mod" ]; then   # modrinth+cf-mod = CurseForge packs already sent, only the jar is missing there
    cf_upload "$(jq -r .curseforge.datapack_id $CFG)" "$DP" "$CL/datapack.md" "$NAME_DP"
    cf_upload "$(jq -r .curseforge.resourcepack_id $CFG)" "$RP" "$CL/resourcepack.md" "$NAME_RP"
  fi
  CF_MOD=$(jq -r '.curseforge.mod_id // empty' $CFG)
  if [ -n "$CF_MOD" ] && [ -f "$JAR" ]; then
    # the jar is a mod: Minecraft version + NeoForge loader (id read from CurseForge's official list)
    # plus the environment (Client + Server), required for mods
    vers=$(curl -sS --fail-with-body -A "$UA" -H "X-Api-Token: $CF_TOKEN" "https://minecraft.curseforge.com/api/game/versions")
    extra=$(echo "$vers" | jq -c '[([.[] | select(.name == "NeoForge")][0].id), ([.[] | select(.name == "Client")][0].id), ([.[] | select(.name == "Server")][0].id)] | map(select(. != null))')
    GV_MOD=$(jq -c --argjson n "$extra" '.curseforge.game_version_ids + $n' $CFG)
    echo "CurseForge mod game versions: $GV_MOD"
    cf_upload "$CF_MOD" "$JAR" "$CL_MOD" "$NAME_MOD" "$GV_MOD"
  else
    echo "CurseForge mod: no jar or no mod_id, skipped"
  fi
  echo "CurseForge: done"
else
  echo "::warning::CURSEFORGE_TOKEN not set, CurseForge skipped"
fi

# ---------- Modrinth ----------
if [ "$TARGETS" = "curseforge" ]; then
  echo "Modrinth: not selected"; exit 0
fi
if [ -z "${MR_TOKEN:-}" ]; then
  echo "::warning::MODRINTH_TOKEN not set, Modrinth skipped"; exit 0
fi
MR=https://api.modrinth.com/v2
MR_DP=$(jq -r .modrinth.datapack_id $CFG)
MR_RP=$(jq -r .modrinth.resourcepack_id $CFG)
MR_MOD=$(jq -r '.modrinth.mod_id // empty' $CFG)
if [ -z "$MR_MOD" ]; then
  # mod project (may still be a draft): the "Stellar Surfer" project that is neither the datapack nor the resource pack
  # needs a token with USER_READ + PROJECT_READ; without it the jar is skipped on Modrinth (upload it by hand)
  uid=$(curl -sS --fail -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/user" 2>/dev/null | jq -r '.id // empty' || true)
  if [ -n "$uid" ]; then
    MR_MOD=$(curl -sS --fail -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/user/$uid/projects" 2>/dev/null \
      | jq -r --arg a "$MR_DP" --arg b "$MR_RP" '[.[] | select(.id != $a and .id != $b and (.title | startswith("Stellar Surfer")))][0].id // empty' || true)
  fi
  echo "Modrinth mod project detected: ${MR_MOD:-none (set modrinth.mod_id in .github/publish.json)}"
elif ! [[ "$MR_MOD" =~ ^[A-Za-z0-9]{8}$ ]]; then
  # a slug (e.g. "stellarsurfer"): resolve it to the project id (works on drafts with the owner's token)
  slug="$MR_MOD"
  MR_MOD=$(curl -sS --fail -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/project/$slug" 2>/dev/null | jq -r '.id // empty' || true)
  echo "Modrinth mod project '$slug' -> ${MR_MOD:-not found}"
fi
if [ -z "$MR_DP" ] || [ -z "$MR_RP" ]; then
  uid=$(curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/user" | jq -r .id)
  projects=$(curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/user/$uid/projects")
  [ -n "$MR_DP" ] || MR_DP=$(echo "$projects" | jq -r '[.[] | select(.loaders | index("datapack"))][0].id // empty')
  [ -n "$MR_RP" ] || MR_RP=$(echo "$projects" | jq -r '[.[] | select(.project_type == "resourcepack")][0].id // empty')
fi
mr_upload() { # project_id file changelog name loaders_json deps_json
  local data
  data=$(jq -n --rawfile cl "$3" --arg n "$4" --arg v "$VER" --arg p "$1" --arg gv "$(jq -r .game_version $CFG)" \
    --argjson l "$5" --argjson d "$6" --arg vt "$CHANNEL" \
    '{name: $n, version_number: $v, changelog: $cl, dependencies: $d, game_versions: [$gv], version_type: $vt,
      loaders: $l, featured: true, project_id: $p, file_parts: ["file"], primary_file: "file"}')
  curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" \
    --form-string "data=$data" -F "file=@$2;type=$( [[ $2 == *.jar ]] && echo application/java-archive || echo application/zip )" "$MR/version" | jq -r '"Modrinth version " + .id'
}
DEPS='[]'
[ -n "$MR_RP" ] && DEPS=$(jq -n --arg p "$MR_RP" '[{project_id: $p, dependency_type: "required"}]')
if [ "$TARGETS" != "modrinth-mod" ]; then   # modrinth-mod = only the jar on Modrinth
  [ -n "$MR_DP" ] && mr_upload "$MR_DP" "$DP" "$CL/datapack.md" "$NAME_DP" '["datapack"]' "$DEPS"
  [ -n "$MR_RP" ] && mr_upload "$MR_RP" "$RP" "$CL/resourcepack.md" "$NAME_RP" '["minecraft"]' '[]'
fi
if [ -n "$MR_MOD" ] && [ -f "$JAR" ]; then
  mr_upload "$MR_MOD" "$JAR" "$CL_MOD" "$NAME_MOD" '["neoforge"]' '[]'
else
  echo "Modrinth mod: no jar or no project, skipped"
fi
echo "Modrinth: done"
