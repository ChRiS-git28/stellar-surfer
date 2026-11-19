# Dernier souffle : un coup fatal est evite (1 fois toutes les 5 min)
effect give @s minecraft:regeneration 5 2 true
effect give @s minecraft:absorption 10 1 true
effect give @s minecraft:resistance 3 2 true
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:30,lifetime_variation:7,size:0.16f,size_variation:0.048f,end_size:0.0f,color:"#FFE08AFF",end_color:"#7DFFB000",friction:0.95f,gravity:0.01f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.4 0.8 0.4 0.4 60
playsound stlboy:cosmic.rankup player @a ~ ~ ~ 0.8 1.2
title @s actionbar {"translate":"stlboy.cls.bet_last","fallback":"✦ The red giant refuses to die ✦","color":"red"}
