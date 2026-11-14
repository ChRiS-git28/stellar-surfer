# Vie des grains de lumiere (en tant que le Surfer, chaque tick)
function stlboy:ofx/tick
execute store result score #fxg stlboy.tmp run time query gametime
execute if score #fxg stlboy.tmp = #fxlast stlboy.const run return 0
scoreboard players operation #fxlast stlboy.const = #fxg stlboy.tmp
execute unless entity @e[type=minecraft:item_display,tag=stlboy_mote,limit=1] run return 0
# 1) les grains apparus au tick precedent s'envolent (le client interpole : fluide a tout framerate)
execute as @e[type=minecraft:item_display,tag=stlboy_mready] at @s run function stlboy:fx/launch
tag @e[type=minecraft:item_display,tag=stlboy_mnew] add stlboy_mready
tag @e[type=minecraft:item_display,tag=stlboy_mnew] remove stlboy_mnew
# 2) l'onde de choc se replie avant de disparaitre
execute as @e[type=minecraft:item_display,tag=stlboy_mring,scores={stlboy.life=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{scale:[0f,0f,0f]}}
scoreboard players remove @e[type=minecraft:item_display,tag=stlboy_mote] stlboy.life 1
kill @e[type=minecraft:item_display,tag=stlboy_mote,scores={stlboy.life=..0}]
