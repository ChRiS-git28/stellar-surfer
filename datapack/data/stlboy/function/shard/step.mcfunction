# Un pas d'eclat (en tant que l'eclat, a sa position) : 1,1 bloc par tick, tete chercheuse sur 5 blocs devant lui
scoreboard players remove @s stlboy.life 1
execute if score @s stlboy.life matches ..0 run return run function stlboy:shard/fizzle
# cible : d'abord un ennemi connu devant, sinon toute creature vivante non pacifique proche
execute positioned ^ ^ ^4 as @e[type=#stlboy:shard_prey,predicate=!stlboy:ally,distance=..7,sort=nearest,limit=1] run tag @s add stlboy_shard_t
execute unless entity @e[tag=stlboy_shard_t,limit=1] positioned ^ ^ ^4 as @e[type=!#stlboy:shard_ignore,type=!#stlboy:shard_peaceful,predicate=!stlboy:owner,predicate=!stlboy:ally,distance=..7,sort=nearest] if data entity @s Health unless entity @e[tag=stlboy_shard_t,limit=1] run tag @s add stlboy_shard_t
execute if entity @e[tag=stlboy_shard_t,limit=1] facing entity @e[tag=stlboy_shard_t,limit=1] eyes run tp @s ^ ^ ^1.1 ~ ~
execute unless entity @e[tag=stlboy_shard_t,limit=1] run tp @s ^ ^ ^1.1
tag @e[tag=stlboy_shard_t] remove stlboy_shard_t
execute at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1
scoreboard players set #sh stlboy.tmp 0
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#stlboy:shard_ignore,predicate=!stlboy:owner,predicate=!stlboy:ally] if data entity @s Health if score #sh stlboy.tmp matches 0 run function stlboy:shard/hit
execute at @s positioned ^ ^ ^-0.55 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#stlboy:shard_ignore,predicate=!stlboy:owner,predicate=!stlboy:ally] if data entity @s Health if score #sh stlboy.tmp matches 0 run function stlboy:shard/hit
execute if score #sh stlboy.tmp matches 1 at @s run return run function stlboy:shard/burst
execute at @s unless block ~ ~ ~ #stlboy:orb_passable run function stlboy:shard/fizzle
