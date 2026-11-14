# Entree dans la Supernova (en tant que la cible)
tag @s add stlboy_sn_in
attribute @s minecraft:generic.movement_speed modifier add stlboy:sn -0.5 add_multiplied_total
attribute @s minecraft:generic.flying_speed modifier add stlboy:sn -0.5 add_multiplied_total
# le trou de ver avale les reperes : les creatures ne voient presque plus rien au-dela d'elles-memes, les joueurs sont aveugles
attribute @s minecraft:generic.follow_range modifier add stlboy:sn -0.9 add_multiplied_total
effect give @s minecraft:darkness 3 0 true
effect give @s[type=minecraft:player] minecraft:blindness 3 0 true
execute store result score @s stlboy.ox run data get entity @s Pos[0] 100
execute store result score @s stlboy.oy run data get entity @s Pos[1] 100
execute store result score @s stlboy.oz run data get entity @s Pos[2] 100
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 12
