# Deja 5 Surfers dans ce ciel : l'origine est refusee (en tant que le joueur)
tellraw @s ["",{"text":"✦ ","color":"gray"},{"translate":"stlboy.mp.full","fallback":"Five Stellar Surfers already ride this sky. Your star cannot rise here.","color":"gray"}]
tag @s remove stlboy_surfer
origin set @s origins:origin origins:human
