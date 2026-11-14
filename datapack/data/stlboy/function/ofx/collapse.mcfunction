# L'orbe s'eteint : ses pieces implosent (en tant que l'orbe)
tag @s add stlboy_ofx_dead
scoreboard players operation #oid stlboy.tmp = @s stlboy.oid
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_ride,predicate=stlboy:same_oid] run function stlboy:ofx/die
