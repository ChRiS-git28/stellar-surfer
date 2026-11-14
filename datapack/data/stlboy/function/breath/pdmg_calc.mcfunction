# Degats d'une pulsation (1/10 de PV) : FIXES, ni Poussiere ni Rang. On les achete dans l'arbre.
scoreboard players set #pd stlboy.tmp 4
execute if score #prism stlboy.tmp matches 1 run scoreboard players set #pd stlboy.tmp 3
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_edge1,limit=1] run scoreboard players add #pd stlboy.tmp 1
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_edge2,limit=1] run scoreboard players add #pd stlboy.tmp 1
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_edge3,limit=1] run scoreboard players add #pd stlboy.tmp 2
scoreboard players set #c3 stlboy.tmp 3
scoreboard players set #c2 stlboy.tmp 2
execute if score #fly stlboy.tmp matches 1 run scoreboard players operation #pd stlboy.tmp *= #c3 stlboy.tmp
execute if score #fly stlboy.tmp matches 1 run scoreboard players operation #pd stlboy.tmp /= #c2 stlboy.tmp
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_hunter,limit=1] run scoreboard players add #pd stlboy.tmp 2
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_comb,limit=1] if predicate stlboy:on_fire run scoreboard players add #pd stlboy.tmp 1
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_photo,limit=1] run scoreboard players add #pd stlboy.tmp 1
