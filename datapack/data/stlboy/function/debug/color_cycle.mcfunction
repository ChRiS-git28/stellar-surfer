# Passe a la palette suivante (1 -> 5 -> 1)
scoreboard players operation #n stlboy.tmp = @s stlboy.pal
execute if score #n stlboy.tmp matches 5.. run scoreboard players set #n stlboy.tmp 0
scoreboard players add #n stlboy.tmp 1
execute store result storage stlboy:mp s int 1 run scoreboard players get #n stlboy.tmp
function stlboy:debug/color with storage stlboy:mp
