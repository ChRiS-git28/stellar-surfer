# En tant que l'affichage du sanctuaire (toutes les 10 ticks)
particle minecraft:end_rod ~ ~8 ~ 0.12 8 0.12 0 8 force
execute if entity @a[distance=..24] run particle minecraft:enchant ~ ~1.6 ~ 1.4 0.8 1.4 0.6 10
execute if entity @s[tag=stlboy_shr_ring] if entity @a[tag=stlboy_t_ring] run function stlboy:shrine/ruin
execute if entity @s[tag=stlboy_shr_meteor] if entity @a[tag=stlboy_t_meteor] run function stlboy:shrine/ruin
execute if entity @s[tag=stlboy_shr_const] if entity @a[tag=stlboy_t_const] run function stlboy:shrine/ruin
execute if entity @s[tag=stlboy_shr_motes] if entity @a[tag=stlboy_t_motes] run function stlboy:shrine/ruin
execute if entity @s[tag=stlboy_shr_echo] if entity @a[tag=stlboy_t_echo] run function stlboy:shrine/ruin
execute if entity @s[tag=stlboy_shr_mirror] if entity @a[tag=stlboy_t_mirror] run function stlboy:shrine/ruin
execute if entity @s[tag=stlboy_shr_horizon] if entity @a[tag=stlboy_t_horizon] run function stlboy:shrine/ruin
