# +1 Rang tout de suite, sans offrande ni epreuve (le passage de Rang normal se joue au tick suivant)
execute store result score #dr stlboy.tmp run resource get @s stlboy:stardust_rank
execute if score #dr stlboy.tmp matches 10.. run return run tellraw @s {"text":"[debug] deja Rang 10","color":"gray"}
execute if score #dr stlboy.tmp matches 2 run resource set @s stlboy:stardust_lock_3 1
execute if score #dr stlboy.tmp matches 4 run resource set @s stlboy:stardust_lock_5 1
execute if score #dr stlboy.tmp matches 5 run resource set @s stlboy:stardust_lock_6 1
execute if score #dr stlboy.tmp matches 6 run resource set @s stlboy:stardust_lock_7 1
execute if score #dr stlboy.tmp matches 9 run resource set @s stlboy:stardust_lock_10 1
execute if score #dr stlboy.tmp matches 0 run resource set @s stlboy:stardust_tier_0 200
execute if score #dr stlboy.tmp matches 0 run resource set @s stlboy:stardust_total 200
execute if score #dr stlboy.tmp matches 1 run resource set @s stlboy:stardust_tier_1 400
execute if score #dr stlboy.tmp matches 1 run resource set @s stlboy:stardust_total 600
execute if score #dr stlboy.tmp matches 2 run resource set @s stlboy:stardust_tier_2 650
execute if score #dr stlboy.tmp matches 2 run resource set @s stlboy:stardust_total 1250
execute if score #dr stlboy.tmp matches 3 run resource set @s stlboy:stardust_tier_3 1000
execute if score #dr stlboy.tmp matches 3 run resource set @s stlboy:stardust_total 2250
execute if score #dr stlboy.tmp matches 4 run resource set @s stlboy:stardust_tier_4 1400
execute if score #dr stlboy.tmp matches 4 run resource set @s stlboy:stardust_total 3650
execute if score #dr stlboy.tmp matches 5 run resource set @s stlboy:stardust_tier_5 1900
execute if score #dr stlboy.tmp matches 5 run resource set @s stlboy:stardust_total 5550
execute if score #dr stlboy.tmp matches 6 run resource set @s stlboy:stardust_tier_6 2500
execute if score #dr stlboy.tmp matches 6 run resource set @s stlboy:stardust_total 8050
execute if score #dr stlboy.tmp matches 7 run resource set @s stlboy:stardust_tier_7 3200
execute if score #dr stlboy.tmp matches 7 run resource set @s stlboy:stardust_total 11250
execute if score #dr stlboy.tmp matches 8 run resource set @s stlboy:stardust_tier_8 4000
execute if score #dr stlboy.tmp matches 8 run resource set @s stlboy:stardust_total 15250
execute if score #dr stlboy.tmp matches 9 run resource set @s stlboy:stardust_tier_9 5000
execute if score #dr stlboy.tmp matches 9 run resource set @s stlboy:stardust_total 20250
scoreboard players add #dr stlboy.tmp 1
tellraw @s [{"text":"[debug] passage au Rang ","color":"gray"},{"score":{"name":"#dr","objective":"stlboy.tmp"},"color":"light_purple"}]
