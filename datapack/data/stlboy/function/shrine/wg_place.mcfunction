# A la position du marqueur de l'autel (macro : id), en tant que le Surfer
$function stlboy:shrine/place_$(id)
particle minecraft:end_rod ~ ~2 ~ 0.6 1.2 0.6 0.08 40
kill @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..1.5]
