# Pilotage de l'orbe well (en tant que le joueur). La distance (wd) est reglee a la molette par cosmic_fx.
execute unless score @s stlboy.wd matches 1.. run scoreboard players set @s stlboy.wd 8
execute store result storage stlboy:tmp d int 1 run scoreboard players get @s stlboy.wd
function stlboy:orb/steer_well_m with storage stlboy:tmp
