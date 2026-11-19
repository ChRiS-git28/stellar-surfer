# Eclat geant de Betelgeuse (en tant que la cible touchee) : souffle cosmique autour d'elle
tag @s add stlboy_sgc
particle apoli:custom{texture:"stlboy:textures/particle/bet_cinder.png",lifetime:14,lifetime_variation:4,size:0.18f,size_variation:0.06f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#FFB07000",friction:0.88f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 5)"} ~ ~0.8 ~ 0.4 0.4 0.4 0.22 18 force
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:10,lifetime_variation:2,size:1.6f,size_variation:0.3f,end_size:0.0f,color:"#FF5A3CCC",end_color:"#FFB07000",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~0.8 ~ 0 0 0 0 1 force
execute as @e[distance=..1.8,tag=!stlboy_sgc,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,type=!#stlboy:no_beam,type=!#stlboy:homing_projectiles] run function stlboy:cosmic/hit {cd:2}
tag @s remove stlboy_sgc
playsound stlboy:cosmic.nova player @a ~ ~ ~ 0.4 1.8
