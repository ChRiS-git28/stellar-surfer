# En tant que le joueur qui vient de mourir : perd 10 % de sa barre de Poussiere (jamais son Rang)
scoreboard players set @s stlboy.deaths 0
execute unless entity @s[tag=stlboy_surfer] run return 0
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
execute if score #rk stlboy.tmp matches 10 run return run function stlboy:death/lose7
execute store result storage stlboy:death r int 1 run scoreboard players get #rk stlboy.tmp
function stlboy:death/lose_m with storage stlboy:death
