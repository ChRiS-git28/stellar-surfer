# Contact avec un bloc : recule d'un pas et perd tout son elan (en tant que l'orbe)
scoreboard players operation @s stlboy.ox -= @s stlboy.dx
scoreboard players operation @s stlboy.oy -= @s stlboy.dy
scoreboard players operation @s stlboy.oz -= @s stlboy.dz
function stlboy:orb/move
scoreboard players set @s stlboy.dx 0
scoreboard players set @s stlboy.dy 0
scoreboard players set @s stlboy.dz 0
playsound stlboy:cosmic.shard neutral @a ~ ~ ~ 0.6 0.8
