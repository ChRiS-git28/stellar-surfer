# Debut de pulsation sur une cible : identifiant, mesure, +1 etoile (en tant que la cible)
execute unless entity @s[tag=stlboy_bt] run function stlboy:breath/new_target
function stlboy:breath/measure
scoreboard players add @s stlboy.stars 1
# Lentille (Singularite) : meme gain une seconde fois pour les ennemis a 8 blocs de l'orbe
execute if score #lens stlboy.tmp matches 1 if entity @e[tag=stlboy_orb_well,distance=..8,predicate=stlboy:owned] run scoreboard players add @s stlboy.stars 1
execute if score #lens stlboy.tmp matches 1 if entity @e[tag=stlboy_orb_well,distance=..8,predicate=stlboy:owned] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.1f,size_variation:0.03f,end_size:0.0f,color:"#9FE8FFFF",end_color:"#FFFFFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.3 0.5 0.3 0.05 6
