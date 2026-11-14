scoreboard players operation #m stlboy.tmp = @s stlboy.trt
scoreboard players operation #m stlboy.tmp %= #16 stlboy.tmp
execute if score @s stlboy.trt matches 40..399 if score #m stlboy.tmp matches 0 run function stlboy:trial/meteor_spawn
execute if score @s stlboy.trt matches 40..399 if score #m stlboy.tmp matches 8 run function stlboy:trial/meteor_spawn
execute if score @s stlboy.trt matches 400.. if score #m stlboy.tmp matches 0 run function stlboy:trial/meteor_spawn
execute if score @s stlboy.trt matches 400.. if score #m stlboy.tmp matches 8 run function stlboy:trial/meteor_spawn
execute if score @s stlboy.trt matches 400.. if score #m stlboy.tmp matches 12 run function stlboy:trial/meteor_spawn
execute if score @s stlboy.trt matches 600.. if score #m stlboy.tmp matches 4 run function stlboy:trial/meteor_spawn
execute as @e[type=minecraft:marker,tag=stlboy_tr_met,distance=..80] at @s run function stlboy:trial/meteor_tick
scoreboard players set #t stlboy.tmp 800
scoreboard players operation #t stlboy.tmp -= @s stlboy.trt
execute store result bossbar stlboy:trial value run scoreboard players get #t stlboy.tmp
execute store result storage stlboy:tr n int 1 run scoreboard players get @s stlboy.trh
function stlboy:trial/meteor_name with storage stlboy:tr
execute if score @s stlboy.trh matches 2.. run return run function stlboy:trial/fail
execute if score @s stlboy.trt matches 800.. run function stlboy:trial/win_meteor
