# Molette vers le haut pendant le pilotage : eloigne l'orbe (en tant que le joueur). Singularite = wd, Nova = nd
execute store result score #m stlboy.tmp run resource get @s stlboy:graviton_mode
execute store result score #n stlboy.tmp run resource get @s stlboy:graviton_nmode
execute unless score @s stlboy.wd matches 1.. run scoreboard players set @s stlboy.wd 8
execute unless score @s stlboy.nd matches 1.. run scoreboard players set @s stlboy.nd 8
execute if score #m stlboy.tmp matches 2 if score @s stlboy.wd matches ..13 run scoreboard players add @s stlboy.wd 1
execute if score #n stlboy.tmp matches 1 if score @s stlboy.nd matches ..13 run scoreboard players add @s stlboy.nd 1
playsound stlboy:cosmic.hum player @s ~ ~ ~ 0.6 1.6
