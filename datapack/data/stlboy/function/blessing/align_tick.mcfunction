# Rituel d'alignement : 2 s a regarder l'anneau tenu (en tant que le Surfer)
scoreboard players add @s stlboy.rr 10
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ^-0.3 ^1.2 ^0.6 0.05 0.05 0.05 0.01 2
execute if score @s stlboy.rr matches 40.. run function stlboy:blessing/align
