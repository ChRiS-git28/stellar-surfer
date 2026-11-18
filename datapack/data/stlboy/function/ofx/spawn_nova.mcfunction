# Habille une orbe Nova (en tant que l'orbe)
# Taille = champ de repulsion reel (4 / 5,2 / 6,4 blocs) ; l'onde de choc s'eteint a la portee du coup (4,5 / 5,85 / 7,2)
execute if score @s stlboy.lvl matches 0..6 run data modify storage stlboy:tmp ofx.a set value {s:"1"}
execute if score @s stlboy.lvl matches 0..6 run data modify storage stlboy:tmp ofx.b set value {s:"8"}
execute if score @s stlboy.lvl matches 0..6 run data modify storage stlboy:tmp ofx.c set value {s:"9.38"}
execute if score @s stlboy.lvl matches 7..13 run data modify storage stlboy:tmp ofx.a set value {s:"1.12"}
execute if score @s stlboy.lvl matches 7..13 run data modify storage stlboy:tmp ofx.b set value {s:"10.4"}
execute if score @s stlboy.lvl matches 7..13 run data modify storage stlboy:tmp ofx.c set value {s:"12.19"}
execute if score @s stlboy.lvl matches 14..20 run data modify storage stlboy:tmp ofx.a set value {s:"1.24"}
execute if score @s stlboy.lvl matches 14..20 run data modify storage stlboy:tmp ofx.b set value {s:"12.8"}
execute if score @s stlboy.lvl matches 14..20 run data modify storage stlboy:tmp ofx.c set value {s:"15"}
tag @s add stlboy_ofx_has
tag @s add stlboy_ofx_host
scoreboard players add #oidc stlboy.const 1
scoreboard players operation @s stlboy.oid = #oidc stlboy.const
scoreboard players operation #oid stlboy.tmp = @s stlboy.oid
summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_ofx","stlboy_ofx_ride","stlboy_ofx_new","stlboy_ofx_tumble"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7133,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},item_display:"none",brightness:{sky:15,block:15},view_range:4f,shadow_radius:0f,teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=stlboy_ofx] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_new,limit=1] run function stlboy:ofx/grow with storage stlboy:tmp ofx.a
summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_ofx","stlboy_ofx_ride","stlboy_ofx_new","stlboy_ofx_roll"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7134,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},billboard:"center",item_display:"none",brightness:{sky:15,block:15},view_range:4f,shadow_radius:0f,teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=stlboy_ofx] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_new,limit=1] run function stlboy:ofx/grow with storage stlboy:tmp ofx.b
summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_ofx","stlboy_ofx_ride","stlboy_ofx_new","stlboy_ofx_pulse"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7135,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},billboard:"center",item_display:"none",brightness:{sky:15,block:15},view_range:4f,shadow_radius:0f,teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=stlboy_ofx] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_new,limit=1] run function stlboy:ofx/grow with storage stlboy:tmp ofx.c
tag @s remove stlboy_ofx_host
function stlboy:ofx/tint_b
