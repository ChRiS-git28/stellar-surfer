# Betelgeuse : une geante rouge ne se laisse pas traquer longtemps. La Traque s'affaiblit avec le Rang (en tant que le joueur traque)
#  - duree : le compte a rebours file plus vite (Rang x 10 % en plus) -> -33 % au Rang 5, -50 % au Rang 10
#  - Rang 4+ : plus d'entrainement vers le bas apres un coup
#  - Rang 7+ : les projectiles ne sont plus aimantes vers toi
#  - Rang 10 : plus de ralentissement
execute store result score #br stlboy.tmp run resource get @s stlboy:stardust_rank
tag @s remove stlboy_bh_nopull
tag @s remove stlboy_bh_nomag
tag @s remove stlboy_bh_free
execute if score #br stlboy.tmp matches 4.. run tag @s add stlboy_bh_nopull
execute if score #br stlboy.tmp matches 7.. run tag @s add stlboy_bh_nomag
execute if score #br stlboy.tmp matches 10.. run tag @s add stlboy_bh_free
execute if entity @s[tag=stlboy_bh_nopull] run resource set @s stlboy:hunted_pull 0
# tic supplementaire tous les (10 / Rang) tics ; jamais en dessous de 2 pour laisser la fin de Traque se jouer
scoreboard players operation @s stlboy.bha += #br stlboy.tmp
execute store result score #bt stlboy.tmp run resource get @s stlboy:hunted_timer
execute if score @s stlboy.bha matches 10.. if score #bt stlboy.tmp matches 3.. run resource change @s stlboy:hunted_timer -1
execute if score @s stlboy.bha matches 10.. run scoreboard players remove @s stlboy.bha 10
