# Signal pour l'avatar Figura (en tant que le Surfer) : un eclat vient vraiment de partir.
# Le "bit de lancer" (128) de l'effet cache water_breathing bascule a chaque lancer ; l'avatar anime un lancer a chaque bascule.
execute store success score #shf stlboy.tmp if score @s stlboy.shc matches 1
execute if score #shf stlboy.tmp matches 1 run scoreboard players set @s stlboy.shc 0
execute if score #shf stlboy.tmp matches 0 run scoreboard players set @s stlboy.shc 1
function stlboy:fig/mark
