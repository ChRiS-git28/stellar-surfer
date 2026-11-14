# Ennemi traverse par le rayon (pas la cible principale) : 70 % des degats, mais sa propre constellation (en tant que la cible)
particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0.02 2
# Dissonance : la constellation d'un autre Surfer protege cette cible des tiennes (degats seuls)
execute if entity @s[tag=stlboy_bt,predicate=!stlboy:cowned] run return run function stlboy:breath/hit_other
function stlboy:breath/stars_pre
function stlboy:breath/pdmg_calc
function stlboy:breath/pdmg_side
function stlboy:breath/stars_post
