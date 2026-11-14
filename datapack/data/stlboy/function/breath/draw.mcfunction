# Rayon : version classique (pas a pas) ou version raycast Apoli (voir debug/ray_on et ray_off)
execute if score #rayv stlboy.const matches 1 run return run function stlboy:breath/draw_ray
function stlboy:breath/params
tag @e[tag=stlboy_aim] remove stlboy_aim
execute anchored eyes positioned ^ ^ ^0.3 run function stlboy:breath/draw_step
function stlboy:breath/beam
function stlboy:breath/check_prism
function stlboy:breath/check_lens
execute if score #prism stlboy.tmp matches 1 run function stlboy:breath/prism_vis
