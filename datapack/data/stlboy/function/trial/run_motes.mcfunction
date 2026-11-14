execute as @e[type=minecraft:item,tag=stlboy_tr_mote] at @s run particle minecraft:end_rod ~ ~0.2 ~ 0.1 0.1 0.1 0.01 1 force
execute store result score #e stlboy.tmp if entity @e[type=minecraft:item,tag=stlboy_tr_mote]
scoreboard players set #g stlboy.tmp 26
scoreboard players operation #g stlboy.tmp -= #e stlboy.tmp
execute store result bossbar stlboy:trial value run scoreboard players get #g stlboy.tmp
execute store result storage stlboy:tr n int 1 run scoreboard players get #g stlboy.tmp
function stlboy:trial/motes_name with storage stlboy:tr
execute if score #g stlboy.tmp matches 22.. run return run function stlboy:trial/win_motes
execute if score @s stlboy.trt matches 1000.. run function stlboy:trial/fail
