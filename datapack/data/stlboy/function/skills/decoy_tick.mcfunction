# Leurre du Pas fantome (en tant que le leurre, chaque tick) : se dissipe apres 3 s
scoreboard players remove @s stlboy.life 1
execute if score @s stlboy.life matches ..0 at @s run particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.2 0.5 0.2 0.05 12
execute if score @s stlboy.life matches ..0 run kill @s
