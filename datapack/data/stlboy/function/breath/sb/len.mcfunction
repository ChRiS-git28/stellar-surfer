# Longueur VISUELLE du rayon : jusqu'au premier bloc solide, dans la portee (#max, en quarts de bloc).
# Les entites traversees ne raccourcissent plus l'affichage (en tant que le joueur)
scoreboard players set #vl stlboy.tmp 0
execute anchored eyes positioned ^ ^ ^0.3 run function stlboy:breath/sb/len_step
