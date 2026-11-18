# (en tant qu'un Surfer connecte) ses morceaux de rayon restent
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
tag @e[type=minecraft:item_display,tag=stlboy_beam,predicate=stlboy:owned] remove stlboy_orph
tag @e[type=minecraft:marker,tag=stlboy_glow,predicate=stlboy:owned] remove stlboy_orph
