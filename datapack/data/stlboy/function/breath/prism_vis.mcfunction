# Les deux rayons secondaires de la Nova, dessines a chaque tick (en tant que le joueur)
scoreboard players set #rs stlboy.tmp 0
execute at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] rotated as @s rotated ~20 ~ positioned ^ ^ ^0.6 run function stlboy:breath/prism_vis_step
scoreboard players set #rs stlboy.tmp 0
execute at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] rotated as @s rotated ~-20 ~ positioned ^ ^ ^0.6 run function stlboy:breath/prism_vis_step
