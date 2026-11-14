# Cibles ejectees par le Trou blanc : detection du choc contre un mur (global, chaque tick)
execute as @e[tag=stlboy_flung] at @s run function stlboy:orb/crash_check
execute as @e[tag=stlboy_whit] at @s unless entity @e[tag=stlboy_orb_nova,distance=..7] run tag @s remove stlboy_whit
