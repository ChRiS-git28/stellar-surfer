# En tant que le joueur : #rk = Rang (0-10), #sl = indice de puissance 0-20 pilote par le Rang (stats globales)
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
execute if score #rk stlboy.tmp matches 0 run scoreboard players set #sl stlboy.tmp 0
execute if score #rk stlboy.tmp matches 1 run scoreboard players set #sl stlboy.tmp 3
execute if score #rk stlboy.tmp matches 2 run scoreboard players set #sl stlboy.tmp 5
execute if score #rk stlboy.tmp matches 3 run scoreboard players set #sl stlboy.tmp 7
execute if score #rk stlboy.tmp matches 4 run scoreboard players set #sl stlboy.tmp 9
execute if score #rk stlboy.tmp matches 5 run scoreboard players set #sl stlboy.tmp 11
execute if score #rk stlboy.tmp matches 6 run scoreboard players set #sl stlboy.tmp 13
execute if score #rk stlboy.tmp matches 7 run scoreboard players set #sl stlboy.tmp 15
execute if score #rk stlboy.tmp matches 8 run scoreboard players set #sl stlboy.tmp 17
execute if score #rk stlboy.tmp matches 9 run scoreboard players set #sl stlboy.tmp 19
execute if score #rk stlboy.tmp matches 10 run scoreboard players set #sl stlboy.tmp 20
execute if score #rk stlboy.tmp matches 11.. run scoreboard players set #sl stlboy.tmp 20
