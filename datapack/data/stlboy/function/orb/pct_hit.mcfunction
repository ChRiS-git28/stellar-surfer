# Degats en % des PV max de la cible (en tant que la cible). #pm = pour mille
execute store result score #m stlboy.tmp run attribute @s minecraft:generic.max_health get 1
scoreboard players operation #m stlboy.tmp *= #pm stlboy.tmp
scoreboard players set #100 stlboy.tmp 1000
scoreboard players operation #m stlboy.tmp /= #100 stlboy.tmp
execute if score #m stlboy.tmp matches ..0 run return 0
execute store result storage stlboy:tmp pct double 0.1 run scoreboard players get #m stlboy.tmp
function stlboy:orb/pct_m with storage stlboy:tmp
