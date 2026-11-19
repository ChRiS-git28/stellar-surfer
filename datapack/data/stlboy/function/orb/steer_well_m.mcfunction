# Pilotage de l'orbe well, partie macro : $(d) = distance choisie. Approche amortie (rapide de loin, douce a l'arrivee).
tag @e[tag=stlboy_orb_well,predicate=stlboy:owned] remove stlboy_free
kill @e[type=marker,tag=stlboy_aim_well,predicate=stlboy:owned]
$execute anchored eyes positioned ^ ^ ^$(d) run summon marker ~ ~ ~ {Tags:["stlboy_aim_well"]}
execute as @e[tag=stlboy_aim_well] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[tag=stlboy_orb_well,predicate=stlboy:owned] at @s run function stlboy:orb/ease {t:"well"}
execute as @e[tag=stlboy_orb_well,tag=stlboy_ofx_has,predicate=stlboy:owned] at @s run function stlboy:ofx/follow
execute as @e[tag=stlboy_orb_well,predicate=stlboy:owned] run function stlboy:orb/track
execute at @e[type=marker,tag=stlboy_aim_well,limit=1,predicate=stlboy:owned] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#C9A6FFFF",end_color:"#3FD8FF00",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force