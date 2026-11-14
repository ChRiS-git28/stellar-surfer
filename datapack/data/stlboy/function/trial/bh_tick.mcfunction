particle minecraft:reverse_portal ~ ~ ~ 1.2 1.2 1.2 0.3 25 force
particle minecraft:smoke ~ ~ ~ 0.6 0.6 0.6 0.02 8 force
particle minecraft:dragon_breath ~ ~ ~ 2 2 2 0.02 4 force
execute facing entity @a[tag=stlboy_surfer,scores={stlboy.tr=4},limit=1,sort=nearest] feet run tp @s ^ ^ ^0.27
execute as @a[distance=..26,tag=stlboy_surfer,scores={stlboy.tr=4}] at @s facing entity @e[type=minecraft:marker,tag=stlboy_tr_bh,limit=1] feet positioned ^ ^ ^0.2 if block ~ ~ ~ #minecraft:air if block ~ ~1 ~ #minecraft:air run tp @s ~ ~ ~
execute as @a[distance=..12,tag=stlboy_surfer,scores={stlboy.tr=4}] at @s facing entity @e[type=minecraft:marker,tag=stlboy_tr_bh,limit=1] feet positioned ^ ^ ^0.2 if block ~ ~ ~ #minecraft:air if block ~ ~1 ~ #minecraft:air run tp @s ~ ~ ~
