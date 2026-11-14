# Roulade nova : explosion d'etoiles (en tant que le joueur)
particle minecraft:end_rod ~ ~1 ~ 1.2 0.6 1.2 0.25 40
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.8 1.4
execute as @e[distance=..3.5,type=!minecraft:player,type=!#stlboy:no_wake,tag=!stlboy_orb,predicate=!stlboy:owner] run damage @s 5 stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
execute as @e[distance=..3.5,type=!minecraft:player,type=!#stlboy:no_wake,tag=!stlboy_orb,predicate=!stlboy:owner] run effect give @s minecraft:slowness 2 1 true
