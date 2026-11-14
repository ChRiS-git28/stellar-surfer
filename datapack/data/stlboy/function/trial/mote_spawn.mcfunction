execute store result storage stlboy:tr x int 1 run random value -18..18
execute store result storage stlboy:tr y int 1 run random value -3..14
execute store result storage stlboy:tr z int 1 run random value -18..18
function stlboy:trial/mote_m with storage stlboy:tr
scoreboard players remove #n stlboy.tmp 1
execute if score #n stlboy.tmp matches 1.. run function stlboy:trial/mote_spawn
