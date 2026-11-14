# HUD Sigil + effets (en tant que le Surfer, chaque tick)
scoreboard players enable @s stlboy.hud
execute if score @s stlboy.hud matches 1.. run function stlboy:hud/cfg
# altitude pour l'echelle du HUD et la teinte du ciel
execute store result storage stlboy:hud y int 1 run data get entity @s Pos[1]
function stlboy:hud/alt with storage stlboy:hud
function stlboy:fx/tick
