particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:10,lifetime_variation:2,size:3.2f,size_variation:0.96f,end_size:0.0f,color:"#F0E8FFEE",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~ ~ 0 0 0 0 1 force
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:16,lifetime_variation:4,size:0.16f,size_variation:0.048f,end_size:0.0f,color:"#FFB050FF",end_color:"#FF3A1000",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 1 1 1 0.15 40 force
playsound stlboy:cosmic.nova player @a[distance=..40] ~ ~ ~ 0.7 1.3
execute as @a[distance=..3.9,tag=stlboy_surfer,scores={stlboy.tr=2}] run function stlboy:trial/meteor_dmg
kill @s
