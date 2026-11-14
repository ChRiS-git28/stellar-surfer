# Grain de Supernova : part de 5 blocs vers le centre (en tant que le grain)
tag @s remove stlboy_ofx_insn
function stlboy:fx/rot
execute rotated as @s run tp @s ^ ^ ^5
execute at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:marker,tag=stlboy_sn,sort=nearest,limit=1,predicate=stlboy:owned]
scoreboard players set @s stlboy.life 13
data merge entity @s {teleport_duration:12}
