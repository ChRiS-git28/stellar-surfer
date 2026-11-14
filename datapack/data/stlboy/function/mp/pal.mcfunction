# Palette du Surfer = classe choisie (Serment). Nebuleuse avant tout Serment. (en tant que le Surfer, chaque tick)
# stlboy.sid reste l'identifiant de propriete (orbes, rayons...) ; stlboy.pal ne porte que la couleur.
scoreboard players set #p stlboy.tmp 1
execute if entity @s[tag=stlboy_cls_sun] run scoreboard players set #p stlboy.tmp 2
execute if entity @s[tag=stlboy_cls_neptune] run scoreboard players set #p stlboy.tmp 3
execute if entity @s[tag=stlboy_cls_aurora] run scoreboard players set #p stlboy.tmp 4
execute if entity @s[tag=stlboy_cls_betelgeuse] run scoreboard players set #p stlboy.tmp 5
# essai debug : /function stlboy:debug/color {s:N}
execute if score @s stlboy.palx matches 1..5 run scoreboard players operation #p stlboy.tmp = @s stlboy.palx
execute unless score @s stlboy.pal = #p stlboy.tmp run function stlboy:mp/pal_set
