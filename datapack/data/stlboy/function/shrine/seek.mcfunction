# Un sanctuaire s'eveille pour la prochaine epreuve (en tant que le Surfer, 1x/s)
execute unless dimension minecraft:overworld run return 0
execute if score @s stlboy.tr matches 1.. run return 0
execute if entity @e[type=minecraft:item_display,tag=stlboy_shrine,limit=1] run return 0
# Autel dechu (structure du monde) a proximite : il s'eveille en priorite
execute if entity @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..32,limit=1] run return run function stlboy:shrine/wg
execute store result score #sr stlboy.tmp run random value 1..720
execute unless score #sr stlboy.tmp matches 1 run return 0
execute store result score #ok stlboy.tmp run function stlboy:shrine/choose
execute if score #ok stlboy.tmp matches 1 run function stlboy:shrine/pick with storage stlboy:shr
