# Resistance au pull : recalcule (toutes les 10 ticks) le palier de chaque creature proche (en tant que l'orbe)
execute store result score #gt stlboy.tmp run time query gametime
scoreboard players operation #gt stlboy.tmp %= #10 stlboy.const
execute unless score #gt stlboy.tmp matches 0 run return 0
scoreboard players operation #orbrk stlboy.tmp = @s stlboy.rk
scoreboard players set #orbfo stlboy.tmp 0
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_force,limit=1] run scoreboard players set #orbfo stlboy.tmp 2
execute as @e[distance=..13,type=!minecraft:player,type=!minecraft:marker,type=!minecraft:item,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:text_display,type=!minecraft:interaction,type=!minecraft:experience_orb,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly] run function stlboy:orb/res_calc
