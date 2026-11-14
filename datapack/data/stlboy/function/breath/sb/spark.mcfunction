# Eclats d'etoiles qui crepitent le long du rayon (en tant que le joueur) : couleur de la palette
data modify storage stlboy:beam sp set value {c:"#9FE8FF",d:"#B07CFF"}
scoreboard players set #6 stlboy.tmp 6
execute if score @s stlboy.pal matches 2 run data modify storage stlboy:beam sp set value {c:"#FFC24A",d:"#FF6A2A"}
execute if score @s stlboy.pal matches 3 run data modify storage stlboy:beam sp set value {c:"#4FA8FF",d:"#3FE8D8"}
execute if score @s stlboy.pal matches 4 run data modify storage stlboy:beam sp set value {c:"#7DFFB0",d:"#FF6AD5"}
execute if score @s stlboy.pal matches 5 run data modify storage stlboy:beam sp set value {c:"#FF5A3C",d:"#FFB070"}
scoreboard players operation #sn stlboy.tmp = #r stlboy.tmp
scoreboard players remove #sn stlboy.tmp 4
scoreboard players operation #sn stlboy.tmp /= #6 stlboy.tmp
execute if score #sn stlboy.tmp matches ..0 run return 0
execute anchored eyes positioned ^ ^-0.65 ^1.2 run function stlboy:breath/sb/spark_step with storage stlboy:beam sp
