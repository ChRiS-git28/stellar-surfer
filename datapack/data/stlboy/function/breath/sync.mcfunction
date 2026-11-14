# Jauge d'etoiles + vie de la constellation (en tant que le joueur)
execute store result storage stlboy:hud st int 1 run scoreboard players get @s stlboy.stars
function stlboy:breath/sync_m with storage stlboy:hud
execute if entity @e[tag=stlboy_bt,predicate=stlboy:cowned] if entity @e[tag=stlboy_cst,tag=!stlboy_cdone,predicate=stlboy:owned] run function stlboy:breath/orbit
execute if entity @e[tag=stlboy_grow1] as @e[tag=stlboy_bt,predicate=stlboy:cowned] at @s run function stlboy:breath/grow_t
tag @e[tag=stlboy_grow1] remove stlboy_grow1
tag @e[tag=stlboy_grow0] add stlboy_grow1
tag @e[tag=stlboy_grow0] remove stlboy_grow0
execute as @e[tag=stlboy_cst,tag=!stlboy_cdone,predicate=stlboy:owned] run function stlboy:breath/owner_check
scoreboard players remove @e[tag=stlboy_cdone] stlboy.life 1
execute as @e[type=minecraft:item_display,tag=stlboy_cstar,tag=stlboy_cdone,scores={stlboy.life=15}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.95f,0.95f,0.95f]}}
execute as @e[type=minecraft:item_display,tag=stlboy_cdone,scores={stlboy.life=9}] run data merge entity @s {start_interpolation:0,interpolation_duration:9,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
kill @e[tag=stlboy_cdone,scores={stlboy.life=..0}]
function stlboy:vis/tick
# lueur des etoiles vivantes (une image sur deux)
execute store result score #gt stlboy.tmp run time query gametime
scoreboard players operation #gt stlboy.tmp %= #c2 stlboy.const
execute if score #gt stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_cstar,tag=!stlboy_cdone,predicate=stlboy:owned] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.55f,size_variation:0.1f,end_size:0.25f,color:"#FFF2C2EE",end_color:"#B07CFF00",friction:1.0f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~ ~ 0 0 0 0 1 force
