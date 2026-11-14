# Changement de palette (en tant que le Surfer ; #p = nouvelle palette)
scoreboard players set #pa stlboy.tmp 0
execute if score @s stlboy.pal matches 1..5 run scoreboard players set #pa stlboy.tmp 1
scoreboard players operation @s stlboy.pal = #p stlboy.tmp
execute store result storage stlboy:tmp pal.p int 1 run scoreboard players get #p stlboy.tmp
function stlboy:mp/pal_m with storage stlboy:tmp pal
# la marque du point de reapparition suit la nouvelle couleur
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
scoreboard players operation @e[type=minecraft:marker,tag=stlboy_home,predicate=stlboy:owned] stlboy.pal = #p stlboy.tmp
# annonce seulement quand la couleur change (pas a la toute premiere attribution)
execute if score #pa stlboy.tmp matches 0 run return 0
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 1 1.2
execute if score #p stlboy.tmp matches 1 run tellraw @s ["",{"text":"✦ ","color":"#9FE8FF"},{"translate":"stlboy.mp.oath","fallback":"Your light now burns %s.","color":"gray","with":[{"translate":"stlboy.mp.c1","fallback":"Nebula","color":"#9FE8FF"}]}]
execute if score #p stlboy.tmp matches 2 run tellraw @s ["",{"text":"✦ ","color":"#FFC24A"},{"translate":"stlboy.mp.oath","fallback":"Your light now burns %s.","color":"gray","with":[{"translate":"stlboy.mp.c2","fallback":"Sun","color":"#FFC24A"}]}]
execute if score #p stlboy.tmp matches 3 run tellraw @s ["",{"text":"✦ ","color":"#4FA8FF"},{"translate":"stlboy.mp.oath","fallback":"Your light now burns %s.","color":"gray","with":[{"translate":"stlboy.mp.c3","fallback":"Neptune","color":"#4FA8FF"}]}]
execute if score #p stlboy.tmp matches 4 run tellraw @s ["",{"text":"✦ ","color":"#7DFFB0"},{"translate":"stlboy.mp.oath","fallback":"Your light now burns %s.","color":"gray","with":[{"translate":"stlboy.mp.c4","fallback":"Aurora","color":"#7DFFB0"}]}]
execute if score #p stlboy.tmp matches 5 run tellraw @s ["",{"text":"✦ ","color":"#FF5A3C"},{"translate":"stlboy.mp.oath","fallback":"Your light now burns %s.","color":"gray","with":[{"translate":"stlboy.mp.c5","fallback":"Betelgeuse","color":"#FF5A3C"}]}]
