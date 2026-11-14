# Debut de pulsation sur une cible : identifiant, mesure, +1 etoile (en tant que la cible)
execute unless entity @s[tag=stlboy_bt] run function stlboy:breath/new_target
function stlboy:breath/measure
scoreboard players add @s stlboy.stars 1
# Lentille (Singularite) : meme gain une seconde fois pour les ennemis a 8 blocs de l'orbe
execute if score #lens stlboy.tmp matches 1 if entity @e[tag=stlboy_orb_well,distance=..8,predicate=stlboy:owned] run scoreboard players add @s stlboy.stars 1
execute if score #lens stlboy.tmp matches 1 if entity @e[tag=stlboy_orb_well,distance=..8,predicate=stlboy:owned] run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.05 6
