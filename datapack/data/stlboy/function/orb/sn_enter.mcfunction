# Entree dans la Supernova (en tant que la cible)
tag @s add stlboy_sn_in
attribute @s minecraft:generic.movement_speed modifier add stlboy:sn -0.5 add_multiplied_total
attribute @s minecraft:generic.flying_speed modifier add stlboy:sn -0.5 add_multiplied_total
# le trou de ver avale les reperes : les creatures ne voient presque plus rien au-dela d'elles-memes, les joueurs sont aveugles
attribute @s minecraft:generic.follow_range modifier add stlboy:sn -0.9 add_multiplied_total
effect give @s minecraft:darkness 3 0 true
effect give @s[type=minecraft:player] minecraft:blindness 3 0 true
execute store result score @s stlboy.ox run data get entity @s Pos[0] 100
execute store result score @s stlboy.oy run data get entity @s Pos[1] 100
execute store result score @s stlboy.oz run data get entity @s Pos[2] 100
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.3 0.5 0.3 0.05 12
