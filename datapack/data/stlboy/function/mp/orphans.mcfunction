# Supprime les morceaux de rayon sans Surfer connecte (serveur, une fois par seconde)
tag @e[type=minecraft:item_display,tag=stlboy_beam] add stlboy_orph
tag @e[type=minecraft:marker,tag=stlboy_glow] add stlboy_orph
execute as @a[tag=stlboy_surfer] run function stlboy:mp/orph_keep
kill @e[type=minecraft:item_display,tag=stlboy_orph]
execute as @e[type=minecraft:marker,tag=stlboy_glow,tag=stlboy_orph] at @s run function stlboy:grace/glow_kill
