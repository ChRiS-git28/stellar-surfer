scoreboard players set #c7 stlboy.tmp 7
scoreboard players set #c10 stlboy.tmp 10
scoreboard players operation #pd stlboy.tmp *= #c7 stlboy.tmp
scoreboard players operation #pd stlboy.tmp /= #c10 stlboy.tmp
execute store result storage stlboy:tmp cd double 0.1 run scoreboard players get #pd stlboy.tmp
function stlboy:cosmic/hit with storage stlboy:tmp
