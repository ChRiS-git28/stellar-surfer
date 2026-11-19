# En tant que la boule de feu
execute if data entity @s Owner run return run function stlboy:trial/mirror_reflect
execute if entity @e[tag=stlboy_orb_nova,distance=..3.6] run return run function stlboy:trial/mirror_reflect
tp @s ^ ^ ^0.4
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:18,lifetime_variation:4,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#FF8C33FF",end_color:"#B266FF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.15 0.15 0.15 0 3 force
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.05 0.05 0.05 0.01 1 force
scoreboard players add @s stlboy.trt 1
execute if score @s stlboy.trt matches 150.. run return run kill @s
execute if entity @a[tag=stlboy_surfer,scores={stlboy.tr=7},distance=..2.3] run function stlboy:trial/mirror_hit
