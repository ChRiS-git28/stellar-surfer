# Trait 2 -> 3, nait a l'echelle 0 puis se dessine (macro, en tant que la cible)
$execute at @e[type=minecraft:item_display,tag=stlboy_s2,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_cst","stlboy_l2","stlboy_new","stlboy_grow0"],item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":7004}},item_display:"none",brightness:{sky:15,block:15},teleport_duration:1,view_range:2f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
$scoreboard players set @e[type=minecraft:item_display,tag=stlboy_new] stlboy.cid $(cid)
$execute as @e[type=minecraft:item_display,tag=stlboy_new] at @s facing entity @e[type=minecraft:item_display,tag=stlboy_s3,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},limit=1] feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=stlboy_new] remove stlboy_new
