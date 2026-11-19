# Pluie de meteorites (en tant que le joueur) : arene fermee, rochers qui tombent de plus en plus serres
execute store success score #in stlboy.tmp at @e[type=minecraft:marker,tag=stlboy_tr_arena,limit=1,sort=nearest] if entity @s[distance=..22]
execute if score #in stlboy.tmp matches 0 run function stlboy:trial/meteor_wall
scoreboard players operation #m stlboy.tmp = @s stlboy.trt
scoreboard players set #mc stlboy.tmp 10
execute if score @s stlboy.trt matches 300.. run scoreboard players set #mc stlboy.tmp 6
execute if score @s stlboy.trt matches 600.. run scoreboard players set #mc stlboy.tmp 4
scoreboard players operation #m stlboy.tmp %= #mc stlboy.tmp
execute if score @s stlboy.trt matches 40..760 if score #m stlboy.tmp matches 0 at @s run function stlboy:trial/meteor_spawn
execute if score @s stlboy.trt matches 600..760 if score #m stlboy.tmp matches 2 at @s run function stlboy:trial/meteor_spawn
# les rochers avancent vers leur point d'impact (tous les morceaux visent le meme point)
execute as @e[type=minecraft:block_display,tag=stlboy_tr_rock] at @s rotated as @s run tp @s ^ ^ ^1.4
execute as @e[type=minecraft:block_display,tag=stlboy_tr_core] at @s run particle apoli:custom{texture:"stlboy:textures/particle/solar.png",lifetime:16,lifetime_variation:1,size:0.9f,size_variation:0.2f,end_size:0.3f,color:"#FFFFFFFF",end_color:"#FF3A1000",friction:0.9f,gravity:-0.01f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~0.5 ~ 0.35 0.35 0.35 0.02 2 force
execute as @e[type=minecraft:block_display,tag=stlboy_tr_core] at @s run particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:30,lifetime_variation:6,size:0.9f,size_variation:0.3f,end_size:1.6f,color:"#3A302ACC",end_color:"#1A141000",friction:0.95f,gravity:-0.004f,physics:false,emissive:false,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 1)"} ~ ~0.5 ~ 0.3 0.3 0.3 0.01 1 force
execute as @e[type=minecraft:marker,tag=stlboy_tr_met] at @s run function stlboy:trial/meteor_tick
# les bords de l'arene brillent
scoreboard players operation #m stlboy.tmp = @s stlboy.trt
scoreboard players set #mc stlboy.tmp 10
scoreboard players operation #m stlboy.tmp %= #mc stlboy.tmp
execute if score #m stlboy.tmp matches 0 at @e[type=minecraft:marker,tag=stlboy_tr_arena,limit=1,sort=nearest] run function stlboy:trial/meteor_ring
scoreboard players set #t stlboy.tmp 800
scoreboard players operation #t stlboy.tmp -= @s stlboy.trt
execute store result bossbar stlboy:trial value run scoreboard players get #t stlboy.tmp
execute store result storage stlboy:tr n int 1 run scoreboard players get @s stlboy.trh
function stlboy:trial/meteor_name with storage stlboy:tr
execute if score @s stlboy.trh matches 2.. run return run function stlboy:trial/fail
execute if score @s stlboy.trt matches 800.. run function stlboy:trial/win_meteor
