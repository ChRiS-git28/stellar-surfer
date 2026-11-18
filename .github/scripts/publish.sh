#!/usr/bin/env bash
# Uploads the release zips of $TAG to CurseForge and Modrinth. Skips a site whose token is missing.
set -euo pipefail
VER="${TAG#v}"
CFG=.github/publish.json
CL="changelogs/$VER"
DP="dist/StellarSurfer-Datapack-$VER.zip"
RP="dist/StellarSurfer-ResourcePack-$VER.zip"
UA="stellar-surfer-publisher/1.0 (GitHub Actions)"
for f in "$DP" "$RP" "$CL/datapack.md" "$CL/resourcepack.md"; do
  [ -f "$f" ] || { echo "::error::missing $f"; exit 1; }
done
NAME_DP="$(jq -r .names.datapack $CFG) $VER"
NAME_RP="$(jq -r .names.resourcepack $CFG) $VER"

# ---------- CurseForge ----------
cf_upload() { # project_id file changelog display_name
  local meta
  meta=$(jq -n --rawfile cl "$3" --arg dn "$4" --argjson gv "$(jq -c .curseforge.game_version_ids $CFG)" \
    '{changelog: $cl, changelogType: "markdown", displayName: $dn, gameVersions: $gv, releaseType: "release"}')
  curl -sS --fail-with-body -A "$UA" -H "X-Api-Token: $CF_TOKEN" \
    --form-string "metadata=$meta" -F "file=@$2" \
    "https://minecraft.curseforge.com/api/projects/$1/upload-file"
  echo
}
if [ -n "${CF_TOKEN:-}" ]; then
  cf_upload "$(jq -r .curseforge.datapack_id $CFG)" "$DP" "$CL/datapack.md" "$NAME_DP"
  cf_upload "$(jq -r .curseforge.resourcepack_id $CFG)" "$RP" "$CL/resourcepack.md" "$NAME_RP"
  echo "CurseForge: done"
else
  echo "::warning::CURSEFORGE_TOKEN not set, CurseForge skipped"
fi

# ---------- Modrinth ----------
if [ -z "${MR_TOKEN:-}" ]; then
  echo "::warning::MODRINTH_TOKEN not set, Modrinth skipped"; exit 0
fi
MR=https://api.modrinth.com/v2
MR_DP=$(jq -r .modrinth.datapack_id $CFG)
MR_RP=$(jq -r .modrinth.resourcepack_id $CFG)
if [ -z "$MR_DP" ] || [ -z "$MR_RP" ]; then
  uid=$(curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/user" | jq -r .id)
  projects=$(curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/user/$uid/projects")
  [ -n "$MR_DP" ] || MR_DP=$(echo "$projects" | jq -r '[.[] | select(.loaders | index("datapack"))][0].id // empty')
  [ -n "$MR_RP" ] || MR_RP=$(echo "$projects" | jq -r '[.[] | select(.project_type == "resourcepack")][0].id // empty')
fi
mr_upload() { # project_id file changelog name loaders_json deps_json
  local data
  data=$(jq -n --rawfile cl "$3" --arg n "$4" --arg v "$VER" --arg p "$1" --arg gv "$(jq -r .game_version $CFG)" \
    --argjson l "$5" --argjson d "$6" \
    '{name: $n, version_number: $v, changelog: $cl, dependencies: $d, game_versions: [$gv], version_type: "release",
      loaders: $l, featured: true, project_id: $p, file_parts: ["file"], primary_file: "file"}')
  curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" \
    --form-string "data=$data" -F "file=@$2;type=application/zip" "$MR/version" | jq -r '"Modrinth version " + .id'
}
DEPS='[]'
[ -n "$MR_RP" ] && DEPS=$(jq -n --arg p "$MR_RP" '[{project_id: $p, dependency_type: "required"}]')
[ -n "$MR_DP" ] && mr_upload "$MR_DP" "$DP" "$CL/datapack.md" "$NAME_DP" '["datapack"]' "$DEPS"
[ -n "$MR_RP" ] && mr_upload "$MR_RP" "$RP" "$CL/resourcepack.md" "$NAME_RP" '["minecraft"]' '[]'
echo "Modrinth: done"
