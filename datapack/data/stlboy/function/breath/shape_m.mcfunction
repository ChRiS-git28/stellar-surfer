# Forme de la cible (macro h/w) + identifiant + angle d'orbite courant
$data modify storage stlboy:breath cur set from storage stlboy:shapes h$(h)w$(w)
execute store result storage stlboy:breath cur.cid int 1 run scoreboard players get @s stlboy.cid
execute store result score #a stlboy.tmp run time query gametime
scoreboard players operation #a stlboy.tmp %= #180 stlboy.const
execute store result storage stlboy:breath cur.ang int 2 run scoreboard players get #a stlboy.tmp
