# Anti-teleportation : un saut de plus de 3 blocs en un tick est annule (en tant que la cible)
execute store result score #x stlboy.tmp run data get entity @s Pos[0] 100
scoreboard players operation #dx stlboy.tmp = #x stlboy.tmp
scoreboard players operation #dx stlboy.tmp -= @s stlboy.ox
execute store result score #y stlboy.tmp run data get entity @s Pos[1] 100
scoreboard players operation #dy stlboy.tmp = #y stlboy.tmp
scoreboard players operation #dy stlboy.tmp -= @s stlboy.oy
execute store result score #z stlboy.tmp run data get entity @s Pos[2] 100
scoreboard players operation #dz stlboy.tmp = #z stlboy.tmp
scoreboard players operation #dz stlboy.tmp -= @s stlboy.oz
execute if score #dx stlboy.tmp matches 300.. run return run function stlboy:orb/sn_pullback
execute if score #dx stlboy.tmp matches ..-300 run return run function stlboy:orb/sn_pullback
execute if score #dy stlboy.tmp matches 300.. run return run function stlboy:orb/sn_pullback
execute if score #dy stlboy.tmp matches ..-300 run return run function stlboy:orb/sn_pullback
execute if score #dz stlboy.tmp matches 300.. run return run function stlboy:orb/sn_pullback
execute if score #dz stlboy.tmp matches ..-300 run return run function stlboy:orb/sn_pullback
scoreboard players operation @s stlboy.ox = #x stlboy.tmp
scoreboard players operation @s stlboy.oy = #y stlboy.tmp
scoreboard players operation @s stlboy.oz = #z stlboy.tmp
