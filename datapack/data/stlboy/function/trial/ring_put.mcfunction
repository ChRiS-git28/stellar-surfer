# Pose un anneau ; jamais a moins de 5 blocs au-dessus du sol (le sol = surface sans feuilles)
summon minecraft:marker ~ ~ ~ {Tags:["stlboy_tr","stlboy_tr_ring","stlboy_tr_new"]}
execute positioned over motion_blocking_no_leaves run summon minecraft:marker ~ ~5 ~ {Tags:["stlboy_tr_g"]}
execute store result score #ry stlboy.tmp run data get entity @e[type=minecraft:marker,tag=stlboy_tr_new,limit=1] Pos[1]
execute store result score #gy stlboy.tmp run data get entity @e[type=minecraft:marker,tag=stlboy_tr_g,limit=1] Pos[1]
execute if score #ry stlboy.tmp < #gy stlboy.tmp run tp @e[type=minecraft:marker,tag=stlboy_tr_new,limit=1] @e[type=minecraft:marker,tag=stlboy_tr_g,limit=1]
kill @e[type=minecraft:marker,tag=stlboy_tr_g]
tag @e[type=minecraft:marker,tag=stlboy_tr_new] remove stlboy_tr_new
