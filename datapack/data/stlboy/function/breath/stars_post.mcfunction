# Fin de pulsation sur une cible : dessine sa constellation ou la fait eclater (en tant que la cible)
execute if score @s stlboy.stars matches 1 run function stlboy:breath/star_1 with storage stlboy:breath cur
execute if score @s stlboy.stars matches 2 run function stlboy:breath/star_2 with storage stlboy:breath cur
execute if score @s stlboy.stars matches 3 run function stlboy:breath/star_3 with storage stlboy:breath cur
execute if score @s stlboy.stars matches 4.. run function stlboy:breath/constellation
