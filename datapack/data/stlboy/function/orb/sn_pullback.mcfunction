# Ramene la cible la ou elle etait avant de se teleporter (en tant que la cible)
execute store result storage stlboy:tmp x double 0.01 run scoreboard players get @s stlboy.ox
execute store result storage stlboy:tmp y double 0.01 run scoreboard players get @s stlboy.oy
execute store result storage stlboy:tmp z double 0.01 run scoreboard players get @s stlboy.oz
function stlboy:orb/sn_tp with storage stlboy:tmp
execute at @s run particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.3 0.6 0.3 0.4 30
execute at @s run playsound stlboy:cosmic.wh_deny hostile @a ~ ~ ~ 1 1.4
