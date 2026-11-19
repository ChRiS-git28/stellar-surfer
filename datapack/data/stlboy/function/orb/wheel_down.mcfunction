# Molette vers le bas pendant le pilotage : rapproche l'orbe (en tant que le joueur)
execute store result score #m stlboy.tmp run resource get @s stlboy:graviton_mode
execute store result score #n stlboy.tmp run resource get @s stlboy:graviton_nmode
execute unless score @s stlboy.wd matches 1.. run scoreboard players set @s stlboy.wd 8
execute unless score @s stlboy.nd matches 1.. run scoreboard players set @s stlboy.nd 8
execute if score #m stlboy.tmp matches 2 if score @s stlboy.wd matches 3.. run scoreboard players remove @s stlboy.wd 1
execute if score #n stlboy.tmp matches 1 if score @s stlboy.nd matches 3.. run scoreboard players remove @s stlboy.nd 1
playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 0.6 0.9
