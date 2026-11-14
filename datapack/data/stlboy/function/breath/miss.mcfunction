# Rate : toutes les constellations s'eteignent (en tant que le joueur)
execute as @e[tag=stlboy_bt,predicate=stlboy:cowned] at @s run function stlboy:breath/lose
scoreboard players set @s stlboy.stars 0
scoreboard players set @s stlboy.chain 0
