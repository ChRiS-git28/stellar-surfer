# Aucune epreuve disponible pour ce Rang : l'autel dort (en tant que le Surfer)
execute at @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..32] run particle minecraft:reverse_portal ~ ~0.3 ~ 0.4 0.2 0.4 0.01 4
execute if entity @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..6,limit=1] run title @s actionbar {"translate":"stlboy.altar.sleep","fallback":"The altar sleeps. Shine brighter, then return.","color":"dark_purple"}
