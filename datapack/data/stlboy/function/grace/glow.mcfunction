# Lueur d'etoile (en tant que le Surfer, toutes les 10 ticks) : une lumiere douce le suit quand la Grace est basse
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
execute store result score #gg stlboy.tmp run resource get @s stlboy:grace_gauge
execute if score #gg stlboy.tmp matches -19.. run return run function stlboy:grace/glow_off
execute if entity @s[gamemode=spectator] run return run function stlboy:grace/glow_off
# deja allumee ici : rien a faire
execute anchored eyes positioned ^ ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:marker,tag=stlboy_glow,predicate=stlboy:owned,distance=..0.1] run return 0
function stlboy:grace/glow_off
execute anchored eyes positioned ^ ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:air run function stlboy:grace/glow_on
