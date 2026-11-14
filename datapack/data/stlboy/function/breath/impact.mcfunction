# Point d'impact du rayon (en tant que le joueur, positionne au bout)
tp @e[type=minecraft:marker,tag=stlboy_bend,predicate=stlboy:owned] ~ ~ ~
execute if entity @e[tag=stlboy_aim] if predicate stlboy:chance_quarter run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.15 1
