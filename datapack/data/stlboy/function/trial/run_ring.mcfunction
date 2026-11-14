execute as @e[type=minecraft:marker,tag=stlboy_tr_ring,distance=..200] at @s run function stlboy:trial/ring_fx
scoreboard players set #t stlboy.tmp 800
scoreboard players operation #t stlboy.tmp -= @s stlboy.trt
execute store result bossbar stlboy:trial value run scoreboard players get #t stlboy.tmp
execute store result storage stlboy:tr n int 1 run scoreboard players get @s stlboy.trh
function stlboy:trial/ring_name with storage stlboy:tr
execute if score @s stlboy.trh matches 10.. run return run function stlboy:trial/win_ring
execute if score @s stlboy.trt matches 800.. run function stlboy:trial/fail
