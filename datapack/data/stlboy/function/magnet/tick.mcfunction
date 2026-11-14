# Aimant a objets (en tant que le joueur) : portee et vitesse selon le Rang + competences
# les objets qui ne sont plus attires retombent
execute as @e[type=minecraft:item,tag=stlboy_mg] run data merge entity @s {NoGravity:0b}
tag @e[type=minecraft:item,tag=stlboy_mg] remove stlboy_mg
# derniers blocs : l'objet est place dans le joueur pour etre ramasse (meme s'il est sous les pieds)
execute at @s as @e[type=minecraft:item,distance=..2.2,nbt={PickupDelay:0s}] run data merge entity @s {NoGravity:1b}
execute at @s as @e[type=minecraft:item,distance=..2.2,nbt={PickupDelay:0s}] run tag @s add stlboy_mg
execute at @s as @e[type=minecraft:item,distance=..2.2,nbt={PickupDelay:0s}] run tp @s ~ ~0.4 ~
function stlboy:calc/rank
scoreboard players set #rad stlboy.tmp 24
scoreboard players set #c4 stlboy.tmp 4
scoreboard players operation #rq stlboy.tmp = #rk stlboy.tmp
scoreboard players operation #rq stlboy.tmp *= #c4 stlboy.tmp
scoreboard players operation #rad stlboy.tmp += #rq stlboy.tmp
execute if entity @s[tag=stlboy_sk_mag] run scoreboard players add #rad stlboy.tmp 10
execute if entity @s[tag=stlboy_sk_mwide] run scoreboard players add #rad stlboy.tmp 25
execute store result storage stlboy:tmp rad double 0.1 run scoreboard players get #rad stlboy.tmp
# vitesse : 0,20 bloc par cycle (2 ticks) + 0,02 par Rang ; Gravity Lens = x2
scoreboard players set #st stlboy.tmp 20
scoreboard players set #c2 stlboy.tmp 2
scoreboard players operation #sr stlboy.tmp = #rk stlboy.tmp
scoreboard players operation #sr stlboy.tmp *= #c2 stlboy.tmp
scoreboard players operation #st stlboy.tmp += #sr stlboy.tmp
execute if entity @s[tag=stlboy_sk_mfast] run scoreboard players operation #st stlboy.tmp *= #c2 stlboy.tmp
scoreboard players set #c3 stlboy.tmp 3
scoreboard players operation #tg stlboy.tmp = #st stlboy.tmp
scoreboard players operation #tg stlboy.tmp *= #c3 stlboy.tmp
scoreboard players operation #tg stlboy.tmp /= #c4 stlboy.tmp
execute store result storage stlboy:tmp tg double 0.01 run scoreboard players get #tg stlboy.tmp
execute store result storage stlboy:tmp st double 0.01 run scoreboard players get #st stlboy.tmp
function stlboy:magnet/pull_m with storage stlboy:tmp
execute if entity @s[tag=stlboy_sk_mxp] run function stlboy:magnet/xp_m with storage stlboy:tmp
