scoreboard players add #rs stlboy.tmp 1
particle minecraft:electric_spark ~ ~ ~ 0.05 0.05 0.05 0 1
particle minecraft:dust{color:[0.5,0.9,1.0],scale:0.8} ~ ~ ~ 0 0 0 0 1
execute if score #rs stlboy.tmp matches 40.. run return 0
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #stlboy:orb_passable run function stlboy:breath/prism_vis_step
