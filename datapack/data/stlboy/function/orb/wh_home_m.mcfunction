# (macro x y z bx bz d) voyage vers le point de reapparition, toutes dimensions.
# Le chunk d'arrivee est charge juste le temps du voyage (5 s) puis relache : aucun chunk n'est garde charge en permanence.
$execute in $(d) run forceload add $(bx) $(bz)
$execute in $(d) run tp @s $(x) $(y) $(z)
$data modify storage stlboy:tmp whfl append value {d:"$(d)",bx:$(bx),bz:$(bz)}
schedule function stlboy:orb/wh_unload 100t append
