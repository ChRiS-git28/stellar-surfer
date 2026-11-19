# Trois etoiles apparaissent au-dessus du Surfer, en triangle, a 10 blocs de ses yeux (en tant que le Surfer)
kill @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned]
execute anchored eyes rotated ~-38 -58 positioned ^ ^ ^10 run summon minecraft:marker ~ ~ ~ {Tags:["stlboy_anc"]}
execute anchored eyes rotated ~ -82 positioned ^ ^ ^10 run summon minecraft:marker ~ ~ ~ {Tags:["stlboy_anc"]}
execute anchored eyes rotated ~38 -58 positioned ^ ^ ^10 run summon minecraft:marker ~ ~ ~ {Tags:["stlboy_anc"]}
execute as @e[type=minecraft:marker,tag=stlboy_anc] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
scoreboard players set @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned] stlboy.life 0
playsound stlboy:cosmic.hum player @s ~ ~ ~ 0.6 1.6
