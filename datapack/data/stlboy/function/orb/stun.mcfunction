# Assomme la cible (en tant que la cible) : immobile et affaiblie 2 s, renouvele a chaque pulsation
effect give @s minecraft:slowness 2 6 true
effect give @s minecraft:weakness 2 1 true
effect give @s minecraft:mining_fatigue 2 2 true
execute at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.1f,size_variation:0.03f,end_size:0.0f,color:"#9FE8FFFF",end_color:"#FFFFFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1.9 ~ 0.25 0.1 0.25 0.2 3
execute at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~2.1 ~ 0.3 0.1 0.3 0.01 1
