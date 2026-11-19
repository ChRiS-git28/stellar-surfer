# Fin de l'eruption solaire (en tant que la cible)
tag @s remove stlboy_flare
tag @s remove stlboy_flm
scoreboard players reset @s stlboy.sfl
scoreboard players reset @s stlboy.sfo
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:18,lifetime_variation:4,size:0.3f,size_variation:0.1f,end_size:0.0f,color:"#FFB050AA",end_color:"#3A1A0A00",friction:0.92f,gravity:-0.01f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~0.6 ~ 0.25 0.4 0.25 0.01 4 force
