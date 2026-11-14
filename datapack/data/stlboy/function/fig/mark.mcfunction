# Marqueur pour l'avatar Figura (en tant que le Surfer, toutes les secondes) :
# effet cache water_breathing infini dont le niveau = Rang + 16 x (palette - 1).
# L'avatar le lit (Rang = niveau % 16, palette = niveau / 16 + 1) et le partage aux autres joueurs par ping.
scoreboard objectives add stlboy.fmk dummy
execute store result score #fm stlboy.tmp run resource get @s stlboy:stardust_rank
scoreboard players set #fs stlboy.tmp 1
execute if score @s stlboy.pal matches 1..5 run scoreboard players operation #fs stlboy.tmp = @s stlboy.pal
scoreboard players remove #fs stlboy.tmp 1
scoreboard players set #c16 stlboy.tmp 16
scoreboard players operation #fs stlboy.tmp *= #c16 stlboy.tmp
scoreboard players operation #fm stlboy.tmp += #fs stlboy.tmp
execute unless score @s stlboy.fmk = #fm stlboy.tmp run effect clear @s minecraft:water_breathing
scoreboard players operation @s stlboy.fmk = #fm stlboy.tmp
execute store result storage stlboy:fig r int 1 run scoreboard players get #fm stlboy.tmp
function stlboy:fig/mark_m with storage stlboy:fig
