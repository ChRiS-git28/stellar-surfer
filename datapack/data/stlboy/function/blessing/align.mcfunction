# L'anneau prend la couleur (palette de classe) et le nom du Surfer (en tant que le Surfer)
# sid = a qui l'allie est lie (propriete) ; c = couleur affichee
scoreboard players set @s stlboy.rr 0
execute store result storage stlboy:tmp al.s int 1 run scoreboard players get @s stlboy.sid
data modify storage stlboy:tmp al.c set value "#9FE8FF"
execute if score @s stlboy.pal matches 2 run data modify storage stlboy:tmp al.c set value "#FFC24A"
execute if score @s stlboy.pal matches 3 run data modify storage stlboy:tmp al.c set value "#4FA8FF"
execute if score @s stlboy.pal matches 4 run data modify storage stlboy:tmp al.c set value "#7DFFB0"
execute if score @s stlboy.pal matches 5 run data modify storage stlboy:tmp al.c set value "#FF5A3C"
function stlboy:blessing/align_m with storage stlboy:tmp al
playsound stlboy:cosmic.select player @a ~ ~ ~ 0.7 1.6
title @s actionbar {"translate":"stlboy.ring.aligned_msg","fallback":"✦ The ring now carries your light. Give it to an ally: your stars will spare them.","color":"gold"}
