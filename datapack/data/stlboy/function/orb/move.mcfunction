# Place l'orbe a sa position memorisee (centiemes de bloc) par /tp (en tant que l'orbe)
execute store result storage stlboy:tmp mv.x double 0.01 run scoreboard players get @s stlboy.ox
execute store result storage stlboy:tmp mv.y double 0.01 run scoreboard players get @s stlboy.oy
execute store result storage stlboy:tmp mv.z double 0.01 run scoreboard players get @s stlboy.oz
function stlboy:orb/move_m with storage stlboy:tmp mv
