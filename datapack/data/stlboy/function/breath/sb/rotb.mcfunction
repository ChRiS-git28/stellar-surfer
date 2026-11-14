# Regard retourne (lacet + 180, tangage oppose) : une face qui regarde le tireur (en tant que le joueur)
execute store result score #ry stlboy.tmp run data get entity @s Rotation[0] 100
execute store result score #rp stlboy.tmp run data get entity @s Rotation[1] 100
scoreboard players add #ry stlboy.tmp 18000
data modify storage stlboy:beam rotb set value [0f,0f]
execute store result storage stlboy:beam rotb[0] float 0.01 run scoreboard players get #ry stlboy.tmp
execute store result storage stlboy:beam rotb[1] float -0.01 run scoreboard players get #rp stlboy.tmp
