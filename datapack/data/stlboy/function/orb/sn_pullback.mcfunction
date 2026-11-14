# Ramene la cible la ou elle etait avant de se teleporter (en tant que la cible)
execute store result storage stlboy:tmp x double 0.01 run scoreboard players get @s stlboy.ox
execute store result storage stlboy:tmp y double 0.01 run scoreboard players get @s stlboy.oy
execute store result storage stlboy:tmp z double 0.01 run scoreboard players get @s stlboy.oz
function stlboy:orb/sn_tp with storage stlboy:tmp
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.4 30
execute at @s run playsound stlboy:cosmic.deny hostile @a ~ ~ ~ 1 1.4
