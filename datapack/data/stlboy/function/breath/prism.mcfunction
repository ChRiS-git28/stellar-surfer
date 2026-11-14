# Prisme : deux rayons secondaires partent de la Nova a +-20 deg (en tant que le joueur)
scoreboard players set #rs stlboy.tmp 0
execute at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] rotated as @s rotated ~20 ~ positioned ^ ^ ^0.6 run function stlboy:breath/prism_step
scoreboard players set #rs stlboy.tmp 0
execute at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] rotated as @s rotated ~-20 ~ positioned ^ ^ ^0.6 run function stlboy:breath/prism_step
execute if score @s stlboy.lvl matches 0 as @e[tag=stlboy_prism_hit] run damage @s 0.45 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 1 as @e[tag=stlboy_prism_hit] run damage @s 0.473 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 2 as @e[tag=stlboy_prism_hit] run damage @s 0.495 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 3 as @e[tag=stlboy_prism_hit] run damage @s 0.517 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 4 as @e[tag=stlboy_prism_hit] run damage @s 0.54 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 5 as @e[tag=stlboy_prism_hit] run damage @s 0.562 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 6 as @e[tag=stlboy_prism_hit] run damage @s 0.585 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 7 as @e[tag=stlboy_prism_hit] run damage @s 0.608 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 8 as @e[tag=stlboy_prism_hit] run damage @s 0.63 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 9 as @e[tag=stlboy_prism_hit] run damage @s 0.652 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 10 as @e[tag=stlboy_prism_hit] run damage @s 0.675 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 11 as @e[tag=stlboy_prism_hit] run damage @s 0.698 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 12 as @e[tag=stlboy_prism_hit] run damage @s 0.72 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 13 as @e[tag=stlboy_prism_hit] run damage @s 0.742 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 14 as @e[tag=stlboy_prism_hit] run damage @s 0.765 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 15 as @e[tag=stlboy_prism_hit] run damage @s 0.788 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 16 as @e[tag=stlboy_prism_hit] run damage @s 0.81 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 17 as @e[tag=stlboy_prism_hit] run damage @s 0.833 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 18 as @e[tag=stlboy_prism_hit] run damage @s 0.855 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 19 as @e[tag=stlboy_prism_hit] run damage @s 0.877 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute if score @s stlboy.lvl matches 20 as @e[tag=stlboy_prism_hit] run damage @s 0.9 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
tag @e[tag=stlboy_prism_hit] remove stlboy_prism_hit
execute at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] run particle minecraft:end_rod ~ ~0.2 ~ 0.2 0.2 0.2 0.05 4
