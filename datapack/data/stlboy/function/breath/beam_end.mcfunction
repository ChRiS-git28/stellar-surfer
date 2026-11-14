# Fin du rayon (en tant que le joueur, chaque tick tant qu'il ne tire pas) : les pieces retrecissent puis disparaissent
kill @e[type=minecraft:marker,tag=stlboy_beam,predicate=stlboy:owned]
# 1re personne : le rayon s'amincit en 3 ticks pendant que l'eclat se dilate puis s'eteint
kill @e[type=minecraft:item_display,tag=stlboy_bfx,tag=stlboy_fpd2,predicate=stlboy:owned]
tag @e[type=minecraft:item_display,tag=stlboy_bfx,tag=stlboy_fpd1,predicate=stlboy:owned] add stlboy_fpd2
execute if entity @e[type=minecraft:item_display,tag=stlboy_bfp,tag=!stlboy_fpd1,predicate=stlboy:owned] run function stlboy:breath/sb/vanish
execute as @e[type=minecraft:item_display,tag=stlboy_bfx,tag=!stlboy_fpd1,predicate=stlboy:owned] run function stlboy:breath/sb/fp_die
# corps "monde" et cube d'impact
execute as @e[type=minecraft:item_display,tag=stlboy_beam,tag=!stlboy_bfx,tag=stlboy_bd3,predicate=stlboy:owned] run kill @s
execute as @e[type=minecraft:item_display,tag=stlboy_beam,tag=!stlboy_bfx,tag=stlboy_bd2,predicate=stlboy:owned] run function stlboy:breath/beam_die3
execute as @e[type=minecraft:item_display,tag=stlboy_beam,tag=!stlboy_bfx,tag=stlboy_bd1,predicate=stlboy:owned] run function stlboy:breath/beam_die2
execute as @e[type=minecraft:item_display,tag=stlboy_beam,tag=!stlboy_bfx,tag=!stlboy_bd1,tag=!stlboy_bd2,tag=!stlboy_bd3,predicate=stlboy:owned] run function stlboy:breath/beam_die1
