# Initialise la position memorisee et l'inertie d'une orbe (execute en tant que l'orbe)
execute store result score @s stlboy.ox run data get entity @s Pos[0] 100
execute store result score @s stlboy.oy run data get entity @s Pos[1] 100
execute store result score @s stlboy.oz run data get entity @s Pos[2] 100
scoreboard players set @s stlboy.dx 0
scoreboard players set @s stlboy.dy 0
scoreboard players set @s stlboy.dz 0
scoreboard players set @s stlboy.life 200
tag @s add stlboy_free
data merge entity @s {NoGravity:1b,Silent:1b}
attribute @s minecraft:generic.gravity base set 0
scoreboard players operation @s stlboy.dl = @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.lvl
execute store result score @s stlboy.rk run resource get @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy:stardust_rank
# indice de puissance de l orbe = Rang x 3 (0-20) : portee, force, taille, cadence
scoreboard players operation @s stlboy.lvl = @s stlboy.rk
scoreboard players set #c3 stlboy.tmp 3
scoreboard players operation @s stlboy.lvl *= #c3 stlboy.tmp
execute if score @s stlboy.lvl matches 21.. run scoreboard players set @s stlboy.lvl 20
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_linger] run scoreboard players set @s stlboy.life 400
# Le Trou blanc tient deux fois plus longtemps que le Trou noir (20 s, 40 s avec l'Ecoulement)
execute if entity @s[tag=stlboy_orb_nova] run scoreboard players operation @s stlboy.life += @s stlboy.life
execute if entity @s[tag=stlboy_orb_well] run advancement grant @a[tag=stlboy_surfer,predicate=stlboy:owner] only stlboy:stardust/first_singularity
execute if entity @s[tag=stlboy_orb_nova] run advancement grant @a[tag=stlboy_surfer,predicate=stlboy:owner] only stlboy:stardust/first_nova
