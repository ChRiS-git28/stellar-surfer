scoreboard players add #vl stlboy.tmp 1
execute if score #vl stlboy.tmp >= #max stlboy.tmp run return 0
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #stlboy:orb_passable run function stlboy:breath/sb/len_step
