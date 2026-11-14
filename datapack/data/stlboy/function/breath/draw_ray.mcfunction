# Dessin du rayon en mode raycast (en tant que le joueur) : la mesure vient de stlboy:ray_len
function stlboy:calc/rank
execute store result score #rs stlboy.tmp run resource get @s stlboy:ray_len
execute store result storage stlboy:tmp d double 0.25 run scoreboard players get #rs stlboy.tmp
function stlboy:breath/ray_end with storage stlboy:tmp
function stlboy:breath/beam
function stlboy:breath/check_prism
function stlboy:breath/check_lens
execute if score #prism stlboy.tmp matches 1 run function stlboy:breath/prism_vis
