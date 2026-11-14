# Toutes les epreuves sont accomplies : l'autel rend un echo de Poussiere puis s'eteint (en tant que le Surfer)
execute at @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..6,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~1.5 ~ 0.5 1 0.5 0.1 30
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.5 1.6
title @s actionbar {"translate":"stlboy.altar.echo","fallback":"The altar remembers you, and gives back a little light.","color":"gold"}
function stlboy:trial/dust {n:120}
execute at @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..6,sort=nearest,limit=1] run kill @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..1.5]
