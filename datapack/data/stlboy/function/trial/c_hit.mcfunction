# Une Constellation touche un echo d'epreuve (en tant que l'echo)
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.6 0.8 0.6 0.2 40
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:24,lifetime_variation:6,size:0.12f,size_variation:0.036f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#9FE8FF00",friction:0.96f,gravity:0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.4 0.4 0.4 0.2 20
playsound stlboy:cosmic.resonate player @a[distance=..24] ~ ~ ~ 1 1.8
kill @s
