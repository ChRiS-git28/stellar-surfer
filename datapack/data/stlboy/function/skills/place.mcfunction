# Pose le bloc tenu en main principale dans le vide, la ou tu regardes (en tant que le joueur)
execute unless entity @s[tag=stlboy_sk_anchor] run return 0
data remove storage stlboy:tmp pid
data modify storage stlboy:tmp pid set from entity @s SelectedItem.id
execute unless data storage stlboy:tmp pid run return 0
scoreboard players set #pd stlboy.tmp 0
execute anchored eyes positioned ^ ^ ^1.5 run function stlboy:skills/place_step
