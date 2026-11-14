# Choisit la taille du pas selon la distance a la cible (en tant que l'orbe) ; macro $(t) = well/nova
$data modify storage stlboy:tmp ease set value {t:"$(t)",s:"1.1"}
$execute if entity @e[type=marker,tag=stlboy_aim_$(t),distance=..5] run data modify storage stlboy:tmp ease.s set value "0.7"
$execute if entity @e[type=marker,tag=stlboy_aim_$(t),distance=..2.5] run data modify storage stlboy:tmp ease.s set value "0.4"
$execute if entity @e[type=marker,tag=stlboy_aim_$(t),distance=..1.2] run data modify storage stlboy:tmp ease.s set value "0.2"
$execute if entity @e[type=marker,tag=stlboy_aim_$(t),distance=..0.5] run data modify storage stlboy:tmp ease.s set value "0.08"
$execute if entity @e[type=marker,tag=stlboy_aim_$(t),distance=..0.1] run return run tp @s @e[type=marker,tag=stlboy_aim_$(t),limit=1]
function stlboy:orb/ease_m with storage stlboy:tmp ease
