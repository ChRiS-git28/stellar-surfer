# Une esquive vient d'etre declenchee (en tant que le joueur)
tag @s add stlboy_dodged
execute if entity @s[tag=stlboy_sk_nroll] run function stlboy:skills/nroll
execute if entity @s[tag=stlboy_sk_ghost] run function stlboy:skills/ghost
