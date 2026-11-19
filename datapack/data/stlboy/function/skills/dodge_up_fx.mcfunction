# Esquive vers le haut (double espace) : poussee d'etoile sous les pieds (en tant que le joueur)
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.1 ~ 0.35 0.05 0.35 0.25 22
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.1 ~ 0.25 0.02 0.25 0.04 8
playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 0.7 1.4
playsound stlboy:cosmic.charge player @a ~ ~ ~ 0.35 2.0
