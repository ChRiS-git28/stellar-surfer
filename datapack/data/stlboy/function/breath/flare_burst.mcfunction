# Eruption solaire (Ultime) : la Constellation achevee explose (en tant que la cible)
execute as @e[distance=..4,type=!#stlboy:no_beam,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally] unless entity @s[type=minecraft:player,gamemode=spectator] run function stlboy:cosmic/hit {cd:6}
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:6,size:0.5f,size_variation:0.15f,end_size:0.0f,color:"#FFF4E8FF",end_color:"#FF6A2A00",friction:0.88f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~1 ~ 1.5 1.5 1.5 0.25 40 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.3
