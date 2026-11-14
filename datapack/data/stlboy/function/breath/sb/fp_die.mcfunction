# Disparition d'une piece de 1re personne (en tant que la piece, une fois)
tag @s add stlboy_fpd1
execute if entity @s[tag=stlboy_bfp] run data merge entity @s {start_interpolation:0,interpolation_duration:3}
execute if entity @s[tag=stlboy_bfp] run data modify entity @s transformation.scale[0] set value 0.0f
execute if entity @s[tag=stlboy_bfp] run data modify entity @s transformation.scale[1] set value 0.0f
execute if entity @s[tag=stlboy_bfpi] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{scale:[0f,0f,0f]}}
