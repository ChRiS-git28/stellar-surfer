# Vitesse horizontale au carre (x 1 000 000) ; un choc = elle s'effondre alors qu'un bloc touche le flanc (en tant que la cible)
scoreboard players remove @s stlboy.fl 1
execute store result score #mx stlboy.tmp run data get entity @s Motion[0] 1000
execute store result score #mz stlboy.tmp run data get entity @s Motion[2] 1000
scoreboard players operation #mx stlboy.tmp *= #mx stlboy.tmp
scoreboard players operation #mz stlboy.tmp *= #mz stlboy.tmp
scoreboard players operation #mx stlboy.tmp += #mz stlboy.tmp
execute if score @s stlboy.fv matches 62500.. run function stlboy:orb/crash_try
execute if entity @s[tag=stlboy_flung] run scoreboard players operation @s stlboy.fv = #mx stlboy.tmp
execute if entity @s[tag=stlboy_flung] if score @s stlboy.fl matches ..0 run function stlboy:orb/crash_end
