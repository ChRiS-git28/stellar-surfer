execute as @e[type=minecraft:marker,tag=stlboy_tr_bh,limit=1] at @s run function stlboy:trial/bh_tick
execute at @s if entity @e[type=minecraft:marker,tag=stlboy_tr_bh,distance=..2.4] run return run function stlboy:trial/bh_caught
scoreboard players set #t stlboy.tmp 800
scoreboard players operation #t stlboy.tmp -= @s stlboy.trt
execute store result bossbar stlboy:trial value run scoreboard players get #t stlboy.tmp
execute if score @s stlboy.trt matches 800.. run function stlboy:trial/win_horizon
