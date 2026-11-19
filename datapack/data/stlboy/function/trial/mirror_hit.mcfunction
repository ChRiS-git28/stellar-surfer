particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:8,lifetime_variation:2,size:1.6f,size_variation:0.48f,end_size:0.0f,color:"#F0E8FFEE",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~ ~ 0 0 0 0 1 force
playsound stlboy:cosmic.nova player @a[distance=..30] ~ ~ ~ 0.6 1.4
execute as @a[tag=stlboy_surfer,scores={stlboy.tr=7},distance=..3,limit=1] run function stlboy:trial/mirror_dmg
kill @s
