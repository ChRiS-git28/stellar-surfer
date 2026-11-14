# Coup cosmique unique (macro cd ; en tant que la cible) : les porteurs de l'anneau sont epargnes
# Saturation : les degats cosmiques ignorent l'invulnerabilite, donc un 2e coup cosmique dans les 4 ticks
# (laser + eclats + orbes, ou plusieurs Surfers sur la meme cible) ne fait que 35 % de ses degats.
# (#cfree = 1 avant l'appel : coup "recompense" comme la Constellation, jamais reduit)
scoreboard players operation #cf stlboy.tmp = #cfree stlboy.tmp
scoreboard players set #cfree stlboy.tmp 0
execute if entity @s[predicate=stlboy:ally] run return 0
$data modify storage stlboy:tmp ch.cd set value $(cd)
execute store result score #cnow stlboy.tmp run time query gametime
scoreboard players operation #cdt stlboy.tmp = #cnow stlboy.tmp
scoreboard players operation #cdt stlboy.tmp -= @s stlboy.clast
execute unless score #cf stlboy.tmp matches 1 if score #cdt stlboy.tmp matches 0..3 store result storage stlboy:tmp ch.cd double 0.0035 run data get storage stlboy:tmp ch.cd 100
execute unless score #cf stlboy.tmp matches 1 if score #cdt stlboy.tmp matches 0..3 run particle minecraft:smoke ~ ~1 ~ 0.2 0.3 0.2 0.01 2
scoreboard players operation @s stlboy.clast = #cnow stlboy.tmp
function stlboy:cosmic/hit_do with storage stlboy:tmp ch
