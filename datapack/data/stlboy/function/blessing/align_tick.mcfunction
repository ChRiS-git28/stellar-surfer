# Rituel d'alignement : 2 s a regarder l'anneau tenu (en tant que le Surfer)
scoreboard players add @s stlboy.rr 10
particle minecraft:end_rod ^-0.3 ^1.2 ^0.6 0.05 0.05 0.05 0.01 2
execute if score @s stlboy.rr matches 40.. run function stlboy:blessing/align
