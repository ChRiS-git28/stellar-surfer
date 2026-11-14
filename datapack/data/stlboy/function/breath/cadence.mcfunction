# Cadence du rayon : FIXE, 1 coup (= 1 etoile) toutes les 0,25 s quel que soit le Rang -> constellation complete en 1 s (en tant que le joueur)
function stlboy:calc/rank
execute store result score #pt stlboy.tmp run resource get @s stlboy:stellar_breath_pt
scoreboard players set @s stlboy.cad 0
execute if score #pt stlboy.tmp matches 5.. run scoreboard players set @s stlboy.cad 1
