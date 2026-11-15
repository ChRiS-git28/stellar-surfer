# Rang 10 : le coeur du Trou de ver te rend a ton point de reapparition (en tant que le Surfer)
# coordonnees du point de reapparition (+0,5 pour le centre du bloc), dimension
execute store result score #hx stlboy.tmp run data get entity @s SpawnX
execute store result score #hy stlboy.tmp run data get entity @s SpawnY
execute store result score #hz stlboy.tmp run data get entity @s SpawnZ
# bloc du point de reapparition (pour charger son chunk le temps du voyage)
execute store result storage stlboy:tmp wh.bx int 1 run scoreboard players get #hx stlboy.tmp
execute store result storage stlboy:tmp wh.bz int 1 run scoreboard players get #hz stlboy.tmp
scoreboard players operation #hx stlboy.tmp *= #c2 stlboy.const
scoreboard players add #hx stlboy.tmp 1
scoreboard players operation #hz stlboy.tmp *= #c2 stlboy.const
scoreboard players add #hz stlboy.tmp 1
execute store result storage stlboy:tmp wh.x double 0.5 run scoreboard players get #hx stlboy.tmp
execute store result storage stlboy:tmp wh.y int 1 run scoreboard players get #hy stlboy.tmp
execute store result storage stlboy:tmp wh.z double 0.5 run scoreboard players get #hz stlboy.tmp
data modify storage stlboy:tmp wh.d set value "minecraft:overworld"
data modify storage stlboy:tmp wh.d set from entity @s SpawnDimension
# depart : le coeur t'avale
function stlboy:orb/wh_home_out
function stlboy:orb/wh_home_m with storage stlboy:tmp wh
# arrivee : tu jaillis d'un tourbillon d'etoiles
execute at @s run function stlboy:orb/wh_home_in
scoreboard players set @s stlboy.wj 60
resource set @s stlboy:float_lift 40
title @s actionbar {"translate":"stlboy.wormhole.home","fallback":"✦ The wormhole carries you home","color":"light_purple"}
