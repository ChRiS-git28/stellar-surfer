particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode player @a[distance=..30] ~ ~ ~ 0.6 1.4
execute as @a[tag=stlboy_surfer,scores={stlboy.tr=7},distance=..3,limit=1] run function stlboy:trial/mirror_dmg
kill @s
