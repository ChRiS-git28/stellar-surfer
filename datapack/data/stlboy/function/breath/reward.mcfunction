# Elan de l'execution (en tant que le joueur)
resource set @s stlboy:hunted_timer 0
effect clear @s minecraft:unluck
effect give @s minecraft:speed 3 1 true
scoreboard players set @s stlboy.chain 0
title @s actionbar {"text":"✦ Executed ✦","color":"gold"}
