# Pulsation pendant la pause entre deux constellations (en tant que la cible) : degats seuls
function stlboy:breath/pdmg_calc
function stlboy:breath/pdmg
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_heat,limit=1] run data merge entity @s {Fire:40s}
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_heat2,limit=1] run data merge entity @s {Fire:80s}
