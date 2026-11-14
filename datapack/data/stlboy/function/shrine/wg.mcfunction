# Un Autel dechu est proche (en tant que le Surfer)
execute store result score #ok stlboy.tmp run function stlboy:shrine/choose
execute if score #ok stlboy.tmp matches 0 if entity @s[tag=stlboy_t_ring,tag=stlboy_t_meteor,tag=stlboy_t_constellation,tag=stlboy_t_motes,tag=stlboy_t_echo,tag=stlboy_t_mirror,tag=stlboy_t_horizon] if entity @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..6,limit=1] run return run function stlboy:shrine/wg_echo
execute if score #ok stlboy.tmp matches 0 run return run function stlboy:shrine/wg_quiet
execute at @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..32,sort=nearest,limit=1] run function stlboy:shrine/wg_place with storage stlboy:shr
