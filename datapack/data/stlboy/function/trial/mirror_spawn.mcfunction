execute store result score #a stlboy.tmp run random value 0..1
execute store result score #x stlboy.tmp run random value 6..10
execute if score #a stlboy.tmp matches 0 run scoreboard players operation #x stlboy.tmp *= #-1 stlboy.const
execute store result storage stlboy:tr x int 1 run scoreboard players get #x stlboy.tmp
execute store result storage stlboy:tr z int 1 run random value -9..9
function stlboy:trial/mirror_m with storage stlboy:tr
execute as @e[type=minecraft:fireball,tag=stlboy_tr_fb,tag=!stlboy_tr_set] at @s facing entity @a[tag=stlboy_surfer,scores={stlboy.tr=7},limit=1] eyes run tp @s ~ ~ ~ ~ ~
tag @e[type=minecraft:fireball,tag=stlboy_tr_fb,tag=!stlboy_tr_set] add stlboy_tr_set
playsound stlboy:cosmic.zap player @s ~ ~ ~ 0.6 0.8
