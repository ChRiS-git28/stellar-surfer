# En tant que l'entite interaction, a sa position
data remove entity @s interaction
tag @s add stlboy_shr_cur
execute as @a[tag=stlboy_surfer,distance=..6,limit=1,sort=nearest] run function stlboy:shrine/touch
tag @s remove stlboy_shr_cur
