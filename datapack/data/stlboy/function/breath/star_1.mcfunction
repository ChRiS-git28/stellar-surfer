# 1 etoile(s) : la constellation se dessine autour de la cible (en tant que la cible) ; attend que la figure precedente se soit eteinte
$execute unless entity @e[type=minecraft:item_display,tag=stlboy_cdone,scores={stlboy.cid=$(cid)},predicate=stlboy:owned] unless entity @e[type=minecraft:item_display,tag=stlboy_s1,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},predicate=stlboy:owned] run function stlboy:breath/vis/s1 with storage stlboy:breath cur
playsound stlboy:cosmic.chime player @a ~ ~ ~ 1 1.0
playsound stlboy:cosmic.chime player @a ~ ~ ~ 0.9 1.0
playsound stlboy:cosmic.resonate player @a ~ ~ ~ 0.35 1.0
