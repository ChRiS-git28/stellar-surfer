# Animation de la marque (en tant que la marque, une image sur deux) : couleur de la palette du proprietaire
execute store result score #hg stlboy.tmp run time query gametime
scoreboard players operation #hp stlboy.tmp = #hg stlboy.tmp
scoreboard players operation #hp stlboy.tmp %= #c2 stlboy.const
execute unless score #hp stlboy.tmp matches 0 run return 0
tp @s ~ ~ ~ ~9 ~
execute if score @s stlboy.pal matches 2 run return run function stlboy:anchor/home_fx_m {c:"#FFC24A"}
execute if score @s stlboy.pal matches 3 run return run function stlboy:anchor/home_fx_m {c:"#4FA8FF"}
execute if score @s stlboy.pal matches 4 run return run function stlboy:anchor/home_fx_m {c:"#7DFFB0"}
execute if score @s stlboy.pal matches 5 run return run function stlboy:anchor/home_fx_m {c:"#FF5A3C"}
function stlboy:anchor/home_fx_m {c:"#9FE8FF"}
