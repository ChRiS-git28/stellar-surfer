# Invocation du rayon (en tant que le joueur) : longueur x age/4 pendant les 3 premiers ticks
scoreboard players operation #r stlboy.tmp *= @s stlboy.bage
scoreboard players operation #r stlboy.tmp /= #4 stlboy.const
execute anchored eyes positioned ^0.25 ^-0.4 ^0.6 run particle minecraft:end_rod ~ ~ ~ 0.03 0.03 0.03 0.05 4
