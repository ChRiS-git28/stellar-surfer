# Mise en mouvement d'un grain (en tant que le grain, une seule fois)
tag @s remove stlboy_mready
execute if entity @s[tag=stlboy_mring] run return run data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{scale:[2.6f,2.6f,2.6f]}}
execute if entity @s[tag=stlboy_min] rotated as @s run tp @s ^ ^ ^2.3
execute if entity @s[tag=stlboy_min5] rotated as @s run tp @s ^ ^ ^4.8
execute if entity @s[tag=stlboy_min] run return run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[0.05f,0.05f,0.05f]}}
execute if entity @s[tag=stlboy_min5] run return run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[0.05f,0.05f,0.05f]}}
execute if entity @s[tag=stlboy_mspark] rotated as @s run tp @s ^ ^ ^1.3
execute if entity @s[tag=stlboy_mspark] run return run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0f,0f,0f]}}
execute rotated as @s run tp @s ^ ^ ^0.55
data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{scale:[0f,0f,0f]}}
