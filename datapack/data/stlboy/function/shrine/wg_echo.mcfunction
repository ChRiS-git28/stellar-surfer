# Toutes les epreuves sont accomplies : l'autel rend un echo de Poussiere puis s'eteint (en tant que le Surfer)
execute at @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..6,sort=nearest,limit=1] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1.5 ~ 0.5 1 0.5 0.1 30
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.5 1.6
title @s actionbar {"translate":"stlboy.altar.echo","fallback":"The altar remembers you, and gives back a little light.","color":"gold"}
function stlboy:trial/dust {n:120}
execute at @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..6,sort=nearest,limit=1] run kill @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..1.5]
