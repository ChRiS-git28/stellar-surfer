# Extinction du rayon, etape 2 (en tant qu'une piece)
tag @s remove stlboy_bd1
tag @s add stlboy_bd2
data merge entity @s {start_interpolation:0,interpolation_duration:2}
execute if entity @s[tag=stlboy_bray] run data modify entity @s transformation.scale[0] set value 0.1f
execute if entity @s[tag=stlboy_bray] run data modify entity @s transformation.scale[1] set value 0.1f
execute unless entity @s[tag=stlboy_bray] run data merge entity @s {transformation:{scale:[0.1f,0.1f,0.1f]}}
