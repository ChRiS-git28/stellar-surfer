# Une pulsation du Souffle stellaire (en tant que le joueur)
tag @e[tag=stlboy_aim] add stlboy_hit
execute store result score #fly stlboy.tmp run resource get @s stlboy:flight_armed
function stlboy:breath/check_lens
function stlboy:breath/check_prism
execute if score #lens stlboy.tmp matches 1 at @e[tag=stlboy_orb_well,predicate=stlboy:owned] run particle minecraft:electric_spark ~ ~ ~ 0.8 0.8 0.8 0.08 20
execute if score #lens stlboy.tmp matches 1 at @e[tag=stlboy_orb_well,limit=1,predicate=stlboy:owned] run playsound stlboy:cosmic.resonate player @a ~ ~ ~ 0.7 1.5
execute if score #prism stlboy.tmp matches 1 at @e[tag=stlboy_orb_nova,predicate=stlboy:owned] run particle minecraft:electric_spark ~ ~ ~ 0.8 0.8 0.8 0.08 20
execute if score #prism stlboy.tmp matches 1 at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] run playsound stlboy:cosmic.resonate player @a ~ ~ ~ 0.7 1.9
execute unless entity @e[tag=stlboy_hit] run function stlboy:breath/miss
# cible principale (la plus proche) : etoiles, constellation, execution ; les autres ennemis traverses : degats seuls
tag @e[tag=stlboy_hit,sort=nearest,limit=1] add stlboy_prim
execute as @e[tag=stlboy_prim] at @s run function stlboy:breath/hit
execute as @e[tag=stlboy_hit,tag=!stlboy_prim] at @s run function stlboy:breath/hit_side
execute if score #prism stlboy.tmp matches 1 run function stlboy:breath/prism
# les cibles qui ne sont plus touchees perdent leur constellation ; la jauge affiche celle de la cible principale
execute as @e[tag=stlboy_bt,tag=!stlboy_hit,predicate=stlboy:cowned] at @s run function stlboy:breath/lose
scoreboard players set #ps stlboy.tmp 0
execute as @e[tag=stlboy_prim,limit=1] run scoreboard players operation #ps stlboy.tmp = @s stlboy.stars
scoreboard players operation @s stlboy.stars = #ps stlboy.tmp
tag @e[tag=stlboy_prim] remove stlboy_prim
tag @e[tag=stlboy_hit] remove stlboy_hit
# appartenance (multi-Surfer)
execute as @e[tag=stlboy_cst] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[tag=stlboy_vis] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
