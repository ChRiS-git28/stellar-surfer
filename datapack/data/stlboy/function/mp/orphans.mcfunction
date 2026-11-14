# Supprime les morceaux de rayon sans Surfer connecte (serveur, une fois par seconde)
tag @e[type=minecraft:item_display,tag=stlboy_beam] add stlboy_orph
execute as @a[tag=stlboy_surfer] run function stlboy:mp/orph_keep
kill @e[type=minecraft:item_display,tag=stlboy_orph]
