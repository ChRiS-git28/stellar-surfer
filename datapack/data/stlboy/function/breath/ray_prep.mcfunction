# Prepare le tir raycast (en tant que le joueur)
function stlboy:breath/params
tag @e[tag=stlboy_aim] remove stlboy_aim
tag @e[tag=stlboy_rc] remove stlboy_rc
scoreboard players operation @s stlboy.rayd = #max stlboy.tmp
scoreboard players add @s stlboy.rayd 11
scoreboard players set #c12 stlboy.tmp 12
scoreboard players operation @s stlboy.rayd /= #c12 stlboy.tmp
execute if score @s stlboy.rayd matches ..2 run scoreboard players set @s stlboy.rayd 2
execute if score @s stlboy.rayd matches 19.. run scoreboard players set @s stlboy.rayd 18
scoreboard players operation @s stlboy.rayt = #th stlboy.tmp
