# Supernova intime : sous 30 % de vie, le Surfer explose (12 degats a 6 blocs, 1 fois par minute)
execute as @e[distance=..6,type=!#stlboy:no_beam,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly] unless entity @s[type=minecraft:player,gamemode=spectator] run function stlboy:cosmic/hit {cd:8}
effect give @s minecraft:resistance 3 1 true
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:4,lifetime_variation:1,size:1.4f,size_variation:0.42f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#C9A6FF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~1 ~ 0 0 0 0 1
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:10,lifetime_variation:2,size:3.2f,size_variation:0.96f,end_size:0.0f,color:"#F0E8FFEE",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~1 ~ 0 0 0 0 1
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:30,lifetime_variation:4,size:0.6f,size_variation:0.1f,end_size:0.0f,color:"#FFF4E8FF",end_color:"#FF5A3C00",friction:0.88f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~1 ~ 2 2 2 0.4 80 force
playsound stlboy:cosmic.nova player @a ~ ~ ~ 1.2 0.6
title @s actionbar {"translate":"stlboy.cls.sun_nova","fallback":"✦ Your heart went supernova ✦","color":"gold"}
