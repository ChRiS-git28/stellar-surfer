# Nappe de flammes solaires a la taille de la cible, toujours face a la camera comme le feu vanilla (en tant que la cible)
execute unless score @s stlboy.fid matches 1.. run scoreboard players add #fidn stlboy.tmp 1
execute unless score @s stlboy.fid matches 1.. run scoreboard players operation @s stlboy.fid = #fidn stlboy.tmp
# largeur x1,4 et hauteur x1,2 de la hitbox (sfw / sfh en quarts de bloc), centree sur la cible
execute store result storage stlboy:tmp flv.sx float 0.35 run scoreboard players get @s stlboy.sfw
execute store result storage stlboy:tmp flv.sy float 0.3 run scoreboard players get @s stlboy.sfh
execute store result storage stlboy:tmp flv.ty float 0.15 run scoreboard players get @s stlboy.sfh
function stlboy:cls/flare_show_m with storage stlboy:tmp flv
scoreboard players operation @e[type=minecraft:item_display,tag=stlboy_flnew] stlboy.fid = @s stlboy.fid
tag @e[type=minecraft:item_display,tag=stlboy_flnew] remove stlboy_flnew
