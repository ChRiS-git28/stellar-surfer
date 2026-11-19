# Roulade nova : explosion d'etoiles (en tant que le joueur)
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 1.2 0.6 1.2 0.25 40
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:4,lifetime_variation:1,size:1.4f,size_variation:0.42f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#C9A6FF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.8 1.4
execute as @e[distance=..3.5,type=!minecraft:player,type=!#stlboy:no_wake,tag=!stlboy_orb,predicate=!stlboy:owner] run function stlboy:cosmic/hit {cd:5}
execute as @e[distance=..3.5,type=!minecraft:player,type=!#stlboy:no_wake,tag=!stlboy_orb,predicate=!stlboy:owner] run effect give @s minecraft:slowness 2 1 true
