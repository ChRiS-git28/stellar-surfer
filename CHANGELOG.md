# Changelog

All notable changes to **Stellar Surfer** (datapack) and **Stellar Surfer — Cosmic Visuals** (resource pack).
Both packs share the same version number and must be used together.

Format: one section per version, newest first. `DP` = datapack, `RP` = resource pack.

---

## [1.0.4] — 2026-11-18 · *Little Star*

### Body & survival
- **DP** The Surfer is now **25% smaller** (hitbox, eyes and collisions follow).
- **DP** **Starlight Veil**: projectile damage -40% before Rank 3, -25% until Rank 7, then -15%.
- **DP** **Dodging burns nearby projectiles** (tridents and enchanted weapons just drop).
- **DP** Low Grace no longer gives **Darkness**: a soft **starglow** follows you underground and in the Nether.
- **DP** No friendly fire: villagers, wandering traders, golems, allays, animals and tamed pets are never hurt or caught by your powers (also MineColonies, MCA Reborn and Guard Villagers when installed).

### Movement
- **DP** Climb and dive much faster while surfing (look up/down, or Jump/Sneak).

### Stellar Magnetism
- **DP** Items now **spiral around you ~3 times** before reaching you, leaving a trail of sparkles.

### Interface
- **RP** Astrolabe: the 10 Rank stars are now big, clear crosses when lit, small dim points when not.

### Visuals
- **RP** Test: cosmic effects now use **cutout** rendering, so water and glass stay visible behind them. Edges are sharper; orb shells and the beam haze stay soft.

### Debug & distribution
- **DP** `/function stlboy:debug/rank_up`: +1 Rank instantly, no offering needed.
- New **NeoForge mod jar** (datapack + resource pack in one file).

---

## [1.0.3] — 2026-11-18 · *Old Ruins*

### Constellations
- **RP** Fixed: the constellation animation broke in 1.0.2 (links grew backward). Links stretch from one star to the next again.

### Cosmic forces
- **DP** Wormhole, Rank 10: the exit mouth is gone. Stepping into the heart of your Wormhole takes you **home with your allies** (Ring Blessing, within 10 blocks), **once per Minecraft day**. The remaining time is shown if you try too early.
- **DP** New skill **Event Horizon** (Rank 7, after Nova Stun): your Wormhole swallows nearby projectiles. Projectiles of Stellar Surfers pass through; tridents and enchanted thrown weapons simply **drop to the ground** instead of being destroyed.
- **DP** Magnetised items now leave small sparkles as they fly to you.

### Stellar Breath
- **DP** New skill **Light Curtain** (Rank 4, after the Breath's range skill): the beam destroys the projectiles it crosses (same exceptions as Event Horizon).
- **DP/RP** The HUD now shows the Breath's cooldown.

### Trials
- **DP** Trial shrines are now **overgrown ruins**: collapsed deepslate arch, moss, cyan flowers and a column of light ringed with oxidised copper.

### Interface
- **DP/RP** Gravity Sense and Stellar Magnetism moved into **Graviton**; new custom icons for every Graviton badge.
- **DP/RP** The origin screen shows an **annotated diagram of the Celestial Sigil**.
- **DP** Lighter HUD: class colours are computed once instead of every tick, fewer per-tick checks.

### Debug
- **DP** `/function stlboy:debug/trials`: clickable menu to start any trial, build its shrine, validate it, abort it or forget every trial.

---

## [1.0.2] — 2026-11-15 · *Clear Sky*

### Constellations
- **DP/RP** Constellations now form a clear **frame around the target, facing you**, readable even from far away.
- **RP** Links now stretch smoothly from one star to the next (they used to grow from the middle).
- **DP/RP** Stars, links and their twinkle take the **colours of your class**.

### Stellar Breath
- **DP** A double helix of light now spirals along the beam: the beam has volume from every angle.
- **DP** Fixed: the Breath now hurts the **Ender Dragon**.

### Cosmic forces
- **DP** Casting a Wormhole no longer throws you through its mouth: you must step out of a mouth before you can use it.
- **DP** Rank 10 Wormhole travel loads the arrival area just long enough to arrive (5 s), in any dimension.
- **DP** The Ender Dragon can no longer push your orbs around.
- **DP** Orbs keep their nature in every class colour: the Black Hole's heart stays dark, the White Hole's heart stays white.
- **DP** Air Anchor, Black Hole, White Hole and Wormhole are now presented together in **Graviton**.

### Movement
- **DP** Upward dodge is half as strong.
- **DP** No more star particles in your face when dodging backward.

### Progression & balance
- **DP** Astral Body: safe fall bonus replaced by **-20% collision damage** at Ranks 2 and 6.
- **DP** Eyes of Ender are no longer cosmic food (you need them to find the End).
- **DP** End gateways now carry a Surfer through, even though you cannot throw pearls.
- **DP** Magnetised items now fly in a wider curve.

### Interface
- **DP/RP** One clear message when you are too hungry for your powers — Star Shards still work.
- **RP** The origin screen now explains the custom HUD.
- **RP** Skill descriptions show their numbers again in the skill tree (badges keep them too).
- **RP** Drifting is no longer mentioned in Celestial Surf.

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
