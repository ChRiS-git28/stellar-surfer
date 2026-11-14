# Reglages du HUD (en tant que le joueur). Codes du /trigger stlboy.hud : voir hud/menu
execute store result score #sd stlboy.tmp run resource get @s stlboy:hud_side
execute if score @s stlboy.hud matches 10 if score #sd stlboy.tmp matches 0 run resource change @s stlboy:hud_lx -8
execute if score @s stlboy.hud matches 11 if score #sd stlboy.tmp matches 0 run resource change @s stlboy:hud_lx 8
execute if score @s stlboy.hud matches 10 if score #sd stlboy.tmp matches 1 run resource change @s stlboy:hud_lx 8
execute if score @s stlboy.hud matches 11 if score #sd stlboy.tmp matches 1 run resource change @s stlboy:hud_lx -8
execute if score @s stlboy.hud matches 12 run resource change @s stlboy:hud_ly -8
execute if score @s stlboy.hud matches 13 run resource change @s stlboy:hud_ly 8
execute if score @s stlboy.hud matches 14 run resource set @s stlboy:hud_lx 0
execute if score @s stlboy.hud matches 14 run resource set @s stlboy:hud_ly 0
execute if score @s stlboy.hud matches 15 run resource set @s stlboy:hud_side 0
execute if score @s stlboy.hud matches 16 run resource set @s stlboy:hud_side 1
execute if score @s stlboy.hud matches 15..16 run resource set @s stlboy:hud_lx 0
execute if score @s stlboy.hud matches 15..16 run resource set @s stlboy:hud_ly 0
execute if score @s stlboy.hud matches 20 run resource change @s stlboy:hud_rx -8
execute if score @s stlboy.hud matches 21 run resource change @s stlboy:hud_rx 8
execute if score @s stlboy.hud matches 22 run resource change @s stlboy:hud_ry -8
execute if score @s stlboy.hud matches 23 run resource change @s stlboy:hud_ry 8
execute if score @s stlboy.hud matches 24 run resource set @s stlboy:hud_rx 0
execute if score @s stlboy.hud matches 24 run resource set @s stlboy:hud_ry 0
execute store result score #a stlboy.tmp run resource get @s stlboy:hud_anim
execute if score @s stlboy.hud matches 30 if score #a stlboy.tmp matches 1 run resource set @s stlboy:hud_anim 0
execute if score @s stlboy.hud matches 30 if score #a stlboy.tmp matches 0 run resource set @s stlboy:hud_anim 1
execute store result score #fx stlboy.tmp run resource get @s stlboy:hud_fx
execute if score @s stlboy.hud matches 31 if score #fx stlboy.tmp matches 1 run resource set @s stlboy:hud_fx 0
execute if score @s stlboy.hud matches 31 if score #fx stlboy.tmp matches 0 run resource set @s stlboy:hud_fx 1
execute if score @s stlboy.hud matches 40 run resource set @s stlboy:hud_fxq 0
execute if score @s stlboy.hud matches 41 run resource set @s stlboy:hud_fxq 1
execute if score @s stlboy.hud matches 42 run resource set @s stlboy:hud_fxq 2
execute if score @s stlboy.hud matches 50 run function stlboy:hud/reset
execute if score @s stlboy.hud matches 10..50 run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.6 1.6
function stlboy:hud/menu
scoreboard players set @s stlboy.hud 0
