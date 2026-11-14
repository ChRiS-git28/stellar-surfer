# Changelog

All notable changes to **Stellar Surfer** (datapack) and **Stellar Surfer — Cosmic Visuals** (resource pack).
Both packs share the same version number and must be used together.

Format: one section per version, newest first. `DP` = datapack, `RP` = resource pack.

---

## [1.0.1] — 2026-11-14 · *Steady Light*

### Stellar Breath
- **DP/RP** First person: the beam now follows your gaze perfectly, flowing from your side to the exact point you aim at. The impact and its shockwave follow your cursor too.
- **DP** Other players see your beam and its impact locked to your aim.
- **DP** The beam now bursts out of your hand when it starts and folds back into it when it ends.
- **DP** A heavier, more impactful sound when you fire.
- **DP** After you release it, Stellar Breath needs 2 s to gather again (a soft chime tells you when it is ready).

### Constellations
- **DP** Constellations are now twice the size of their target.
- **DP** The 4th star now lights up on the HUD. A 0.25 s pause separates each constellation from the next, so they never overlap.

### Movement
- **DP** Double-tap Jump to dodge upward.
- **DP** Climbing and diving are slightly faster.
- **DP** The surf mini-boost is now a discreet ripple, without the flash.
- **DP** You always rise back into the air when you spawn or respawn, even under a low ceiling.
- **DP** Hitting a surface now hurts in a… stranger way.

### Cosmic forces
- **DP** Wormhole: creatures inside barely see beyond themselves, players inside are blinded.
- **DP** Wormhole, Rank 10: a new secret awaits at its heart.
- **DP** Stasis is replaced by Deflection: your White Hole sends projectiles back, as yours.
- **DP** Horizon Bane now also works inside your White Hole.

### Progression & balance
- **DP** New passive Astral Body: every Rank makes you a little stronger (speed, health, safe fall, luck, reach).
- **DP** Stardust now only comes from kills made with your cosmic powers.
- **DP** Cosmic damage no longer stacks freely: several cosmic hits on the same target within 0.2 s are weakened (also between Surfers in multiplayer). Completed constellations are never weakened.
- **DP** Custom items (ring, offerings) are no longer treated as cosmic food.
- **DP** Star Shards ignore your own orbs (another Surfer's orbs are still fair game).

### Interface
- **DP** HUD: ready-made positions (top / middle / bottom) and a Minimal mode — `/trigger stlboy.hud`.
- **RP** Skill tree: excluded skills are marked in red.
- **RP** Every power keeps its poetic line as description; numbers, costs and ranks moved to its badges.
- **RP** New texts for the new skills and passives (English / Français).

### Fixes
- **DP** Travelling from one Wormhole mouth to the other now works (the function failed to load).
- **DP** A target could stop gaining stars if it left the beam right after a constellation.
- **DP** Beam pieces no longer stay behind if a Surfer disconnects while firing.
- **DP** In multiplayer, a Surfer can no longer catch another Surfer's beam.

---

## [1.0.0] — 2026-11-14 · *First Light*

First public release.

- A new origin for Origins (NeoForge 1.21.1): surf the sky, live on starlight, grow through 10 ranks.
- Stellar Breath and its constellations.
- Three cosmic forces and a few secrets for those who combine them.
- A skill tree with five star oaths — the choice is final.
- Your colours follow your oath (HUD, beam, orbs, trail).
- Multiplayer support for up to five Surfers.
- English and French translations.
