# Traversee instantanee d'une bouche a l'autre (macro from/to, en tant que le Surfer) : la vitesse et le regard sont gardes
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.6 40
$execute at @e[type=minecraft:marker,tag=$(to),predicate=stlboy:owned,limit=1] run tp @s ~ ~ ~
execute at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
execute at @s run particle minecraft:portal ~ ~1 ~ 0.4 0.7 0.4 1 50
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.8 0.6
playsound minecraft:block.portal.trigger player @s ~ ~ ~ 0.25 1.8
scoreboard players set @s stlboy.wj 20
tag @s add stlboy_whlock
