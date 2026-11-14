particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle minecraft:flame ~ ~ ~ 1 1 1 0.15 40 force
playsound stlboy:cosmic.nova player @a[distance=..40] ~ ~ ~ 0.7 1.3
execute as @a[distance=..3.9,tag=stlboy_surfer,scores={stlboy.tr=2}] run function stlboy:trial/meteor_dmg
kill @s
