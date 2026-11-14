# Etoile 3 de la constellation, nait a l'echelle 0 (macro, en tant que la cible)
$execute at @s rotated $(ang) 0 run summon minecraft:item_display ^$(x3) ^$(y3) ^$(z3) {Tags:["stlboy_cst","stlboy_cstar","stlboy_s3","stlboy_grow0","stlboy_nc"],item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":7002}},billboard:"center",brightness:{sky:15,block:15},teleport_duration:1,view_range:2f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
$scoreboard players set @e[type=minecraft:item_display,tag=stlboy_nc] stlboy.cid $(cid)
tag @e[type=minecraft:item_display,tag=stlboy_nc] remove stlboy_nc
