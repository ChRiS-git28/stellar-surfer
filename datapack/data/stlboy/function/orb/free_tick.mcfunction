# Orbe relachee : derive avec son elan, s'arrete contre les blocs, s'eteint au bout de 10 s (en tant que l'orbe)
execute if entity @s[tag=stlboy_dying] run return 0
execute unless entity @a[tag=stlboy_surfer,predicate=stlboy:owner,distance=..32] run return run function stlboy:orb/expire
# Deflexion (competence) : le Trou blanc renvoie les projectiles qui y entrent
execute if entity @s[tag=stlboy_orb_nova] if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_stun,limit=1] at @s as @e[type=#minecraft:impact_projectiles,distance=..4.5,tag=!stlboy_defl] run function stlboy:orb/deflect
execute if entity @s[tag=!stlboy_free] run return 0
scoreboard players operation @s stlboy.ox += @s stlboy.dx
scoreboard players operation @s stlboy.oy += @s stlboy.dy
scoreboard players operation @s stlboy.oz += @s stlboy.dz
# toujours replacee a sa position memorisee : ni le dragon ni les explosions ne la poussent
function stlboy:orb/move
execute at @s unless block ~ ~ ~ #stlboy:orb_passable run function stlboy:orb/stop
scoreboard players operation @s stlboy.dx *= #9 stlboy.const
scoreboard players operation @s stlboy.dx /= #10 stlboy.const
scoreboard players operation @s stlboy.dy *= #9 stlboy.const
scoreboard players operation @s stlboy.dy /= #10 stlboy.const
scoreboard players operation @s stlboy.dz *= #9 stlboy.const
scoreboard players operation @s stlboy.dz /= #10 stlboy.const
scoreboard players remove @s stlboy.life 1
execute if score @s stlboy.life matches ..0 run function stlboy:orb/expire
execute if entity @s[tag=stlboy_ofx_has] at @s run function stlboy:ofx/follow
