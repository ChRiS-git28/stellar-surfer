# Place le grain sur une sphere de 2,5 blocs, tourne vers le coeur (en tant que le grain)
tag @s remove stlboy_ofx_inspawn
function stlboy:fx/rot
execute rotated as @s run tp @s ^ ^ ^2.5
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=stlboy_orb,sort=nearest,limit=1,predicate=stlboy:owned]
scoreboard players set @s stlboy.life 13
data merge entity @s {teleport_duration:12}
