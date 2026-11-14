# En tant que la boule de feu
execute if data entity @s Owner run return run function stlboy:trial/mirror_reflect
execute if entity @e[tag=stlboy_orb_nova,distance=..3.6] run return run function stlboy:trial/mirror_reflect
tp @s ^ ^ ^0.4
particle minecraft:dust_color_transition{from_color:[1.0,0.55,0.2],scale:1.2,to_color:[0.7,0.4,1.0]} ~ ~ ~ 0.15 0.15 0.15 0 3 force
particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 1 force
scoreboard players add @s stlboy.trt 1
execute if score @s stlboy.trt matches 150.. run return run kill @s
execute if entity @a[tag=stlboy_surfer,scores={stlboy.tr=7},distance=..2.3] run function stlboy:trial/mirror_hit
