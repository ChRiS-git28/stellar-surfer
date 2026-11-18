playsound stlboy:cosmic.chime player @a[distance=..8] ~ ~ ~ 1 1.5
playsound stlboy:cosmic.resonate player @a[distance=..8] ~ ~ ~ 1 1.2
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:24,lifetime_variation:6,size:0.12f,size_variation:0.036f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#9FE8FF00",friction:0.96f,gravity:0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.3 0.3 0.3 0.2 20 force
scoreboard players add @a[distance=..2.4,tag=stlboy_surfer,scores={stlboy.tr=1},limit=1,sort=nearest] stlboy.trh 1
kill @s
