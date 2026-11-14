# Tick global (tag minecraft:tick) : Star Blessing. Verifie toutes les 10 ticks, pour tous les joueurs.
execute store result score #bgt stlboy.tmp run time query gametime
scoreboard players set #c10 stlboy.tmp 10
scoreboard players operation #bgt stlboy.tmp %= #c10 stlboy.tmp
execute if score #bgt stlboy.tmp matches 0 as @a run function stlboy:blessing/check
execute if score #bgt stlboy.tmp matches 5 as @a[tag=stlboy_blessed] at @s run particle minecraft:end_rod ~ ~2.1 ~ 0.25 0.1 0.25 0.01 2
# Sanctuaires d'epreuve
execute as @e[type=minecraft:interaction,tag=stlboy_shrine] at @s if data entity @s interaction run function stlboy:shrine/use
execute if score #bgt stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_shrine] at @s run function stlboy:shrine/fx
