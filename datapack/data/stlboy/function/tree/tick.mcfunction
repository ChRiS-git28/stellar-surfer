# Voie stellaire ouverte (en tant que le Surfer, a sa position)
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
execute if entity @e[tag=stlboy_tgrow,predicate=stlboy:owned,limit=1] run function stlboy:tree/grow
scoreboard players remove @s stlboy.trc 1
execute if score @s stlboy.trc matches ..0 run return run function stlboy:tree/close
execute unless entity @e[type=minecraft:marker,tag=stlboy_tanchor,predicate=stlboy:owned,distance=..7] run return run function stlboy:tree/close
execute as @e[type=minecraft:interaction,tag=stlboy_thit,predicate=stlboy:owned] if data entity @s attack run function stlboy:tree/hit_info
execute as @e[type=minecraft:interaction,tag=stlboy_thit,predicate=stlboy:owned] if data entity @s interaction run function stlboy:tree/hit_buy
