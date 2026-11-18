# Invocation du rayon (en tant que le joueur) : longueur x age/4 pendant les 3 premiers ticks
scoreboard players operation #r stlboy.tmp *= @s stlboy.bage
scoreboard players operation #r stlboy.tmp /= #4 stlboy.const
execute anchored eyes positioned ^0.25 ^-0.4 ^0.6 run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.03 0.03 0.03 0.05 4
