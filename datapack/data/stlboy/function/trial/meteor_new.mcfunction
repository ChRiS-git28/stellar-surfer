# Nouvelle meteorite (macro yaw ; a la position du point d'impact) : un rocher apparait 28 blocs plus loin dans le ciel et vise ce point
scoreboard players add #mid stlboy.const 1
summon minecraft:marker ~ ~ ~ {Tags:["stlboy_tr","stlboy_tr_met","stlboy_tr_new"]}
$execute rotated $(yaw) 0 positioned ^ ^26 ^-10.4 run function stlboy:trial/meteor_rock
scoreboard players operation @e[tag=stlboy_tr_new] stlboy.mid = #mid stlboy.const
scoreboard players set @e[type=minecraft:marker,tag=stlboy_tr_new] stlboy.trt 20
execute as @e[type=minecraft:block_display,tag=stlboy_tr_new] at @s facing entity @e[type=minecraft:marker,tag=stlboy_tr_new,limit=1] feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=stlboy_tr_new] remove stlboy_tr_new
