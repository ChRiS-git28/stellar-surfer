# Angle courant du coeur du rayon : 1 tour en 9 s (en tant que le joueur)
execute store result score #g stlboy.tmp run time query gametime
scoreboard players set #c180 stlboy.tmp 180
scoreboard players operation #g stlboy.tmp %= #c180 stlboy.tmp
execute store result storage stlboy:beam i int 1 run scoreboard players get #g stlboy.tmp
function stlboy:breath/beam_rot_m with storage stlboy:beam
