# L'Ancre d'etoile se fixe : point de reapparition ici (en tant que le Surfer)
spawnpoint @s ~ ~ ~
# l'Eclat d'amethyste est consume (garde la memoire du lieu)
clear @s minecraft:amethyst_shard 1
playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1 1.2
function stlboy:anchor/home_place
execute at @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned] run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 20 force
kill @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned]
resource set @s stlboy:star_anchor_charge 0
resource set @s stlboy:star_anchor_cd 200
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.3
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.7 1.6
particle minecraft:end_rod ~ ~1 ~ 0.15 6 0.15 0.04 70
particle minecraft:firework ~ ~0.2 ~ 1.4 0.1 1.4 0.05 40
title @s actionbar {"text":"✦ ","color":"gold","extra":[{"translate":"stlboy.anchor.bound","fallback":"Your star is anchored here. You will return beneath this sky.","color":"gold"}]}
