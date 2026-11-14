# Deflexion : un projectile entre dans le Trou blanc et repart d'ou il vient, plus vite (en tant que le projectile)
# les tirs du Surfer lui-meme ne sont pas renvoyes
tag @s add stlboy_defl
execute on origin if entity @s[predicate=stlboy:owner] run return 0
execute store result score #mx stlboy.tmp run data get entity @s Motion[0] 1000
execute store result score #my stlboy.tmp run data get entity @s Motion[1] 1000
execute store result score #mz stlboy.tmp run data get entity @s Motion[2] 1000
execute store result entity @s Motion[0] double -0.0013 run scoreboard players get #mx stlboy.tmp
execute store result entity @s Motion[1] double -0.0013 run scoreboard players get #my stlboy.tmp
execute store result entity @s Motion[2] double -0.0013 run scoreboard players get #mz stlboy.tmp
# le projectile renvoye t'appartient : il touche son ancien tireur en ton nom
data modify entity @s Owner set from entity @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] UUID
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.12 8
particle minecraft:flash ~ ~ ~ 0 0 0 0 1
playsound minecraft:item.shield.block neutral @a ~ ~ ~ 0.7 1.6
playsound stlboy:cosmic.resonate neutral @a ~ ~ ~ 0.5 1.9
