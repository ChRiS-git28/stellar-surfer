# Corps (tourne lentement sur son axe) et eclat d'impact (macro)
$data merge entity @e[type=minecraft:item_display,tag=stlboy_bray,limit=1,predicate=stlboy:owned] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[0f,$(oy)f,$(tz)f],left_rotation:[0f,0f,$(qz)f,$(qw)f],scale:[$(w)f,$(w)f,$(dz)f],right_rotation:[0f,0f,0f,1f]}}
$execute anchored eyes positioned ^ ^-0.65 ^$(hz) as @e[type=minecraft:item_display,tag=stlboy_bimp,limit=1,predicate=stlboy:owned] run tp @s ~ ~ ~
$data merge entity @e[type=minecraft:item_display,tag=stlboy_bimp,limit=1,predicate=stlboy:owned] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,$(qz)f,0f,$(qw)f],right_rotation:[0.3826834f,0f,0f,0.9238795f],scale:[$(h)f,$(h)f,$(h)f]}}
