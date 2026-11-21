# Touche de la Voie stellaire (en tant que le Surfer) : ouvre ou ferme l'hologramme
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
execute if entity @s[tag=stlboy_tree_open] run return run function stlboy:tree/close
tag @s add stlboy_tree_open
scoreboard players set @s stlboy.trc 2400
execute store result score #ty stlboy.tmp run data get entity @s Rotation[0] 100
scoreboard players add #ty stlboy.tmp 18000
execute store result storage stlboy:tree yaw float 0.01 run scoreboard players get #ty stlboy.tmp
function stlboy:tree/build with storage stlboy:tree
execute as @e[tag=stlboy_tnew] run scoreboard players operation @s stlboy.own = #own stlboy.tmp
tag @e[tag=stlboy_tnew] add stlboy_tgrow
tag @e[tag=stlboy_tnew] remove stlboy_tnew
function stlboy:tree/refresh
function stlboy:tree/points
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.8 1.4
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.4 1.8
