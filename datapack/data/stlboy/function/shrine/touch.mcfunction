# En tant que le Surfer qui touche un sanctuaire : lance l'epreuve correspondante (memes conditions qu'avant)
function stlboy:trial/setup
execute if score @s stlboy.tr matches 1.. run return run title @s actionbar {"text":"✦ A trial is already underway ✦","color":"gray"}
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
execute if entity @e[tag=stlboy_shr_cur,tag=stlboy_shr_ring,limit=1] run return run function stlboy:trial/try_ring
execute if entity @e[tag=stlboy_shr_cur,tag=stlboy_shr_meteor,limit=1] run return run function stlboy:trial/try_meteor
execute if entity @e[tag=stlboy_shr_cur,tag=stlboy_shr_const,limit=1] run return run function stlboy:trial/try_const
execute if entity @e[tag=stlboy_shr_cur,tag=stlboy_shr_motes,limit=1] run return run function stlboy:trial/try_motes
execute if entity @e[tag=stlboy_shr_cur,tag=stlboy_shr_echo,limit=1] run return run function stlboy:trial/try_echo
execute if entity @e[tag=stlboy_shr_cur,tag=stlboy_shr_mirror,limit=1] run return run function stlboy:trial/try_mirror
execute if entity @e[tag=stlboy_shr_cur,tag=stlboy_shr_horizon,limit=1] run return run function stlboy:trial/try_horizon
