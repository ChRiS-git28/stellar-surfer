# Les pieces suivent le centre exact de leur orbe (le client lisse le deplacement) (en tant que l'orbe, a sa position)
# Les pieces tournantes pivotent aussi sur elles-memes a chaque tick (rotation lissee par teleport_duration)
scoreboard players operation #oid stlboy.tmp = @s stlboy.oid
tag @e[type=minecraft:item_display,tag=stlboy_ofx_ride,predicate=stlboy:same_oid] remove stlboy_ofx_orphan
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_ride,tag=!stlboy_ofx_die,predicate=stlboy:same_oid,tag=!stlboy_ofx_spin,tag=!stlboy_ofx_spin2,tag=!stlboy_ofx_tumble,tag=!stlboy_ofx_roll] run tp @s ~ ~ ~
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_ride,tag=!stlboy_ofx_die,predicate=stlboy:same_oid,tag=stlboy_ofx_spin] rotated as @s run tp @s ~ ~ ~ ~6 ~
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_ride,tag=!stlboy_ofx_die,predicate=stlboy:same_oid,tag=stlboy_ofx_spin2] rotated as @s run tp @s ~ ~ ~ ~-11 ~
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_ride,tag=!stlboy_ofx_die,predicate=stlboy:same_oid,tag=stlboy_ofx_tumble] rotated as @s run tp @s ~ ~ ~ ~4 ~
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_ride,tag=!stlboy_ofx_die,predicate=stlboy:same_oid,tag=stlboy_ofx_roll] rotated as @s run tp @s ~ ~ ~ ~-7 ~
