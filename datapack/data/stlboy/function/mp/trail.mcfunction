# Sillage du surf a la couleur du Surfer (en tant que le Surfer)
execute if score @s stlboy.pal matches 1 run particle minecraft:dust_color_transition{from_color:[0.62,0.91,1.0],scale:0.9,to_color:[0.69,0.49,1.0]} ~ ~0.6 ~ 0.12 0.12 0.12 0 2
execute if score @s stlboy.pal matches 2 run particle minecraft:dust_color_transition{from_color:[1.0,0.76,0.29],scale:0.9,to_color:[1.0,0.42,0.16]} ~ ~0.6 ~ 0.12 0.12 0.12 0 2
execute if score @s stlboy.pal matches 3 run particle minecraft:dust_color_transition{from_color:[0.31,0.66,1.0],scale:0.9,to_color:[0.25,0.91,0.85]} ~ ~0.6 ~ 0.12 0.12 0.12 0 2
execute if score @s stlboy.pal matches 4 run particle minecraft:dust_color_transition{from_color:[0.49,1.0,0.69],scale:0.9,to_color:[1.0,0.42,0.84]} ~ ~0.6 ~ 0.12 0.12 0.12 0 2
execute if score @s stlboy.pal matches 5 run particle minecraft:dust_color_transition{from_color:[1.0,0.35,0.24],scale:0.9,to_color:[1.0,0.69,0.44]} ~ ~0.6 ~ 0.12 0.12 0.12 0 2
execute unless score @s stlboy.pal matches 1..5 run particle minecraft:dust_color_transition{from_color:[0.62,0.91,1.0],scale:0.9,to_color:[0.69,0.49,1.0]} ~ ~0.6 ~ 0.12 0.12 0.12 0 2
