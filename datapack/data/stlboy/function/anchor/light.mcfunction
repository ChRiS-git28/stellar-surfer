# Une etoile de la constellation s'allume (en tant que l'etoile)
tag @s add stlboy_anc_lit
execute store result score #al stlboy.tmp if entity @e[type=minecraft:marker,tag=stlboy_anc_lit,predicate=stlboy:owned]
execute at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.3 0.3 0.3 0.06 14 force
execute if score #al stlboy.tmp matches 1 at @s run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1.6 0.9
execute if score #al stlboy.tmp matches 2 at @s run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1.6 1.2
execute if score #al stlboy.tmp matches 3 at @s run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1.6 1.5
