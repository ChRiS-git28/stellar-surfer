# Parametres du rayon : #max (pas de 0,25 bloc), #th (epaisseur), #pierce (en tant que le joueur)
function stlboy:calc/rank
scoreboard players set #rs stlboy.tmp 0
scoreboard players set #c2 stlboy.tmp 2
scoreboard players set #c16 stlboy.tmp 16
execute store result score #gt stlboy.tmp run time query gametime
# Portee FIXE (11 blocs, 14 en vol), plus de croissance avec la Poussiere : il faut s'approcher du danger
scoreboard players set #max stlboy.tmp 44
execute if score @s stlboy.fly matches 1 run scoreboard players set #max stlboy.tmp 56
execute store result score @s stlboy.fly run resource get @s stlboy:flight_armed
scoreboard players set #th stlboy.tmp 0
execute if score #sl stlboy.tmp matches 7..13 run scoreboard players set #th stlboy.tmp 1
execute if score #sl stlboy.tmp matches 14.. run scoreboard players set #th stlboy.tmp 2
scoreboard players operation #pierce stlboy.tmp = #sl stlboy.tmp
scoreboard players operation #pierce stlboy.tmp /= #5 stlboy.const
scoreboard players add #pierce stlboy.tmp 1
execute if entity @s[tag=stlboy_sk_ray] run scoreboard players add #pierce stlboy.tmp 1
execute if entity @s[tag=stlboy_sk_focus] run scoreboard players set #c3 stlboy.tmp 13
execute if entity @s[tag=stlboy_sk_focus] run scoreboard players operation #max stlboy.tmp *= #c3 stlboy.tmp
execute if entity @s[tag=stlboy_sk_focus] run scoreboard players set #c2 stlboy.tmp 10
execute if entity @s[tag=stlboy_sk_focus] run scoreboard players operation #max stlboy.tmp /= #c2 stlboy.tmp
execute if entity @s[tag=stlboy_sk_focus] if score #pierce stlboy.tmp matches 3.. run scoreboard players set #pierce stlboy.tmp 2
execute if entity @s[tag=stlboy_sk_wide] run scoreboard players add #pierce stlboy.tmp 2
execute if entity @s[tag=stlboy_sk_wide] run scoreboard players set #c3 stlboy.tmp 3
execute if entity @s[tag=stlboy_sk_wide] run scoreboard players operation #max stlboy.tmp *= #c3 stlboy.tmp
execute if entity @s[tag=stlboy_sk_wide] run scoreboard players set #c4 stlboy.tmp 4
execute if entity @s[tag=stlboy_sk_wide] run scoreboard players operation #max stlboy.tmp /= #c4 stlboy.tmp
execute if entity @s[tag=stlboy_sk_wide] if score #th stlboy.tmp matches ..1 run scoreboard players add #th stlboy.tmp 1
execute if entity @s[tag=stlboy_sk_far] run scoreboard players set #c5 stlboy.tmp 9
execute if entity @s[tag=stlboy_sk_far] run scoreboard players operation #max stlboy.tmp *= #c5 stlboy.tmp
execute if entity @s[tag=stlboy_sk_far] run scoreboard players set #c4 stlboy.tmp 8
execute if entity @s[tag=stlboy_sk_far] run scoreboard players operation #max stlboy.tmp /= #c4 stlboy.tmp
# --- paliers supplementaires de l'arbre de competences ---
execute if entity @s[tag=stlboy_sk_rng1] run scoreboard players set #c115 stlboy.tmp 115
execute if entity @s[tag=stlboy_sk_rng1] run scoreboard players operation #max stlboy.tmp *= #c115 stlboy.tmp
execute if entity @s[tag=stlboy_sk_rng1] run scoreboard players set #c100 stlboy.tmp 100
execute if entity @s[tag=stlboy_sk_rng1] run scoreboard players operation #max stlboy.tmp /= #c100 stlboy.tmp
execute if entity @s[tag=stlboy_sk_rng2] run scoreboard players set #c125 stlboy.tmp 125
execute if entity @s[tag=stlboy_sk_rng2] run scoreboard players operation #max stlboy.tmp *= #c125 stlboy.tmp
execute if entity @s[tag=stlboy_sk_rng2] run scoreboard players set #c100 stlboy.tmp 100
execute if entity @s[tag=stlboy_sk_rng2] run scoreboard players operation #max stlboy.tmp /= #c100 stlboy.tmp
execute unless entity @s[tag=stlboy_sk_focus] if entity @s[tag=stlboy_sk_pen2] run scoreboard players add #pierce stlboy.tmp 1
execute unless entity @s[tag=stlboy_sk_focus] if entity @s[tag=stlboy_sk_pen3] run scoreboard players add #pierce stlboy.tmp 1
execute if entity @s[tag=stlboy_sk_thick] if score #th stlboy.tmp matches ..1 run scoreboard players add #th stlboy.tmp 1
# Rang 9 (Quasar) : +1 perforation
execute store result score #r9 stlboy.tmp run resource get @s stlboy:stardust_rank
execute if score #r9 stlboy.tmp matches 9.. run scoreboard players add #pierce stlboy.tmp 1
# Plafond dur : 17 blocs (20 en vol), quelles que soient les competences
execute if score #max stlboy.tmp matches 69.. run scoreboard players set #max stlboy.tmp 68
execute if score @s stlboy.fly matches 1 if score #max stlboy.tmp matches 69..80 run scoreboard players set #max stlboy.tmp 80
