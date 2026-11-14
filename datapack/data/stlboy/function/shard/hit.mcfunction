# Eclat qui touche (en tant que la cible) : 2 coeurs, 2,5 avec Pluie d'etoiles
scoreboard players set #sh stlboy.tmp 1
scoreboard players set #pd stlboy.tmp 40
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_rain,limit=1] run scoreboard players add #pd stlboy.tmp 6
execute store result storage stlboy:tmp cd double 0.1 run scoreboard players get #pd stlboy.tmp
function stlboy:cosmic/hit with storage stlboy:tmp
