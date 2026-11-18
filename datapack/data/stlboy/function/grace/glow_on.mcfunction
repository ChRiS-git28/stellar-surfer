# (en tant que le Surfer, a la case de ses yeux)
setblock ~ ~ ~ minecraft:light[level=11]
summon minecraft:marker ~ ~ ~ {Tags:["stlboy_glow","stlboy_glow_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=stlboy_glow_new] stlboy.own = @s stlboy.sid
tag @e[type=minecraft:marker,tag=stlboy_glow_new] remove stlboy_glow_new
