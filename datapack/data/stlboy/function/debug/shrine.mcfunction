# DEBUG : fait apparaitre, 8 blocs devant toi, le sanctuaire de la prochaine epreuve de ton Rang
# Un sanctuaire precis : /execute positioned ^ ^ ^8 run function stlboy:shrine/place_<id>  (ring, meteor, const, motes, echo, mirror, horizon)
execute store result score #ok stlboy.tmp run function stlboy:shrine/choose
execute if score #ok stlboy.tmp matches 0 run return run tellraw @s {"text":"[debug] Aucune epreuve disponible a ce Rang (ou toutes faites).","color":"gray"}
kill @e[tag=stlboy_shrine]
execute positioned ^ ^ ^8 positioned over motion_blocking_no_leaves run function stlboy:shrine/wg_place with storage stlboy:shr
tellraw @s ["",{"text":"[debug] Sanctuaire : ","color":"gray"},{"storage":"stlboy:shr","nbt":"id","color":"light_purple"}]
