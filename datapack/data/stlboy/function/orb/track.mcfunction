# Mesure le deplacement du tick (= inertie) apres un pilotage (en tant que l'orbe)
execute store result score #n stlboy.tmp run data get entity @s Pos[0] 100
scoreboard players operation @s stlboy.dx = #n stlboy.tmp
scoreboard players operation @s stlboy.dx -= @s stlboy.ox
scoreboard players operation @s stlboy.ox = #n stlboy.tmp
execute store result score #n stlboy.tmp run data get entity @s Pos[1] 100
scoreboard players operation @s stlboy.dy = #n stlboy.tmp
scoreboard players operation @s stlboy.dy -= @s stlboy.oy
scoreboard players operation @s stlboy.oy = #n stlboy.tmp
execute store result score #n stlboy.tmp run data get entity @s Pos[2] 100
scoreboard players operation @s stlboy.dz = #n stlboy.tmp
scoreboard players operation @s stlboy.dz -= @s stlboy.oz
scoreboard players operation @s stlboy.oz = #n stlboy.tmp
