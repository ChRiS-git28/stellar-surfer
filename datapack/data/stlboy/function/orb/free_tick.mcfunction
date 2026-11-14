# Orbe relachee : derive avec son elan, s'arrete contre les blocs, s'eteint au bout de 10 s (en tant que l'orbe)
execute if entity @s[tag=stlboy_dying] run return 0
execute unless entity @a[tag=stlboy_surfer,predicate=stlboy:owner,distance=..32] run return run function stlboy:orb/expire
execute if entity @s[tag=!stlboy_free] run return 0
scoreboard players operation @s stlboy.ox += @s stlboy.dx
scoreboard players operation @s stlboy.oy += @s stlboy.dy
scoreboard players operation @s stlboy.oz += @s stlboy.dz
execute unless score @s stlboy.dx matches 0 run function stlboy:orb/move
execute if score @s stlboy.dx matches 0 unless score @s stlboy.dy matches 0 run function stlboy:orb/move
execute if score @s stlboy.dx matches 0 if score @s stlboy.dy matches 0 unless score @s stlboy.dz matches 0 run function stlboy:orb/move
execute at @s unless block ~ ~ ~ #stlboy:orb_passable run function stlboy:orb/stop
scoreboard players operation @s stlboy.dx *= #9 stlboy.const
scoreboard players operation @s stlboy.dx /= #10 stlboy.const
scoreboard players operation @s stlboy.dy *= #9 stlboy.const
scoreboard players operation @s stlboy.dy /= #10 stlboy.const
scoreboard players operation @s stlboy.dz *= #9 stlboy.const
scoreboard players operation @s stlboy.dz /= #10 stlboy.const
scoreboard players remove @s stlboy.life 1
execute if score @s stlboy.life matches ..0 run function stlboy:orb/expire
