# Memorise la direction de vol au debut du tir, avec la zone morte de flight (en tant que le joueur)
execute store result score #px stlboy.tmp run data get entity @s Pos[0] 100
execute store result score #py stlboy.tmp run data get entity @s Pos[1] 100
execute store result score #pz stlboy.tmp run data get entity @s Pos[2] 100
execute if entity @s[x_rotation=-25..25] rotated ~ 0 positioned ^ ^ ^10 run summon minecraft:marker ~ ~ ~ {Tags:["stlboy_dirv"]}
execute if entity @s[x_rotation=-90..-25.01] rotated ~ -14 positioned ^ ^ ^10 run summon minecraft:marker ~ ~ ~ {Tags:["stlboy_dirv"]}
execute if entity @s[x_rotation=25.01..90] rotated ~ 14 positioned ^ ^ ^10 run summon minecraft:marker ~ ~ ~ {Tags:["stlboy_dirv"]}
# appartenance (multi-Surfer) : posee tout de suite
execute as @e[tag=stlboy_dir] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute store result score #dx stlboy.tmp run data get entity @e[type=minecraft:marker,tag=stlboy_dirv,limit=1] Pos[0] 100
scoreboard players operation #dx stlboy.tmp -= #px stlboy.tmp
execute store result storage stlboy:lock x int 1 run scoreboard players get #dx stlboy.tmp
execute store result score #dy stlboy.tmp run data get entity @e[type=minecraft:marker,tag=stlboy_dirv,limit=1] Pos[1] 100
scoreboard players operation #dy stlboy.tmp -= #py stlboy.tmp
execute store result storage stlboy:lock y int 1 run scoreboard players get #dy stlboy.tmp
execute store result score #dz stlboy.tmp run data get entity @e[type=minecraft:marker,tag=stlboy_dirv,limit=1] Pos[2] 100
scoreboard players operation #dz stlboy.tmp -= #pz stlboy.tmp
execute store result storage stlboy:lock z int 1 run scoreboard players get #dz stlboy.tmp
kill @e[type=minecraft:marker,tag=stlboy_dirv]
function stlboy:breath/lock_m with storage stlboy:lock
