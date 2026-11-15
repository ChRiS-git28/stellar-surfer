# Rayon (en tant que le joueur, chaque tick de tir)
# 1) le corps suit le regard (monte sur le joueur : mouvement fluide)
data modify storage stlboy:beam rot set from entity @s Rotation
execute on passengers if entity @s[tag=stlboy_bpass] run data modify entity @s Rotation set from storage stlboy:beam rot
tag @e[type=minecraft:item_display,tag=stlboy_bpass,predicate=stlboy:owned] add stlboy_bfree
execute on passengers run tag @s[tag=stlboy_bpass] remove stlboy_bfree
# (secours si le montage a echoue : on le replace aux yeux)
execute anchored eyes positioned ^ ^ ^ rotated as @s as @e[type=minecraft:item_display,tag=stlboy_bfree,predicate=stlboy:owned] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:item_display,tag=stlboy_bray,tag=stlboy_bfree,predicate=stlboy:owned] run data modify entity @s Rotation set from storage stlboy:beam rot
# le cube d'impact et l'onde de choc (poses sur le corps) s'orientent aussi sur le regard : ils suivent le curseur
execute as @e[type=minecraft:item_display,tag=stlboy_bimp,predicate=stlboy:owned] run data modify entity @s Rotation set from storage stlboy:beam rot
function stlboy:breath/sb/rotb
execute as @e[type=minecraft:item_display,tag=stlboy_bring,predicate=stlboy:owned] run data modify entity @s Rotation set from storage stlboy:beam rotb
# 2) longueur : impact a 0,3 + 0,25*#r blocs des yeux
function stlboy:breath/sb/len
scoreboard players operation #r stlboy.tmp = #vl stlboy.tmp
# invocation : le rayon jaillit de la main jusqu'a la cible en 4 ticks
scoreboard players add @s stlboy.bage 1
execute if score @s stlboy.bage matches ..3 run function stlboy:breath/sb/grow
execute if score #r stlboy.tmp matches ..3 run scoreboard players set #r stlboy.tmp 3
scoreboard players operation #q stlboy.tmp = #r stlboy.tmp
scoreboard players operation #q stlboy.tmp *= #5 stlboy.const
scoreboard players remove #q stlboy.tmp 7
execute store result storage stlboy:beam dz double 0.05 run scoreboard players get #q stlboy.tmp
scoreboard players operation #q stlboy.tmp = #r stlboy.tmp
scoreboard players add #q stlboy.tmp 3
execute store result storage stlboy:beam tz double 0.125 run scoreboard players get #q stlboy.tmp
scoreboard players operation #q stlboy.tmp = #r stlboy.tmp
scoreboard players operation #q stlboy.tmp *= #5 stlboy.const
execute store result storage stlboy:beam hz double 0.05 run scoreboard players get #q stlboy.tmp
# 3) largeur (w), impact (h) : Rang (#th), vol, pulsation de degats
execute store result score #pt stlboy.tmp run resource get @s stlboy:stellar_breath_pt
# largeur du modele (6/10 de bloc a l'echelle 1) = zone de touche : 1 / 1,6 / 2,2 blocs ; legere pulsation a chaque tir
data merge storage stlboy:beam {w:"1.67",a:"1.7",h:"1.3",oy:"-0.65",sf:"0.45"}
execute if score #th stlboy.tmp matches 1 run data merge storage stlboy:beam {w:"2.67",a:"1.9",h:"1.6",sf:"0.6"}
execute if score #th stlboy.tmp matches 2 run data merge storage stlboy:beam {w:"3.67",a:"2.1",h:"1.9",sf:"0.75"}
execute if score #pt stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 0 run data merge storage stlboy:beam {w:"1.75",h:"1.7"}
execute if score #pt stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 1 run data merge storage stlboy:beam {w:"2.80",h:"2.0"}
execute if score #pt stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 2 run data merge storage stlboy:beam {w:"3.85",h:"2.3"}
execute if score @s stlboy.fly matches 1 run data merge storage stlboy:beam {a:"2.6"}
# cible toute proche : l'eclat ne doit pas remplir l'ecran
execute if score #r stlboy.tmp matches ..14 run data modify storage stlboy:beam h set value "0.5"
# rayon vivant : la largeur respire et scintille (une image sur deux elle gonfle de ~9 %)
execute store result score #bp stlboy.tmp run time query gametime
scoreboard players operation #bp stlboy.tmp %= #4 stlboy.const
execute if score #bp stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 0 run data modify storage stlboy:beam w set value "1.82"
execute if score #bp stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 1 run data modify storage stlboy:beam w set value "2.9"
execute if score #bp stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 2 run data modify storage stlboy:beam w set value "3.98"
function stlboy:breath/beam_rot
function stlboy:breath/sb/body_m with storage stlboy:beam
function stlboy:breath/sb/fp
function stlboy:fx/beam
function stlboy:breath/sb/spark
function stlboy:breath/sb/helix
