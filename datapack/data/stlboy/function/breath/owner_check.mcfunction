# Une etoile ou un trait dont la cible a disparu s'eteint (en tant que la piece)
scoreboard players operation #o stlboy.tmp = @s stlboy.cid
scoreboard players set #f stlboy.tmp 0
execute as @e[tag=stlboy_bt,predicate=stlboy:cowned] if score @s stlboy.cid = #o stlboy.tmp run scoreboard players set #f stlboy.tmp 1
execute if score #f stlboy.tmp matches 0 run kill @s
