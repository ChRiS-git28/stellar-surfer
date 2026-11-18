scoreboard players add #rs stlboy.tmp 1
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.1f,size_variation:0.03f,end_size:0.0f,color:"#9FE8FFFF",end_color:"#FFFFFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.05 0.05 0.05 0 1
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:16,lifetime_variation:4,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#80E6FFFF",end_color:"#80E6FF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0 0 0 0 1
execute if score #rs stlboy.tmp matches 40.. run return 0
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #stlboy:orb_passable run function stlboy:breath/prism_vis_step
