# Forme de la cible (macro h/w) + identifiant + angle d'orbite courant
$data modify storage stlboy:breath cur set from storage stlboy:shapes h$(h)w$(w)
execute store result storage stlboy:breath cur.cid int 1 run scoreboard players get @s stlboy.cid
# le cadre fait face au tireur (lacet du proprietaire)
execute store result storage stlboy:breath cur.ang float 1 run data get entity @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] Rotation[0]
