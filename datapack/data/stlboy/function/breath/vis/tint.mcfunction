# Teinte d'une etoile ou d'un trait de constellation a la palette (classe) de son proprietaire (en tant que la piece)
scoreboard players set #cp stlboy.tmp 1
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] run scoreboard players operation #cp stlboy.tmp = @s stlboy.pal
execute if score #cp stlboy.tmp matches 1 if entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 12710143
execute if score #cp stlboy.tmp matches 1 unless entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 12621567
execute if score #cp stlboy.tmp matches 2 if entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16766857
execute if score #cp stlboy.tmp matches 2 unless entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16746581
execute if score #cp stlboy.tmp matches 3 if entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 9291519
execute if score #cp stlboy.tmp matches 3 unless entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 6680032
execute if score #cp stlboy.tmp matches 4 if entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11206604
execute if score #cp stlboy.tmp matches 4 unless entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16746717
execute if score #cp stlboy.tmp matches 5 if entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16749696
execute if score #cp stlboy.tmp matches 5 unless entity @s[tag=stlboy_cstar] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16760973
