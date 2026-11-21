# Marqueur pour l'avatar Figura (en tant que le Surfer, toutes les secondes) :
# effet cache water_breathing infini dont le niveau = Rang + 11 x (palette - 1) + 64 x orbe sortie + 128 x bit de lancer d'eclat.
# L'avatar le lit (r = niveau % 64 : Rang = r % 11, palette = r / 11 + 1) et le partage aux autres joueurs par ping.
scoreboard objectives add stlboy.fmk dummy
execute store result score #fm stlboy.tmp run resource get @s stlboy:stardust_rank
scoreboard players set #fs stlboy.tmp 1
execute if score @s stlboy.pal matches 1..5 run scoreboard players operation #fs stlboy.tmp = @s stlboy.pal
scoreboard players remove #fs stlboy.tmp 1
scoreboard players set #c11 stlboy.tmp 11
scoreboard players operation #fs stlboy.tmp *= #c11 stlboy.tmp
scoreboard players operation #fm stlboy.tmp += #fs stlboy.tmp
execute if score @s stlboy.shc matches 1 run scoreboard players add #fm stlboy.tmp 128
# orbe (Trou noir / Trou blanc) sortie : l'avatar ne joue la pose de lancer que si une orbe existe vraiment (pas en recharge)
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
execute if entity @e[tag=stlboy_orb,predicate=stlboy:owned,limit=1] run scoreboard players add #fm stlboy.tmp 64
execute unless score @s stlboy.fmk = #fm stlboy.tmp run effect clear @s minecraft:water_breathing
scoreboard players operation @s stlboy.fmk = #fm stlboy.tmp
execute store result storage stlboy:fig r int 1 run scoreboard players get #fm stlboy.tmp
function stlboy:fig/mark_m with storage stlboy:fig
