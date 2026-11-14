# Fin du rayon (en tant que le joueur, chaque tick tant qu'il ne tire pas) : les pieces retrecissent puis disparaissent
kill @e[type=minecraft:marker,tag=stlboy_beam,predicate=stlboy:owned]
execute as @e[type=minecraft:item_display,tag=stlboy_beam,tag=stlboy_bd3,predicate=stlboy:owned] run kill @s
execute as @e[type=minecraft:item_display,tag=stlboy_beam,tag=stlboy_bd2,predicate=stlboy:owned] run function stlboy:breath/beam_die3
execute as @e[type=minecraft:item_display,tag=stlboy_beam,tag=stlboy_bd1,predicate=stlboy:owned] run function stlboy:breath/beam_die2
execute as @e[type=minecraft:item_display,tag=stlboy_beam,tag=!stlboy_bd1,tag=!stlboy_bd2,tag=!stlboy_bd3,predicate=stlboy:owned] run function stlboy:breath/beam_die1
