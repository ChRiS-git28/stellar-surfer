# Forme de la cible (macro h/w) + identifiant + angle d'orbite courant
$data modify storage stlboy:breath cur set from storage stlboy:shapes h$(h)w$(w)
execute store result storage stlboy:breath cur.cid int 1 run scoreboard players get @s stlboy.cid
# les etoiles tournent en continu autour de la cible (4 degres par tick, decalage propre a chaque cible)
execute store result score #cang stlboy.tmp run time query gametime
scoreboard players set #c4 stlboy.tmp 4
scoreboard players operation #cang stlboy.tmp *= #c4 stlboy.tmp
scoreboard players operation #cof stlboy.tmp = @s stlboy.cid
scoreboard players set #c37 stlboy.tmp 37
scoreboard players operation #cof stlboy.tmp *= #c37 stlboy.tmp
scoreboard players operation #cang stlboy.tmp += #cof stlboy.tmp
scoreboard players set #c360 stlboy.tmp 360
scoreboard players operation #cang stlboy.tmp %= #c360 stlboy.tmp
execute store result storage stlboy:breath cur.ang float 1 run scoreboard players get #cang stlboy.tmp
