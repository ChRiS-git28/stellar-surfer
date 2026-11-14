# Pause entre deux constellations (en tant que la cible, chaque tick) : a la fin, la jauge repart de zero
scoreboard players remove @s stlboy.cwait 1
execute if score @s stlboy.cwait matches ..0 run scoreboard players set @s stlboy.stars 0
