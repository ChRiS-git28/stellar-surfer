scoreboard players add #pd stlboy.tmp 1
execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #stlboy:orb_passable run return run function stlboy:skills/place_do
execute if score #pd stlboy.tmp matches 8.. run return run function stlboy:skills/place_do
execute positioned ^ ^ ^0.5 run function stlboy:skills/place_step
