# Nouvelle cible : identifiant propre, compteur d'etoiles a zero (en tant que la cible)
tag @s add stlboy_bt
scoreboard players operation @s stlboy.cown = #own stlboy.tmp
scoreboard players add #cid stlboy.cid 1
scoreboard players operation @s stlboy.cid = #cid stlboy.cid
scoreboard players set @s stlboy.stars 0
scoreboard players set @s stlboy.cwait 0
execute if entity @s[tag=stlboy_prim] run scoreboard players set @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.chain 0
