playsound stlboy:cosmic.chime player @a[distance=..8] ~ ~ ~ 1 1.5
playsound stlboy:cosmic.resonate player @a[distance=..8] ~ ~ ~ 1 1.2
particle minecraft:firework ~ ~ ~ 0.3 0.3 0.3 0.2 20 force
scoreboard players add @a[distance=..2.4,tag=stlboy_surfer,scores={stlboy.tr=1},limit=1,sort=nearest] stlboy.trh 1
kill @s
