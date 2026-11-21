# Ferme l'hologramme (en tant que le Surfer)
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
kill @e[tag=stlboy_tree,predicate=stlboy:owned]
tag @s remove stlboy_tree_open
playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 0.6 1.6
