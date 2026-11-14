# Marque stellaire du point de reapparition (en tant que le Surfer, a l'endroit de l'ancrage)
kill @e[type=minecraft:marker,tag=stlboy_home,predicate=stlboy:owned]
summon minecraft:marker ~ ~0.1 ~ {Tags:["stlboy_home","stlboy_home_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=stlboy_home_new] stlboy.own = #own stlboy.tmp
scoreboard players operation @e[type=minecraft:marker,tag=stlboy_home_new] stlboy.pal = @s stlboy.pal
tag @e[type=minecraft:marker,tag=stlboy_home_new] remove stlboy_home_new
