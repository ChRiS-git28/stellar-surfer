# Eruption solaire (macro t = secondes ; en tant que la cible, #own = Surfer proprietaire)
# Remplace le feu vanilla : garde la plus longue duree, retient qui l'a allumee.
$scoreboard players set #fl stlboy.tmp $(t)
scoreboard players operation #fl stlboy.tmp *= #20 stlboy.const
execute unless score @s stlboy.sfl >= #fl stlboy.tmp run scoreboard players operation @s stlboy.sfl = #fl stlboy.tmp
scoreboard players operation @s stlboy.sfo = #own stlboy.tmp
tag @s add stlboy_flare
