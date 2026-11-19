# Le joueur touche le bord de l'arene (en tant que le joueur) : il est renvoye a l'interieur
execute at @e[type=minecraft:marker,tag=stlboy_tr_arena,limit=1,sort=nearest] facing entity @s feet run tp @s ^ ^ ^20.5
damage @s 1 minecraft:magic
title @s actionbar {"text":"✦ The star-fall holds you inside ✦","color":"gold"}
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.8 0.6
execute at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:14,lifetime_variation:3,size:0.3f,size_variation:0.08f,end_size:0.0f,color:"#FFB050FF",end_color:"#FF3A1000",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~1 ~ 0.6 0.8 0.6 0.05 12 force
