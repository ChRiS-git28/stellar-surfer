particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.15 30 force
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast player @a[distance=..30] ~ ~ ~ 0.8 1.4
execute as @a[tag=stlboy_surfer,scores={stlboy.tr=7}] run scoreboard players add @s stlboy.trr 1
kill @s
