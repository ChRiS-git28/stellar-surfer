# Mesure la hitbox de la cible au quart de bloc pres (en tant que la cible)
scoreboard players set #H stlboy.tmp 1
scoreboard players set #W stlboy.tmp 1
execute positioned ~-0.5 ~0.25 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 2
execute positioned ~-0.5 ~0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 3
execute positioned ~-0.5 ~0.75 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 4
execute positioned ~-0.5 ~1.0 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 5
execute positioned ~-0.5 ~1.25 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 6
execute positioned ~-0.5 ~1.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 7
execute positioned ~-0.5 ~1.75 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 8
execute positioned ~-0.5 ~2.0 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 9
execute positioned ~-0.5 ~2.25 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 10
execute positioned ~-0.5 ~2.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 11
execute positioned ~-0.5 ~2.75 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 12
execute positioned ~-0.5 ~3.0 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 13
execute positioned ~-0.5 ~3.25 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 14
execute positioned ~-0.5 ~3.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 15
execute positioned ~-0.5 ~3.75 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #H stlboy.tmp 16
execute positioned ~0.25 ~0.1 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #W stlboy.tmp 2
execute positioned ~0.5 ~0.1 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #W stlboy.tmp 3
execute positioned ~0.75 ~0.1 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #W stlboy.tmp 4
execute positioned ~1.0 ~0.1 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #W stlboy.tmp 5
execute positioned ~1.25 ~0.1 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #W stlboy.tmp 6
execute positioned ~1.5 ~0.1 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #W stlboy.tmp 7
execute positioned ~1.75 ~0.1 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #W stlboy.tmp 8
execute store result storage stlboy:breath h int 1 run scoreboard players get #H stlboy.tmp
execute store result storage stlboy:breath w int 1 run scoreboard players get #W stlboy.tmp
function stlboy:breath/shape_m with storage stlboy:breath
