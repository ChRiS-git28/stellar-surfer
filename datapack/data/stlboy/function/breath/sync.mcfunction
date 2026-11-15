# Jauge d'etoiles + vie de la constellation (en tant que le joueur)
execute store result storage stlboy:hud st int 1 run scoreboard players get @s stlboy.stars
function stlboy:breath/sync_m with storage stlboy:hud
execute if entity @e[tag=stlboy_bt,predicate=stlboy:cowned] if entity @e[tag=stlboy_cst,tag=!stlboy_cdone,predicate=stlboy:owned] run function stlboy:breath/orbit
execute if entity @e[tag=stlboy_grow1] as @e[tag=stlboy_bt,predicate=stlboy:cowned] at @s run function stlboy:breath/grow_t
tag @e[tag=stlboy_grow1] remove stlboy_grow1
tag @e[tag=stlboy_grow0] add stlboy_grow1
tag @e[tag=stlboy_grow0] remove stlboy_grow0
execute as @e[tag=stlboy_cst,tag=!stlboy_cdone,predicate=stlboy:owned] run function stlboy:breath/owner_check
# pause de 0,25 s entre deux constellations (la 4e etoile reste allumee au HUD), puis la jauge repart de zero
execute as @e[tag=stlboy_bt,scores={stlboy.cwait=1..},predicate=stlboy:cowned] run function stlboy:breath/cwait
execute if score @s stlboy.stars matches 4.. unless entity @e[tag=stlboy_bt,scores={stlboy.cwait=1..},predicate=stlboy:cowned] run scoreboard players set @s stlboy.stars 0
# la figure achevee s'eteint en 0,25 s
scoreboard players remove @e[tag=stlboy_cdone] stlboy.life 1
execute as @e[type=minecraft:item_display,tag=stlboy_cdone,scores={stlboy.life=4}] run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
kill @e[tag=stlboy_cdone,scores={stlboy.life=..0}]
function stlboy:vis/tick
# lueur des etoiles vivantes (une image sur deux)
execute store result score #gt stlboy.tmp run time query gametime
scoreboard players operation #gt stlboy.tmp %= #c2 stlboy.const
execute if score #gt stlboy.tmp matches 0 unless score @s stlboy.pal matches 2..5 as @e[type=minecraft:item_display,tag=stlboy_cstar,tag=!stlboy_cdone,predicate=stlboy:owned] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.55f,size_variation:0.1f,end_size:0.25f,color:"#9FE8FFEE",end_color:"#B07CFF00",friction:1.0f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~ ~ 0 0 0 0 1 force
execute if score #gt stlboy.tmp matches 0 if score @s stlboy.pal matches 2 as @e[type=minecraft:item_display,tag=stlboy_cstar,tag=!stlboy_cdone,predicate=stlboy:owned] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.55f,size_variation:0.1f,end_size:0.25f,color:"#FFC24AEE",end_color:"#FF6A2A00",friction:1.0f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~ ~ 0 0 0 0 1 force
execute if score #gt stlboy.tmp matches 0 if score @s stlboy.pal matches 3 as @e[type=minecraft:item_display,tag=stlboy_cstar,tag=!stlboy_cdone,predicate=stlboy:owned] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.55f,size_variation:0.1f,end_size:0.25f,color:"#4FA8FFEE",end_color:"#3FE8D800",friction:1.0f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~ ~ 0 0 0 0 1 force
execute if score #gt stlboy.tmp matches 0 if score @s stlboy.pal matches 4 as @e[type=minecraft:item_display,tag=stlboy_cstar,tag=!stlboy_cdone,predicate=stlboy:owned] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.55f,size_variation:0.1f,end_size:0.25f,color:"#7DFFB0EE",end_color:"#FF6AD500",friction:1.0f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~ ~ 0 0 0 0 1 force
execute if score #gt stlboy.tmp matches 0 if score @s stlboy.pal matches 5 as @e[type=minecraft:item_display,tag=stlboy_cstar,tag=!stlboy_cdone,predicate=stlboy:owned] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.55f,size_variation:0.1f,end_size:0.25f,color:"#FF5A3CEE",end_color:"#FFB07000",friction:1.0f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~ ~ 0 0 0 0 1 force
