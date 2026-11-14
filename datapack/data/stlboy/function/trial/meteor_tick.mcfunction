scoreboard players remove @s stlboy.trt 1
particle minecraft:dust{color:[1.0,0.45,0.15],scale:2.0} ~ ~ ~ 1.4 1.4 1.4 0 6 force
particle minecraft:flame ~ ~ ~ 0.7 0.7 0.7 0.01 4 force
particle minecraft:lava ~ ~6 ~ 0.3 2 0.3 0 2 force
execute if score @s stlboy.trt matches ..0 run function stlboy:trial/meteor_hit
