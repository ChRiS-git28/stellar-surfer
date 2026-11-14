execute store result storage stlboy:tr x int 1 run random value -7..7
execute store result storage stlboy:tr y int 1 run random value -2..2
execute store result storage stlboy:tr z int 1 run random value -7..7
function stlboy:trial/meteor_m with storage stlboy:tr
scoreboard players set @e[type=minecraft:marker,tag=stlboy_tr_met,tag=!stlboy_tr_set] stlboy.trt 22
tag @e[type=minecraft:marker,tag=stlboy_tr_met,tag=!stlboy_tr_set] add stlboy_tr_set
