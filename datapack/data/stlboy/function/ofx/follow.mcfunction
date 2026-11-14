# Les pieces suivent le centre exact de leur orbe (le client lisse le deplacement) (en tant que l'orbe, a sa position)
scoreboard players operation #oid stlboy.tmp = @s stlboy.oid
tag @e[type=minecraft:item_display,tag=stlboy_ofx_ride,predicate=stlboy:same_oid] remove stlboy_ofx_orphan
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_ride,tag=!stlboy_ofx_die,predicate=stlboy:same_oid] run tp @s ~ ~ ~
