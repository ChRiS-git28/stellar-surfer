# Un projectile est englouti (Trou de ver) ou brule (Souffle) (en tant que le projectile)
# les tirs des Surfers passent
execute on origin if entity @s[tag=stlboy_surfer] run return 0
# armes lancees (trident, armes enchantees...) : elles tombent comme apres avoir touche, rien n'est perdu
execute if entity @s[type=minecraft:trident] run return run function stlboy:orb/proj_drop
execute if data entity @s item.components."minecraft:enchantments" run return run function stlboy:orb/proj_drop
particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.3 8
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.04 2
kill @s
