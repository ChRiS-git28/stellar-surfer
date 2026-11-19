# Choisit un point d'impact (en tant que le joueur, a sa position) : une fois sur deux pres de lui, sinon n'importe ou dans l'arene
execute store result storage stlboy:tr yaw int 1 run random value 0..359
execute store result score #mr stlboy.tmp run random value 0..1
execute if score #mr stlboy.tmp matches 0 store result storage stlboy:tr x int 1 run random value -5..5
execute if score #mr stlboy.tmp matches 0 store result storage stlboy:tr z int 1 run random value -5..5
execute if score #mr stlboy.tmp matches 0 run return run function stlboy:trial/meteor_m with storage stlboy:tr
execute store result storage stlboy:tr x int 1 run random value -19..19
execute store result storage stlboy:tr z int 1 run random value -19..19
execute at @e[type=minecraft:marker,tag=stlboy_tr_arena,limit=1,sort=nearest] run function stlboy:trial/meteor_m with storage stlboy:tr
