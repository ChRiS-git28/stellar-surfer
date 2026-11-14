# Le Surfer fixe cette etoile (en tant que l'etoile) : 12 ticks de regard l'allument
scoreboard players add @s stlboy.life 1
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.15 0.15 0.15 0.01 1 force
execute if score @s stlboy.life matches 12.. run function stlboy:anchor/light
