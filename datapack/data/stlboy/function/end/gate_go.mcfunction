# Le Surfer touche une passerelle de l'End (en tant que le Surfer, positionne au coin du bloc de passerelle)
# Une perle portee par la passerelle l'emmene de l'autre cote (la passerelle ne transporte que les projectiles et les petites entites).
scoreboard players set @s stlboy.gate 60
summon minecraft:ender_pearl ~0.5 ~0.5 ~0.5 {Motion:[0.0,-0.02,0.0],Tags:["stlboy_gpearl"]}
data modify entity @e[type=minecraft:ender_pearl,tag=stlboy_gpearl,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e[type=minecraft:ender_pearl,tag=stlboy_gpearl] remove stlboy_gpearl
effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:slow_falling 4 0 true
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0.6 50
playsound minecraft:block.end_gateway.spawn player @s ~ ~ ~ 0.6 1.6
title @s actionbar {"translate":"stlboy.end.gate","fallback":"✦ The gateway carries you","color":"light_purple"}
