particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.3 0.3 0.3 0.15 30 force
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:4,lifetime_variation:1,size:1.4f,size_variation:0.42f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#C9A6FF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~ ~ 0 0 0 0 1 force
playsound stlboy:cosmic.star player @a[distance=..30] ~ ~ ~ 0.8 1.4
execute as @a[tag=stlboy_surfer,scores={stlboy.tr=7}] run scoreboard players add @s stlboy.trr 1
kill @s
