# Relache le plus ancien chunk charge pour un voyage par le Trou de ver (planifie 5 s apres l'arrivee)
execute unless data storage stlboy:tmp whfl[0] run return 0
data modify storage stlboy:tmp whf set from storage stlboy:tmp whfl[0]
data remove storage stlboy:tmp whfl[0]
function stlboy:orb/wh_unload_m with storage stlboy:tmp whf
