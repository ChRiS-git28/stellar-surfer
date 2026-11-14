# Leurre du Pas fantome (en tant que le leurre, chaque tick) : se dissipe apres 3 s
scoreboard players remove @s stlboy.life 1
execute if score @s stlboy.life matches ..0 at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.2 0.5 0.2 0.05 12
execute if score @s stlboy.life matches ..0 run kill @s
