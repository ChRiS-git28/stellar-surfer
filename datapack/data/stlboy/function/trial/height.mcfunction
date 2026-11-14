# #h = hauteur du joueur au-dessus du sol
summon minecraft:marker ~ ~ ~ {Tags:["stlboy_tr_h"]}
execute as @e[type=minecraft:marker,tag=stlboy_tr_h,limit=1] at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute store result score #py stlboy.tmp run data get entity @s Pos[1]
execute store result score #gy stlboy.tmp run data get entity @e[type=minecraft:marker,tag=stlboy_tr_h,limit=1] Pos[1]
scoreboard players operation #h stlboy.tmp = #py stlboy.tmp
scoreboard players operation #h stlboy.tmp -= #gy stlboy.tmp
kill @e[type=minecraft:marker,tag=stlboy_tr_h]
