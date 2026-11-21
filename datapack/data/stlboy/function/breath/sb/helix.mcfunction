# Double helice de lumiere autour du rayon (en tant que le joueur, chaque tick de tir) : du volume sous tous les angles
# #r = longueur en quarts de bloc ; un point tous les 1,5 bloc, deux brins opposes qui tournent ; desactive si Effets = aucun
execute store result score #fq stlboy.tmp run resource get @s stlboy:hud_fxq
execute if score #fq stlboy.tmp matches 0 run return 0
scoreboard players set #c8 stlboy.tmp 8
execute store result score #hk stlboy.tmp run time query gametime
# allege (1.1.9) : un tick sur trois, un point tous les 3 blocs, a partir de 3 blocs devant les yeux
scoreboard players operation #h3 stlboy.tmp = #hk stlboy.tmp
scoreboard players set #c3h stlboy.tmp 3
scoreboard players operation #h3 stlboy.tmp %= #c3h stlboy.tmp
execute unless score #h3 stlboy.tmp matches 0 run return 0
scoreboard players operation #hn stlboy.tmp = #r stlboy.tmp
scoreboard players set #c6h stlboy.tmp 12
scoreboard players operation #hn stlboy.tmp /= #c6h stlboy.tmp
execute if score #hn stlboy.tmp matches 8.. run scoreboard players set #hn stlboy.tmp 8
execute if score #hn stlboy.tmp matches ..0 run return 0
execute anchored eyes positioned ^ ^-0.65 ^3 run function stlboy:breath/sb/helix_step with storage stlboy:beam sp
