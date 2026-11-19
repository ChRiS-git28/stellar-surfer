# Eruption solaire (en tant que la cible brulante, chaque tick) : brule comme le feu, mais ignore l'invulnerabilite
# s'eteint dans l'eau, sous Resistance au feu, ou a la fin du compte
execute if block ~ ~ ~ minecraft:water run return run function stlboy:cls/flare_end
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{}}}} run return run function stlboy:cls/flare_end
scoreboard players remove @s stlboy.sfl 1
execute if score @s stlboy.sfl matches ..0 run return run function stlboy:cls/flare_end
# flammes solaires
# flammes solaires a la taille de la hitbox (hauteur, etalement, taille et nombre)
execute store result storage stlboy:tmp fl.y double 0.115 run scoreboard players get @s stlboy.sfh
execute store result storage stlboy:tmp fl.dy double 0.085 run scoreboard players get @s stlboy.sfh
execute store result storage stlboy:tmp fl.dx double 0.11 run scoreboard players get @s stlboy.sfw
scoreboard players operation #fs stlboy.tmp = @s stlboy.sfh
scoreboard players add #fs stlboy.tmp 10
execute store result storage stlboy:tmp fl.s double 0.06 run scoreboard players get #fs stlboy.tmp
scoreboard players operation #fc stlboy.tmp = @s stlboy.sfh
scoreboard players operation #fc stlboy.tmp /= #4 stlboy.const
scoreboard players add #fc stlboy.tmp 3
execute store result storage stlboy:tmp fl.c int 1 run scoreboard players get #fc stlboy.tmp
function stlboy:cls/flare_fx with storage stlboy:tmp fl
# 2 degats cosmiques par seconde (ignore l'invulnerabilite), attribue au Surfer qui l'a allumee
scoreboard players operation #fm stlboy.tmp = @s stlboy.sfl
scoreboard players operation #fm stlboy.tmp %= #20 stlboy.const
execute if score #fm stlboy.tmp matches 0 run scoreboard players operation #own stlboy.tmp = @s stlboy.sfo
execute if score #fm stlboy.tmp matches 0 run scoreboard players set #cfree stlboy.tmp 1
execute if score #fm stlboy.tmp matches 0 run function stlboy:cosmic/hit {cd:2}
