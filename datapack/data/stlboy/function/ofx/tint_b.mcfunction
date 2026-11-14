# Teinte des pieces d'orbe a la palette du proprietaire (ton secondaire)
scoreboard players set #pal stlboy.tmp 1
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] run scoreboard players operation #pal stlboy.tmp = @s stlboy.pal
execute if score #pal stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_ofx,tag=!stlboy_ofx_tinted,predicate=stlboy:owned,distance=..2] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11566335
execute if score #pal stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_ofx,tag=!stlboy_ofx_tinted,predicate=stlboy:owned,distance=..2] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738858
execute if score #pal stlboy.tmp matches 3 as @e[type=minecraft:item_display,tag=stlboy_ofx,tag=!stlboy_ofx_tinted,predicate=stlboy:owned,distance=..2] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4188376
execute if score #pal stlboy.tmp matches 4 as @e[type=minecraft:item_display,tag=stlboy_ofx,tag=!stlboy_ofx_tinted,predicate=stlboy:owned,distance=..2] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16739029
execute if score #pal stlboy.tmp matches 5 as @e[type=minecraft:item_display,tag=stlboy_ofx,tag=!stlboy_ofx_tinted,predicate=stlboy:owned,distance=..2] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16756848
tag @e[type=minecraft:item_display,tag=stlboy_ofx,tag=!stlboy_ofx_tinted,predicate=stlboy:owned,distance=..2] add stlboy_ofx_tinted
