# Les boules de feu sont avancees a la main (tp) ; un coup du joueur leur donne un proprietaire : renvoyee
scoreboard players operation #m stlboy.tmp = @s stlboy.trt
scoreboard players operation #m stlboy.tmp %= #50 stlboy.tmp
execute if score @s stlboy.trt matches 40..400 if score #m stlboy.tmp matches 0 run function stlboy:trial/mirror_spawn
execute if score @s stlboy.trt matches 400.. if score #m stlboy.tmp matches 0 run function stlboy:trial/mirror_spawn
execute if score @s stlboy.trt matches 400.. if score #m stlboy.tmp matches 25 run function stlboy:trial/mirror_spawn
execute as @e[type=minecraft:fireball,tag=stlboy_tr_fb,distance=..60] at @s run function stlboy:trial/mirror_step
execute store result bossbar stlboy:trial value run scoreboard players get @s stlboy.trr
execute store result storage stlboy:tr n int 1 run scoreboard players get @s stlboy.trr
execute store result storage stlboy:tr h int 1 run scoreboard players get @s stlboy.trh
function stlboy:trial/mirror_name with storage stlboy:tr
execute if score @s stlboy.trh matches 2.. run return run function stlboy:trial/fail
execute if score @s stlboy.trr matches 10.. run return run function stlboy:trial/win_mirror
execute if score @s stlboy.trt matches 1800.. run function stlboy:trial/fail
