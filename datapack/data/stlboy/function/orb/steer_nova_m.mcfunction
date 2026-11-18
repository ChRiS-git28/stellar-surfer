# Pilotage de l'orbe nova, partie macro : $(d) = distance choisie. Approche amortie (rapide de loin, douce a l'arrivee).
tag @e[tag=stlboy_orb_nova,predicate=stlboy:owned] remove stlboy_free
kill @e[type=marker,tag=stlboy_aim_nova,predicate=stlboy:owned]
$execute anchored eyes positioned ^ ^ ^$(d) run summon marker ~ ~ ~ {Tags:["stlboy_aim_nova"]}
execute as @e[tag=stlboy_aim_nova] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[tag=stlboy_orb_nova,predicate=stlboy:owned] at @s run function stlboy:orb/ease {t:"nova"}
execute as @e[tag=stlboy_orb_nova,tag=stlboy_ofx_has,predicate=stlboy:owned] at @s run function stlboy:ofx/follow
execute as @e[tag=stlboy_orb_nova,predicate=stlboy:owned] run function stlboy:orb/track
execute at @e[type=marker,tag=stlboy_aim_nova,limit=1,predicate=stlboy:owned] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#FFF2C2FF",end_color:"#FF7A3C00",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force