# Extinction du rayon, etape 1 (en tant qu'une piece)
tag @s add stlboy_bd1
data merge entity @s {start_interpolation:0,interpolation_duration:2}
execute if entity @s[tag=stlboy_bray] run data modify entity @s transformation.scale[0] set value 0.35f
execute if entity @s[tag=stlboy_bray] run data modify entity @s transformation.scale[1] set value 0.35f
execute unless entity @s[tag=stlboy_bray] run data merge entity @s {transformation:{scale:[0.35f,0.35f,0.35f]}}
