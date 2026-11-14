# Pilotage de l'orbe nova (en tant que le joueur). La distance (nd) est reglee a la molette par cosmic_fx.
execute unless score @s stlboy.nd matches 1.. run scoreboard players set @s stlboy.nd 8
execute store result storage stlboy:tmp d int 1 run scoreboard players get @s stlboy.nd
function stlboy:orb/steer_nova_m with storage stlboy:tmp
