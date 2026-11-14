# Etat du Stellar Breath : /function stlboy:debug/breath
tellraw @s {"text":"--- Stellar Breath ---","color":"gold"}
execute if entity @s[tag=stlboy_surfer] run tellraw @s {"text":"Tag surfer : OK","color":"green"}
execute unless entity @s[tag=stlboy_surfer] run tellraw @s {"text":"Tag surfer : ABSENT","color":"red"}
execute store result score #b stlboy.tmp run resource get @s stlboy:stellar_breath_charge
tellraw @s [{"text":"charge = ","color":"gray"},{"score":{"name":"#b","objective":"stlboy.tmp"},"color":"white"},{"text":" / 60"}]
execute store result score #b stlboy.tmp run resource get @s stlboy:stellar_breath_firing
tellraw @s [{"text":"firing = ","color":"gray"},{"score":{"name":"#b","objective":"stlboy.tmp"},"color":"white"}]
execute store result score #b stlboy.tmp run resource get @s stlboy:stellar_breath_need_release
tellraw @s [{"text":"need_release = ","color":"gray"},{"score":{"name":"#b","objective":"stlboy.tmp"},"color":"white"}]
execute store result score #b stlboy.tmp run resource get @s stlboy:graviton_mode
tellraw @s [{"text":"graviton_mode = ","color":"gray"},{"score":{"name":"#b","objective":"stlboy.tmp"},"color":"white"},{"text":" (1 = bloque)"}]
execute store result score #b stlboy.tmp run data get entity @s foodLevel
tellraw @s [{"text":"faim = ","color":"gray"},{"score":{"name":"#b","objective":"stlboy.tmp"},"color":"white"},{"text":" (il faut > 6)"}]
