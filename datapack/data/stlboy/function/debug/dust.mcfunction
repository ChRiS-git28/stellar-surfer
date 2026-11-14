# Affiche Rang, barre en cours, Poussiere totale et Niveau de puissance
scoreboard objectives add stlboy.dust dummy
scoreboard objectives add stlboy.rank dummy
scoreboard objectives add stlboy.total dummy
execute as @a store result score @s stlboy.rank run resource get @s stlboy:stardust_rank
execute as @a store result score @s stlboy.total run resource get @s stlboy:stardust_total
execute as @a store result score @s stlboy.lvl run resource get @s stlboy:stardust_level
execute as @a run scoreboard players set @s stlboy.dust 0
execute as @a if score @s stlboy.rank matches 0 store result score @s stlboy.dust run resource get @s stlboy:stardust_tier_0
execute as @a if score @s stlboy.rank matches 1 store result score @s stlboy.dust run resource get @s stlboy:stardust_tier_1
execute as @a if score @s stlboy.rank matches 2 store result score @s stlboy.dust run resource get @s stlboy:stardust_tier_2
execute as @a if score @s stlboy.rank matches 3 store result score @s stlboy.dust run resource get @s stlboy:stardust_tier_3
execute as @a if score @s stlboy.rank matches 4 store result score @s stlboy.dust run resource get @s stlboy:stardust_tier_4
execute as @a if score @s stlboy.rank matches 5 store result score @s stlboy.dust run resource get @s stlboy:stardust_tier_5
execute as @a if score @s stlboy.rank matches 6 store result score @s stlboy.dust run resource get @s stlboy:stardust_tier_6
execute as @a if score @s stlboy.rank matches 7 run scoreboard players operation @s stlboy.dust = @s stlboy.total
execute as @a run tellraw @s [{"text":"✦ Rang ","color":"light_purple"},{"score":{"name":"@s","objective":"stlboy.rank"},"color":"gold"},{"text":"  ✦ Barre ","color":"light_purple"},{"score":{"name":"@s","objective":"stlboy.dust"},"color":"white"},{"text":"  ✦ Total ","color":"light_purple"},{"score":{"name":"@s","objective":"stlboy.total"},"color":"white"},{"text":"/10000  ✦ Niveau ","color":"light_purple"},{"score":{"name":"@s","objective":"stlboy.lvl"},"color":"aqua"},{"text":"/20","color":"aqua"}]
