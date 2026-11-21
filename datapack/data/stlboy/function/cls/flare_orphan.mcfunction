# Nappe de flammes dont la cible a disparu (mort, dechargement) : on l'eteint (en tant que la nappe)
scoreboard players operation #fid stlboy.tmp = @s stlboy.fid
execute unless entity @e[tag=stlboy_flare,predicate=stlboy:same_fid,limit=1] run kill @s
