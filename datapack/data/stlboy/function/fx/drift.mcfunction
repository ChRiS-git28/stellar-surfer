# Un grain de lumiere a une distance au hasard le long du rayon (macro : r = longueur en quarts de bloc)
$execute store result storage stlboy:fx d double 0.25 run random value 8..$(r)
execute store result score #rn stlboy.tmp run random value 0..3
function stlboy:fx/drift_m with storage stlboy:fx
