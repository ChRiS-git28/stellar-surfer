# L'Ancre d'etoile se fixe : point de reapparition ici (en tant que le Surfer)
spawnpoint @s ~ ~ ~
# l'Eclat d'amethyste est consume (garde la memoire du lieu)
clear @s minecraft:amethyst_shard 1
playsound stlboy:cosmic.resonate player @a ~ ~ ~ 1 1.2
function stlboy:anchor/home_place
execute at @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.2 0.2 0.2 0.05 20 force
kill @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned]
resource set @s stlboy:star_anchor_charge 0
resource set @s stlboy:star_anchor_cd 200
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.3
playsound stlboy:cosmic.on player @a ~ ~ ~ 0.7 1.6
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.15 6 0.15 0.04 70
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:24,lifetime_variation:6,size:0.12f,size_variation:0.036f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#9FE8FF00",friction:0.96f,gravity:0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.2 ~ 1.4 0.1 1.4 0.05 40
title @s actionbar {"text":"✦ ","color":"gold","extra":[{"translate":"stlboy.anchor.bound","fallback":"Your star is anchored here. You will return beneath this sky.","color":"gold"}]}
