# Palier de resistance au pull d'une creature (en tant que la creature)
# palier de base = PV max ; + resistance magique (Iron's Spellbooks) ; + resistance au recul ; boss = quasi immobiles
# moins : le Rang (1 palier tous les 2 Rangs) et la competence Event Horizon (2 paliers)
execute store result score #mh stlboy.tmp run attribute @s minecraft:generic.max_health get 1
execute unless score #mh stlboy.tmp matches 1.. run return 0
scoreboard players set #bt stlboy.tmp 0
execute if score #mh stlboy.tmp matches 25.. run scoreboard players set #bt stlboy.tmp 1
execute if score #mh stlboy.tmp matches 41.. run scoreboard players set #bt stlboy.tmp 2
execute if score #mh stlboy.tmp matches 81.. run scoreboard players set #bt stlboy.tmp 3
execute if score #mh stlboy.tmp matches 121.. run scoreboard players set #bt stlboy.tmp 5
execute if score #mh stlboy.tmp matches 181.. run scoreboard players set #bt stlboy.tmp 14
execute if entity @s[type=#c:bosses] run scoreboard players set #bt stlboy.tmp 14
scoreboard players set #mr stlboy.tmp 100
execute store result score #mr stlboy.tmp run attribute @s irons_spellbooks:spell_resist get 100
execute if score #mr stlboy.tmp matches ..0 run scoreboard players set #mr stlboy.tmp 100
scoreboard players remove #mr stlboy.tmp 100
scoreboard players set #c25 stlboy.tmp 25
execute if score #mr stlboy.tmp matches 1.. run scoreboard players operation #mr stlboy.tmp /= #c25 stlboy.tmp
execute if score #mr stlboy.tmp matches 1.. run scoreboard players operation #bt stlboy.tmp += #mr stlboy.tmp
scoreboard players set #kr stlboy.tmp 0
execute store result score #kr stlboy.tmp run attribute @s minecraft:generic.knockback_resistance get 4
scoreboard players operation #bt stlboy.tmp += #kr stlboy.tmp
scoreboard players operation #of stlboy.tmp = #orbrk stlboy.tmp
scoreboard players set #c2 stlboy.tmp 2
scoreboard players operation #of stlboy.tmp /= #c2 stlboy.tmp
scoreboard players operation #of stlboy.tmp += #orbfo stlboy.tmp
scoreboard players operation #bt stlboy.tmp -= #of stlboy.tmp
execute if score #bt stlboy.tmp matches ..-1 run scoreboard players set #bt stlboy.tmp 0
execute if score #bt stlboy.tmp matches 12.. run scoreboard players set #bt stlboy.tmp 11
scoreboard players operation @s stlboy.res = #bt stlboy.tmp
