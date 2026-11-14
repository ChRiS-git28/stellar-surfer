# La cible est ejectee : si le Surfer a la competence, un choc contre un mur la blessera (en tant que la cible)
execute unless entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_crash,limit=1] run return 0
tag @s add stlboy_flung
scoreboard players set @s stlboy.fl 12
scoreboard players set @s stlboy.fv 0
scoreboard players operation @s stlboy.own = #own stlboy.tmp
