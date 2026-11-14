# Execution ? PV en pourcentage compares au seuil du Niveau (en tant que la cible)
execute store result score #h stlboy.tmp run data get entity @s Health 100
execute store result score #m stlboy.tmp run attribute @s minecraft:generic.max_health get 1
execute if score #m stlboy.tmp matches ..0 run return 0
scoreboard players operation #h stlboy.tmp /= #m stlboy.tmp
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_dead,limit=1] run scoreboard players remove #h stlboy.tmp 3
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 0 if score #h stlboy.tmp matches ..5 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 1 if score #h stlboy.tmp matches ..5 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 2 if score #h stlboy.tmp matches ..6 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 3 if score #h stlboy.tmp matches ..6 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 4 if score #h stlboy.tmp matches ..6 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 5 if score #h stlboy.tmp matches ..7 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 6 if score #h stlboy.tmp matches ..7 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 7 if score #h stlboy.tmp matches ..7 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 8 if score #h stlboy.tmp matches ..8 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 9 if score #h stlboy.tmp matches ..8 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 10 if score #h stlboy.tmp matches ..9 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 11 if score #h stlboy.tmp matches ..9 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 12 if score #h stlboy.tmp matches ..9 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 13 if score #h stlboy.tmp matches ..10 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 14 if score #h stlboy.tmp matches ..10 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 15 if score #h stlboy.tmp matches ..10 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 16 if score #h stlboy.tmp matches ..11 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 17 if score #h stlboy.tmp matches ..11 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 18 if score #h stlboy.tmp matches ..11 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 19 if score #h stlboy.tmp matches ..12 run return run function stlboy:breath/execute
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl matches 20 if score #h stlboy.tmp matches ..12 run return run function stlboy:breath/execute
