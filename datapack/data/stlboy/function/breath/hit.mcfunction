# Pulsation qui touche (en tant que la cible)
# Dissonance : la constellation d'un autre Surfer protege cette cible des tiennes (degats seuls)
execute if entity @s[tag=stlboy_bt,predicate=!stlboy:cowned] run return run function stlboy:breath/hit_other
# pause de 0,25 s apres une constellation : la pulsation blesse mais n'ajoute pas d'etoile
execute if score @s stlboy.cwait matches 1.. run return run function stlboy:breath/hit_wait
function stlboy:breath/stars_pre
function stlboy:breath/pdmg_calc
function stlboy:breath/pdmg
function stlboy:breath/stars_post
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_heat,limit=1] run data merge entity @s {Fire:40s}
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_heat2,limit=1] run data merge entity @s {Fire:80s}
