# Attire les objets avec une vraie vitesse (fluide a tout framerate) (en tant que le joueur ; macro : rad, st)
execute store result score #px stlboy.tmp run data get entity @s Pos[0] 100
execute store result score #py stlboy.tmp run data get entity @s Pos[1] 100
execute store result score #pz stlboy.tmp run data get entity @s Pos[2] 100
scoreboard players add #py stlboy.tmp 90
scoreboard players operation #vmax stlboy.tmp = #st stlboy.tmp
scoreboard players set #c15 stlboy.tmp 15
scoreboard players operation #vmax stlboy.tmp *= #c15 stlboy.tmp
scoreboard players set #c10 stlboy.tmp 10
scoreboard players operation #vmax stlboy.tmp /= #c10 stlboy.tmp
scoreboard players operation #vmin stlboy.tmp = #vmax stlboy.tmp
scoreboard players set #cm1 stlboy.tmp -1
scoreboard players operation #vmin stlboy.tmp *= #cm1 stlboy.tmp
$execute at @s as @e[type=minecraft:item,distance=2.2..$(rad),nbt={PickupDelay:0s}] run function stlboy:magnet/vel
