# Trait 1 -> 2, nait a l'echelle 0 puis se dessine (macro, en tant que la cible)
$execute at @e[type=minecraft:item_display,tag=stlboy_s1,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},limit=1,predicate=stlboy:owned] run summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_cst","stlboy_l1","stlboy_new","stlboy_grow0"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7141,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},item_display:"none",brightness:{sky:15,block:15},teleport_duration:1,view_range:2f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=stlboy_cst] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
$scoreboard players set @e[type=minecraft:item_display,tag=stlboy_new] stlboy.cid $(cid)
$execute as @e[type=minecraft:item_display,tag=stlboy_new] at @s facing entity @e[type=minecraft:item_display,tag=stlboy_s2,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},limit=1,predicate=stlboy:owned] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:item_display,tag=stlboy_new] run function stlboy:breath/vis/tint
tag @e[tag=stlboy_new] remove stlboy_new
