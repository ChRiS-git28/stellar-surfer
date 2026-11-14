execute unless dimension minecraft:overworld run return run function stlboy:trial/fail
scoreboard players add @s stlboy.trt 1
execute if score @s stlboy.tr matches 1 run function stlboy:trial/run_ring
execute if score @s stlboy.tr matches 2 run function stlboy:trial/run_meteor
execute if score @s stlboy.tr matches 3 run function stlboy:trial/run_echo
execute if score @s stlboy.tr matches 4 run function stlboy:trial/run_horizon
execute if score @s stlboy.tr matches 5 run function stlboy:trial/run_const
execute if score @s stlboy.tr matches 6 run function stlboy:trial/run_motes
execute if score @s stlboy.tr matches 7 run function stlboy:trial/run_mirror
