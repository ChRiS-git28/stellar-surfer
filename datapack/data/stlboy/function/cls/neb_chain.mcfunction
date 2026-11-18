# Carte du ciel : la Constellation achevee se relie a 2 autres ennemis a 6 blocs (6 degats chacun) (en tant que la cible)
tag @s add stlboy_skysrc
execute as @e[distance=0.1..6,type=!#stlboy:no_beam,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,sort=nearest,limit=2] unless entity @s[type=minecraft:player,gamemode=spectator] at @s run function stlboy:cls/neb_link
tag @s remove stlboy_skysrc
