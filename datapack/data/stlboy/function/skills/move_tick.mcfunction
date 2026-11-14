# Competences de mouvement (en tant que le joueur, chaque tick tant qu'une competence est active)
execute if entity @s[tag=stlboy_sk_dodge] run resource change @s stlboy:float_dodge_cd -1
execute if entity @s[tag=stlboy_sk_boost] run resource change @s stlboy:flight_boost_cd -1
execute store result score #arm stlboy.tmp run resource get @s stlboy:flight_armed
execute store result score #gt stlboy.tmp run time query gametime
scoreboard players operation #g4 stlboy.tmp = #gt stlboy.tmp
scoreboard players operation #g4 stlboy.tmp %= #4 stlboy.const
execute if score #arm stlboy.tmp matches 1 if score #g4 stlboy.tmp matches 0 if entity @s[tag=stlboy_sk_wake] run function stlboy:skills/wake_hit
execute if score #arm stlboy.tmp matches 1 if score #g4 stlboy.tmp matches 0 if entity @s[tag=stlboy_sk_veil] run effect give @s minecraft:resistance 2 0 true
execute store result score #roll stlboy.tmp run resource get @s stlboy:float_roll_fx
execute if score #roll stlboy.tmp matches 0 run tag @s remove stlboy_dodged
execute if score #roll stlboy.tmp matches 8 unless entity @s[tag=stlboy_dodged] run function stlboy:skills/dodge_fx
execute if entity @s[tag=stlboy_sk_dodge2] run resource change @s stlboy:float_dodge_cd -1
execute if entity @s[tag=stlboy_sk_boost2] run resource change @s stlboy:flight_boost_cd -1
