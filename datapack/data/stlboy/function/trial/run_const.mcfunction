execute store result score #e stlboy.tmp if entity @e[type=minecraft:vex,tag=stlboy_tr_cecho]
execute store result bossbar stlboy:trial value run scoreboard players get #e stlboy.tmp
execute store result storage stlboy:tr n int 1 run scoreboard players get #e stlboy.tmp
function stlboy:trial/const_name with storage stlboy:tr
execute if score @s stlboy.trt matches 20.. if score #e stlboy.tmp matches 0 run return run function stlboy:trial/win_const
execute if score @s stlboy.trt matches 1300.. run function stlboy:trial/fail
