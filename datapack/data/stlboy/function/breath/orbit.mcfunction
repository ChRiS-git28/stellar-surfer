# Chaque constellation tourne lentement autour de sa propre cible (en tant que le joueur)
execute as @e[tag=stlboy_bt,scores={stlboy.stars=1..},predicate=stlboy:cowned] at @s run function stlboy:breath/orbit_one
