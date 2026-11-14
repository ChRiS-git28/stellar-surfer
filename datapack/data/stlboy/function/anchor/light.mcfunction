# Une etoile de la constellation s'allume (en tant que l'etoile)
tag @s add stlboy_anc_lit
execute store result score #al stlboy.tmp if entity @e[type=minecraft:marker,tag=stlboy_anc_lit,predicate=stlboy:owned]
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.06 14 force
execute if score #al stlboy.tmp matches 1 at @s run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1.6 0.9
execute if score #al stlboy.tmp matches 2 at @s run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1.6 1.2
execute if score #al stlboy.tmp matches 3 at @s run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1.6 1.5
