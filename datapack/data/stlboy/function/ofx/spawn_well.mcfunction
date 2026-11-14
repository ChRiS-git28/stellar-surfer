# Habille une orbe Singularite (en tant que l'orbe)
# Taille = champ d'attraction reel (5 / 6,5 / 8 blocs ; 7,5 / 9 / 10,5 avec l'Elargissement)
execute if score @s stlboy.lvl matches 0..6 run data modify storage stlboy:tmp ofx.a set value {s:"1.1"}
execute if score @s stlboy.lvl matches 0..6 run data modify storage stlboy:tmp ofx.b set value {s:"5.26"}
execute if score @s stlboy.lvl matches 0..6 run data modify storage stlboy:tmp ofx.c set value {s:"6.48"}
execute if score @s stlboy.lvl matches 0..6 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.a set value {s:"1.35"}
execute if score @s stlboy.lvl matches 0..6 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.b set value {s:"7.89"}
execute if score @s stlboy.lvl matches 0..6 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.c set value {s:"9.72"}
execute if score @s stlboy.lvl matches 7..13 run data modify storage stlboy:tmp ofx.a set value {s:"1.25"}
execute if score @s stlboy.lvl matches 7..13 run data modify storage stlboy:tmp ofx.b set value {s:"6.84"}
execute if score @s stlboy.lvl matches 7..13 run data modify storage stlboy:tmp ofx.c set value {s:"8.42"}
execute if score @s stlboy.lvl matches 7..13 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.a set value {s:"1.5"}
execute if score @s stlboy.lvl matches 7..13 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.b set value {s:"9.47"}
execute if score @s stlboy.lvl matches 7..13 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.c set value {s:"11.66"}
execute if score @s stlboy.lvl matches 14..20 run data modify storage stlboy:tmp ofx.a set value {s:"1.4"}
execute if score @s stlboy.lvl matches 14..20 run data modify storage stlboy:tmp ofx.b set value {s:"8.42"}
execute if score @s stlboy.lvl matches 14..20 run data modify storage stlboy:tmp ofx.c set value {s:"10.36"}
execute if score @s stlboy.lvl matches 14..20 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.a set value {s:"1.65"}
execute if score @s stlboy.lvl matches 14..20 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.b set value {s:"11.05"}
execute if score @s stlboy.lvl matches 14..20 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_owide,limit=1] run data modify storage stlboy:tmp ofx.c set value {s:"13.6"}
tag @s add stlboy_ofx_has
tag @s add stlboy_ofx_host
scoreboard players add #oidc stlboy.const 1
scoreboard players operation @s stlboy.oid = #oidc stlboy.const
scoreboard players operation #oid stlboy.tmp = @s stlboy.oid
summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_ofx","stlboy_ofx_ride","stlboy_ofx_new","stlboy_ofx_tumble"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7130,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},item_display:"none",brightness:{sky:15,block:15},view_range:4f,shadow_radius:0f,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=stlboy_ofx] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_new,limit=1] run function stlboy:ofx/grow with storage stlboy:tmp ofx.a
summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_ofx","stlboy_ofx_ride","stlboy_ofx_new","stlboy_ofx_spin2"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7131,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},item_display:"none",brightness:{sky:15,block:15},view_range:4f,shadow_radius:0f,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.2164f,0f,0f,0.9763f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=stlboy_ofx] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_new,limit=1] run function stlboy:ofx/grow with storage stlboy:tmp ofx.b
summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_ofx","stlboy_ofx_ride","stlboy_ofx_new","stlboy_ofx_pulse"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7132,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},billboard:"center",item_display:"none",brightness:{sky:15,block:15},view_range:4f,shadow_radius:0f,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[tag=stlboy_ofx] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_new,limit=1] run function stlboy:ofx/grow with storage stlboy:tmp ofx.c
tag @s remove stlboy_ofx_host
function stlboy:ofx/tint_a
