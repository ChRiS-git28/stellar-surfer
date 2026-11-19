# Fin de la Supernova (en tant que le joueur)
execute as @e[tag=stlboy_sn_in] run function stlboy:orb/sn_leave
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#FFE7A8FF",end_color:"#FF6AD500",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
# --- suite perdue au patch p74, restauree ---
execute at @e[type=marker,tag=stlboy_sn,predicate=stlboy:owned,limit=1] run particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.2 ~ 3 3 3 0.5 120
execute at @e[type=marker,tag=stlboy_sn,predicate=stlboy:owned,limit=1] run playsound stlboy:cosmic.wh_off player @a ~ ~ ~ 1 0.6
kill @e[type=marker,tag=stlboy_sn,predicate=stlboy:owned]
# La recharge (2 x la duree du champ) demarre maintenant (en tant que le joueur)
execute store result storage stlboy:tmp cd int 1 run scoreboard players get @s stlboy.sntot
function stlboy:orb/sn_cd with storage stlboy:tmp
