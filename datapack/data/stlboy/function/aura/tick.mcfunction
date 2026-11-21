# Aura de classe (en tant que le Surfer, a sa position, chaque tick) : particules propres au theme de la classe
execute if entity @s[gamemode=spectator] run return 0
# Ghost Step et toute invisibilite : aucune particule de classe ne trahit le Surfer
execute if predicate stlboy:invisible run return 0
execute store result score #ag stlboy.tmp run time query gametime
scoreboard players set #c8 stlboy.tmp 8
scoreboard players operation #ak stlboy.tmp = #ag stlboy.tmp
scoreboard players operation #ak stlboy.tmp %= #c8 stlboy.tmp
scoreboard players set #cn stlboy.tmp 2
scoreboard players operation #at2 stlboy.tmp = #ag stlboy.tmp
scoreboard players operation #at2 stlboy.tmp %= #cn stlboy.tmp
scoreboard players set #cn stlboy.tmp 3
scoreboard players operation #at3 stlboy.tmp = #ag stlboy.tmp
scoreboard players operation #at3 stlboy.tmp %= #cn stlboy.tmp
scoreboard players set #cn stlboy.tmp 4
scoreboard players operation #at4 stlboy.tmp = #ag stlboy.tmp
scoreboard players operation #at4 stlboy.tmp %= #cn stlboy.tmp
scoreboard players set #cn stlboy.tmp 5
scoreboard players operation #at5 stlboy.tmp = #ag stlboy.tmp
scoreboard players operation #at5 stlboy.tmp %= #cn stlboy.tmp
scoreboard players set #cn stlboy.tmp 6
scoreboard players operation #at6 stlboy.tmp = #ag stlboy.tmp
scoreboard players operation #at6 stlboy.tmp %= #cn stlboy.tmp
scoreboard players set #cn stlboy.tmp 8
scoreboard players operation #at8 stlboy.tmp = #ag stlboy.tmp
scoreboard players operation #at8 stlboy.tmp %= #cn stlboy.tmp
scoreboard players set #cn stlboy.tmp 30
scoreboard players operation #at30 stlboy.tmp = #ag stlboy.tmp
scoreboard players operation #at30 stlboy.tmp %= #cn stlboy.tmp
scoreboard players operation #ag30 stlboy.tmp = #at30 stlboy.tmp
# particules de classe masquees pour soi (option du menu /trigger stlboy.hud) : envoyees a tous les autres joueurs
execute if entity @s[tag=stlboy_nofx] run tag @s add stlboy_fx_skip
execute if entity @s[tag=stlboy_cls_nebula] run function stlboy:aura/nebula
execute if entity @s[tag=stlboy_cls_sun] run function stlboy:aura/sun
execute if entity @s[tag=stlboy_cls_neptune] run function stlboy:aura/neptune
execute if entity @s[tag=stlboy_cls_aurora] run function stlboy:aura/aurora
execute if entity @s[tag=stlboy_cls_betelgeuse] run function stlboy:aura/betelgeuse
tag @s remove stlboy_fx_skip
