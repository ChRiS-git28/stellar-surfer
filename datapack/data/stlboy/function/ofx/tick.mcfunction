# Orbes : habillage, rotation, particules (en tant que le Surfer, chaque tick)
execute unless entity @e[tag=stlboy_ofx_has,limit=1,predicate=stlboy:owned] unless entity @e[tag=stlboy_orb,limit=1,predicate=stlboy:owned] unless entity @e[type=minecraft:marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] unless entity @e[type=minecraft:item_display,tag=stlboy_ofx,limit=1,predicate=stlboy:owned] run return 0
execute store result score #fq stlboy.tmp run resource get @s stlboy:hud_fxq
# 1) nouvelles orbes : on les habille
execute as @e[tag=stlboy_orb_well,tag=!stlboy_ofx_has,tag=!stlboy_dying,predicate=stlboy:owned] at @s run function stlboy:ofx/spawn_well
execute as @e[tag=stlboy_orb_nova,tag=!stlboy_ofx_has,tag=!stlboy_dying,predicate=stlboy:owned] at @s run function stlboy:ofx/spawn_nova
execute as @e[type=minecraft:marker,tag=stlboy_sn,tag=!stlboy_ofx_has,predicate=stlboy:owned] at @s run function stlboy:ofx/spawn_sn
# 2) orbe qui s'eteint : ses pieces s'effondrent
execute as @e[tag=stlboy_dying,tag=stlboy_ofx_has,tag=!stlboy_ofx_dead,predicate=stlboy:owned] run function stlboy:ofx/collapse
# 3) pieces orphelines (orbe disparue) : effondrement
tag @e[type=minecraft:item_display,tag=stlboy_ofx_ride,tag=!stlboy_ofx_die,predicate=stlboy:owned] add stlboy_ofx_orphan
execute as @e[tag=stlboy_orb,tag=stlboy_ofx_has,predicate=stlboy:owned] at @s run function stlboy:ofx/follow
execute as @e[type=minecraft:item_display,tag=stlboy_ofx_orphan] run function stlboy:ofx/die
execute unless entity @e[type=minecraft:marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] as @e[type=minecraft:item_display,tag=stlboy_ofx_sn,tag=!stlboy_ofx_die,predicate=stlboy:owned] run function stlboy:ofx/die
scoreboard players remove @e[type=minecraft:item_display,tag=stlboy_ofx_die] stlboy.life 1
kill @e[type=minecraft:item_display,tag=stlboy_ofx_die,scores={stlboy.life=..0}]
# 4) rotation : un pas toutes les 4 ticks, interpole par le client
execute store result score #gt stlboy.tmp run time query gametime
scoreboard players operation #g4 stlboy.tmp = #gt stlboy.tmp
scoreboard players set #c4 stlboy.tmp 4
scoreboard players operation #g4 stlboy.tmp %= #c4 stlboy.tmp
execute if score #g4 stlboy.tmp matches 0 run function stlboy:ofx/spin
# 5) particules
execute if score #fq stlboy.tmp matches 1.. as @e[tag=stlboy_orb_well,tag=!stlboy_dying,predicate=stlboy:owned] at @s run function stlboy:ofx/p_well
execute if score #fq stlboy.tmp matches 1.. as @e[tag=stlboy_orb_nova,tag=!stlboy_dying,predicate=stlboy:owned] at @s run function stlboy:ofx/p_nova
execute if score #fq stlboy.tmp matches 1.. as @e[type=minecraft:marker,tag=stlboy_sn,predicate=stlboy:owned] at @s run function stlboy:ofx/p_sn
# 6) particules custom Apoli
execute if score #fq stlboy.tmp matches 1.. as @e[tag=stlboy_orb_well,tag=!stlboy_dying,predicate=stlboy:owned] at @s run function stlboy:ofx/cp_well
execute if score #fq stlboy.tmp matches 1.. as @e[tag=stlboy_orb_nova,tag=!stlboy_dying,predicate=stlboy:owned] at @s run function stlboy:ofx/cp_nova
execute if score #fq stlboy.tmp matches 1.. as @e[type=minecraft:marker,tag=stlboy_sn,predicate=stlboy:owned] at @s run function stlboy:ofx/cp_sn
