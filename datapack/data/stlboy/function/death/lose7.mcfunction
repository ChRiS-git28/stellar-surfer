# Au Rang max (10) : perd 10 % de la Poussiere accumulee au-dela du Rang
execute store result score #t stlboy.tmp run resource get @s stlboy:stardust_total
scoreboard players remove #t stlboy.tmp 20250
scoreboard players operation #l stlboy.tmp = #t stlboy.tmp
scoreboard players operation #l stlboy.tmp /= #10 stlboy.const
execute if score #l stlboy.tmp matches ..0 run return 0
scoreboard players operation #l stlboy.tmp *= #-1 stlboy.const
execute store result storage stlboy:death l int 1 run scoreboard players get #l stlboy.tmp
function stlboy:death/lose7_m with storage stlboy:death
tellraw @s ["",{"text":"✦ ","color":"dark_purple"},{"text":"The void drinks a tenth of your dust.","color":"gray","italic":true}]
