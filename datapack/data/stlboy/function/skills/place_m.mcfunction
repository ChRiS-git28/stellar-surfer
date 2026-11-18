$execute store success score #ok stlboy.tmp run setblock ~ ~ ~ $(pid)
execute if score #ok stlboy.tmp matches 1 run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.3 0.3 0.3 0.05 8
execute if score #ok stlboy.tmp matches 1 run playsound minecraft:block.amethyst_block.place block @a ~ ~ ~ 0.9 1.4
execute if score #ok stlboy.tmp matches 1 unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand stlboy:minus_one
