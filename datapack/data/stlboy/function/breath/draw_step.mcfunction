# Un pas de 0,25 bloc. Les ennemis touches sont marques ; le rayon s'arrete apres #pierce ennemis ou au premier bloc
scoreboard players add #rs stlboy.tmp 1
# Rideau de lumiere (competence) : les projectiles qui traversent le rayon brulent
execute if score #rward stlboy.tmp matches 1 as @e[type=#stlboy:homing_projectiles,distance=..1.2,type=!minecraft:ender_pearl] run function stlboy:orb/void_proj
execute if score #th stlboy.tmp matches 0 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,predicate=!stlboy:owner,predicate=!stlboy:ally,tag=!stlboy_orb,type=!minecraft:marker,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:interaction] unless entity @s[type=minecraft:player,gamemode=spectator] run tag @s add stlboy_aim
execute if score #th stlboy.tmp matches 1 positioned ~-0.8 ~-0.8 ~-0.8 as @e[dx=0.6,dy=0.6,dz=0.6,predicate=!stlboy:owner,predicate=!stlboy:ally,tag=!stlboy_orb,type=!minecraft:marker,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:interaction] unless entity @s[type=minecraft:player,gamemode=spectator] run tag @s add stlboy_aim
execute if score #th stlboy.tmp matches 2 positioned ~-1.1 ~-1.1 ~-1.1 as @e[dx=1.2,dy=1.2,dz=1.2,predicate=!stlboy:owner,predicate=!stlboy:ally,tag=!stlboy_orb,type=!minecraft:marker,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:interaction] unless entity @s[type=minecraft:player,gamemode=spectator] run tag @s add stlboy_aim
execute store result score #n stlboy.tmp if entity @e[tag=stlboy_aim]
execute if score #n stlboy.tmp >= #pierce stlboy.tmp run return run function stlboy:breath/impact
execute if score #rs stlboy.tmp >= #max stlboy.tmp run return run function stlboy:breath/impact
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #stlboy:orb_passable run return run function stlboy:breath/draw_step
function stlboy:breath/impact
