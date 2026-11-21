#!/usr/bin/env bash
# Adds (or refreshes) an "Also on CurseForge" block at the end of the 3 Modrinth project descriptions.
# The block sits between <!-- cf-links --> markers, so running it again only replaces that block.
set -euo pipefail
CFG=.github/publish.json
MR=https://api.modrinth.com/v2
UA="stellar-surfer-publisher/1.0 (GitHub Actions)"
BLOCK=$(cat <<'MD'
<!-- cf-links -->
***

## ✦ Also on CurseForge

- **Datapack** — [Stellar Surfer](https://www.curseforge.com/minecraft/data-packs/stellar-surfer)
- **Resource pack** — [Stellar Surfer — Cosmic Visuals](https://www.curseforge.com/minecraft/texture-packs/stellar-surfer-cosmic-visuals)
- **Mod (NeoForge, all-in-one)** — [Stellar Surfer](https://www.curseforge.com/minecraft/mc-mods/stellar-surfer)
<!-- /cf-links -->
MD
)
for key in datapack_id resourcepack_id mod_id; do
  id=$(jq -r ".modrinth.$key // empty" $CFG)
  [ -n "$id" ] || continue
  body=$(curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/project/$id" | jq -r .body)
  # remove a previous block, then append the current one
  clean=$(printf '%s' "$body" | awk '/<!-- cf-links -->/{skip=1} !skip{print} /<!-- \/cf-links -->/{skip=0}')
  new=$(printf '%s\n\n%s\n' "$clean" "$BLOCK")
  jq -n --arg b "$new" '{body: $b}' | curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" -H "Content-Type: application/json" \
    -X PATCH --data @- "$MR/project/$id" && echo "Modrinth $key ($id): links updated"
done
