# Multi-Surfer (tag minecraft:tick, une fois par tick)
execute store result score #n stlboy.tmp if entity @a[tag=stlboy_surfer]
scoreboard players set #taxp stlboy.const 0
execute if score #n stlboy.tmp matches 2 run scoreboard players set #taxp stlboy.const 13
execute if score #n stlboy.tmp matches 3 run scoreboard players set #taxp stlboy.const 23
execute if score #n stlboy.tmp matches 4 run scoreboard players set #taxp stlboy.const 31
execute if score #n stlboy.tmp matches 5.. run scoreboard players set #taxp stlboy.const 38
# chaque Surfer recoit une couleur libre (ordre d'arrivee)
execute as @a[tag=stlboy_surfer] unless score @s stlboy.sid matches 1..5 run function stlboy:mp/assign
# la couleur suit la classe choisie
execute as @a[tag=stlboy_surfer] run function stlboy:mp/pal
# ce qu'un Surfer cree lui appartient (orbes : leur maitre ; Supernova : le Surfer le plus proche)
execute as @e[tag=stlboy_orb] unless score @s stlboy.own matches 1.. run function stlboy:mp/claim_orb
execute as @e[type=minecraft:marker,tag=stlboy_sn] unless score @s stlboy.own matches 1.. at @s run scoreboard players operation @s stlboy.own = @p[tag=stlboy_surfer] stlboy.sid
# une fois par seconde : morceaux de rayon dont le Surfer n'est plus la (deconnexion pendant un tir)
execute store result score #og stlboy.tmp run time query gametime
scoreboard players operation #og stlboy.tmp %= #c20 stlboy.const
execute if score #og stlboy.tmp matches 0 if entity @e[type=minecraft:item_display,tag=stlboy_beam,limit=1] run function stlboy:mp/orphans
# leurres du Pas fantome
execute as @e[type=minecraft:armor_stand,tag=stlboy_ghost_decoy] run function stlboy:skills/decoy_tick
# Trou blanc : premiers contacts et chocs contre les murs
function stlboy:orb/crash_tick
# marque stellaire des points de reapparition (seulement si quelqu'un est proche)
execute as @e[type=minecraft:marker,tag=stlboy_home] at @s if entity @a[distance=..48] run function stlboy:anchor/home_fx
