# Cette cible n'est plus touchee : sa constellation s'eteint (en tant que la cible)
execute if score @s stlboy.stars matches 1.. run playsound stlboy:cosmic.shard player @a ~ ~ ~ 0.5 0.8
scoreboard players operation #o stlboy.tmp = @s stlboy.cid
execute as @e[type=minecraft:item_display,tag=stlboy_cst,tag=!stlboy_cdone,predicate=stlboy:owned] if score @s stlboy.cid = #o stlboy.tmp at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 1
execute as @e[type=minecraft:item_display,tag=stlboy_cst,tag=!stlboy_cdone,predicate=stlboy:owned] if score @s stlboy.cid = #o stlboy.tmp run kill @s
scoreboard players set @s stlboy.stars 0
scoreboard players set @s stlboy.cid 0
scoreboard players set @s stlboy.cown 0
tag @s remove stlboy_bt
