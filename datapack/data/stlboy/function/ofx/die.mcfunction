# Une piece implose puis disparait (en tant que la piece)
tag @s add stlboy_ofx_die
tag @s remove stlboy_ofx_orphan
scoreboard players set @s stlboy.life 9
data merge entity @s {start_interpolation:0,interpolation_duration:8,transformation:{scale:[0f,0f,0f]}}
