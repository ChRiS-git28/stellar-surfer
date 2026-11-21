# Eruption solaire (en tant que la cible brulante, chaque tick) : brule comme le feu, mais ignore l'invulnerabilite
# s'eteint dans l'eau, sous Resistance au feu, ou a la fin du compte
execute if block ~ ~ ~ minecraft:water run return run function stlboy:cls/flare_end
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{}}}} run return run function stlboy:cls/flare_end
scoreboard players remove @s stlboy.sfl 1
execute if score @s stlboy.sfl matches ..0 run return run function stlboy:cls/flare_end
# la nappe de flammes suit la cible ; quelques braises s'en echappent
scoreboard players operation #fid stlboy.tmp = @s stlboy.fid
tp @e[type=minecraft:item_display,tag=stlboy_flfx,predicate=stlboy:same_fid,limit=1] ~ ~ ~
execute store result storage stlboy:tmp fl.y double 0.25 run scoreboard players get @s stlboy.sfh
execute store result storage stlboy:tmp fl.dy double 0.05 run scoreboard players get @s stlboy.sfh
execute store result storage stlboy:tmp fl.dx double 0.08 run scoreboard players get @s stlboy.sfw
data modify storage stlboy:tmp fl.s set value 0.6
data modify storage stlboy:tmp fl.c set value 1
execute if predicate stlboy:chance_quarter run function stlboy:cls/flare_fx with storage stlboy:tmp fl
# 2 degats cosmiques par seconde (ignore l'invulnerabilite), attribue au Surfer qui l'a allumee
scoreboard players operation #fm stlboy.tmp = @s stlboy.sfl
scoreboard players operation #fm stlboy.tmp %= #20 stlboy.const
execute if score #fm stlboy.tmp matches 0 run scoreboard players operation #own stlboy.tmp = @s stlboy.sfo
execute if score #fm stlboy.tmp matches 0 run scoreboard players set #cfree stlboy.tmp 1
execute if score #fm stlboy.tmp matches 0 run function stlboy:cosmic/hit {cd:2}
