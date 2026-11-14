# Rayon : corps "monde" monte sur le joueur (vu par les autres) + rayon et eclat de 1re personne (vus par le tireur) + cube d'impact
# Tout est pose sur le corps du rayon, lui-meme monte sur le joueur par le pouvoir stellar_breath (apoli:mount) : le tout suit le regard.
function stlboy:breath/rot_init
kill @e[tag=stlboy_beam,predicate=stlboy:owned]
scoreboard players set @s stlboy.bage 0
execute anchored eyes positioned ^ ^ ^2 run summon minecraft:marker ~ ~ ~ {Tags:["stlboy_beam","stlboy_bend"]}
execute as @e[tag=stlboy_beam] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
# corps "monde" (cache pour soi en 1re personne)
execute anchored eyes positioned ^ ^ ^ rotated as @s run summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_beam","stlboy_bpass","stlboy_bray","stlboy_bfree","stlboy_bray_new"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7120,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},item_display:"none",brightness:{sky:15,block:15},teleport_duration:1,view_range:6f,shadow_radius:0f,transformation:[0f,0f,0f,0f,0f,0f,0f,-0.4f,0f,0f,0f,1f,0f,0f,0f,1f]}
# cube d'impact "monde" : pose sur le corps, decale jusqu'au point vise (cache pour soi en 1re personne)
execute anchored eyes positioned ^ ^ ^ rotated as @s run summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_beam","stlboy_bimp","stlboy_bimp_new"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7121,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},item_display:"none",brightness:{sky:15,block:15},teleport_duration:1,view_range:6f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
# rayon et eclat de 1re personne : alignes sur la camera (billboard), visibles seulement a moins de ~2 blocs (donc par le tireur en 1re personne)
execute anchored eyes positioned ^ ^ ^ run summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_beam","stlboy_bfp","stlboy_bfx"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7122,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},item_display:"none",billboard:"center",brightness:{sky:15,block:15},teleport_duration:0,view_range:0.03f,shadow_radius:0f,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,-0.525f,-0.6f],scale:[0f,0f,0f]}}
execute anchored eyes positioned ^ ^ ^ run summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_beam","stlboy_bfpi","stlboy_bfx"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7123,"minecraft:dyed_color":{rgb:16777215,show_in_tooltip:false}}},item_display:"none",billboard:"center",brightness:{sky:15,block:15},teleport_duration:0,view_range:0.03f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.65f,-0.6f],scale:[0f,0f,0f]}}
# appartenance (multi-Surfer) : posee tout de suite
execute as @e[tag=stlboy_beam] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[type=minecraft:item_display,tag=stlboy_bfx,predicate=stlboy:owned] run ride @s mount @e[type=minecraft:item_display,tag=stlboy_bray_new,predicate=stlboy:owned,limit=1]
execute as @e[type=minecraft:item_display,tag=stlboy_bimp_new,predicate=stlboy:owned] run ride @s mount @e[type=minecraft:item_display,tag=stlboy_bray_new,predicate=stlboy:owned,limit=1]
tag @e[type=minecraft:item_display,tag=stlboy_bimp_new] remove stlboy_bimp_new
data modify storage stlboy:beam rot set from entity @s Rotation
execute as @e[type=minecraft:item_display,tag=stlboy_bpass,predicate=stlboy:owned] run data modify entity @s Rotation set from storage stlboy:beam rot
# invocation : eclat au creux de la main
execute anchored eyes positioned ^0.25 ^-0.4 ^0.6 run particle minecraft:end_rod ~ ~ ~ 0.04 0.04 0.04 0.09 16
execute anchored eyes positioned ^0.25 ^-0.4 ^0.6 run particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.4 24

# couleur du Surfer (palette de sa classe)
scoreboard players set #pal stlboy.tmp 1
execute if score @s stlboy.pal matches 1..5 run scoreboard players operation #pal stlboy.tmp = @s stlboy.pal
execute if score #pal stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_beam,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #pal stlboy.tmp matches 3 as @e[type=minecraft:item_display,tag=stlboy_beam,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #pal stlboy.tmp matches 4 as @e[type=minecraft:item_display,tag=stlboy_beam,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #pal stlboy.tmp matches 5 as @e[type=minecraft:item_display,tag=stlboy_beam,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16734780
