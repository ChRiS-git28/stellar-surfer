# Memoires d'Aster : annonces + auras (toutes les 20 ticks, en tant que le joueur)
execute unless entity @s[tag=stlboy_surfer] run return 0
execute if entity @s[tag=stlboy_t_ring,tag=!stlboy_m_ring] run function stlboy:memory/awake_ring
execute if entity @s[tag=stlboy_t_meteor,tag=!stlboy_m_meteor] run function stlboy:memory/awake_meteor
execute if entity @s[tag=stlboy_t_constellation,tag=!stlboy_m_constellation] run function stlboy:memory/awake_constellation
execute if entity @s[tag=stlboy_t_motes,tag=!stlboy_m_motes] run function stlboy:memory/awake_motes
execute if entity @s[tag=stlboy_t_mirror,tag=!stlboy_m_mirror] run function stlboy:memory/awake_mirror
execute if entity @s[tag=stlboy_t_echo,tag=!stlboy_m_echo] run function stlboy:memory/awake_echo
execute if entity @s[tag=stlboy_t_horizon,tag=!stlboy_m_horizon] run function stlboy:memory/awake_horizon
execute if entity @s[tag=stlboy_t_wither,tag=!stlboy_m_wither] run function stlboy:memory/awake_wither
execute if entity @s[tag=stlboy_t_supernova,tag=!stlboy_m_supernova] run function stlboy:memory/awake_supernova
execute if entity @s[tag=stlboy_t_dragon,tag=!stlboy_m_dragon] run function stlboy:memory/awake_dragon
execute if entity @s[tag=stlboy_t_constellation] run effect give @s minecraft:night_vision 25 0 true
execute if entity @s[tag=stlboy_t_echo] run effect clear @s minecraft:darkness
# Vision nocturne debloquee = immunite a l'Obscurite (aussi bloquee a la source par grace.json dark_ward)
execute if entity @s[tag=stlboy_t_constellation] run effect clear @s minecraft:darkness
execute if entity @s[tag=stlboy_t_wither] run effect clear @s minecraft:wither
execute if entity @s[tag=stlboy_t_supernova] run effect give @s minecraft:fire_resistance 5 0 true
# passif : tu brilles comme une etoile, les monstres te reperent de loin
execute as @e[type=#stlboy:glare,distance=..48,tag=!stlboy_glared] run function stlboy:aura/glare
# resistances des Memoires (une seule fois)
execute unless entity @s[tag=stlboy_guard] run function stlboy:memory/grant_guard
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
# Rang 10 : s'ouvre quand les dix Memoires sont eveillees
execute if entity @s[tag=stlboy_t_ring,tag=stlboy_t_meteor,tag=stlboy_t_constellation,tag=stlboy_t_motes,tag=stlboy_t_mirror,tag=stlboy_t_echo,tag=stlboy_t_horizon,tag=stlboy_t_wither,tag=stlboy_t_supernova,tag=stlboy_t_dragon] unless entity @s[tag=stlboy_lock10] run function stlboy:memory/all_ten
