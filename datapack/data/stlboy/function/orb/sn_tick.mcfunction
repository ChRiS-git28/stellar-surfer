# Champ de Supernova : fixe, ralentit, aveugle et bloque les teleportations (en tant que le joueur)
scoreboard players remove @e[type=marker,tag=stlboy_sn,predicate=stlboy:owned] stlboy.life 1
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] as @e[distance=..10,tag=!stlboy_sn_in,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!marker,type=!#stlboy:well_loot,type=!#stlboy:homing_projectiles] run function stlboy:orb/sn_enter
execute as @e[tag=stlboy_sn_in] run function stlboy:orb/sn_guard
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run kill @e[type=ender_pearl,distance=..11]
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] as @e[tag=stlboy_sn_in,distance=10.5..] run function stlboy:orb/sn_leave
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run function stlboy:fx/sn
execute as @e[tag=stlboy_sn_in] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#FFE7A8FF",end_color:"#FF6AD500",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.3 0.3 0.3 0.05 1 force
# pulsations (perdues au patch p74, restaurees)
scoreboard players add @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt 1
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 0 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 20.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 1 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 20.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 2 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 19.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 3 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 18.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 4 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 17.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 5 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 17.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 6 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 16.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 7 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 15.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 8 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 14.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 9 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 14.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 10 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 13.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 11 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 12.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 12 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 11.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 13 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 11.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 14 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 10.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 15 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 9.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 16 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 8.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 17 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 8.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 18 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 7.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 19 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 6.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 20 if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt matches 5.. run function stlboy:orb/sn_pulse
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.life matches ..0 run function stlboy:orb/sn_end
# --- Pont d'Einstein-Rosen : entrer dans une bouche = ressortir par l'autre (en tant que le Surfer) ---
execute if score @s stlboy.wj matches 1.. run scoreboard players remove @s stlboy.wj 1
# plonger dans le coeur EN SURF : effondrement (le temps restant du champ devient une implosion), tu ressors par l'autre bouche
execute store result score #wa stlboy.tmp run resource get @s stlboy:flight_armed
execute unless score @s stlboy.wj matches 1.. if score #wa stlboy.tmp matches 1 if entity @e[type=minecraft:marker,tag=stlboy_sn,predicate=stlboy:owned,distance=..2.2] run return run function stlboy:orb/wh_collapse
execute unless score @s stlboy.wj matches 1.. if entity @e[type=minecraft:marker,tag=stlboy_sn,predicate=stlboy:owned,distance=..1.8] run return run function stlboy:orb/wh_cross {from:"stlboy_sn",to:"stlboy_sn_exit"}
execute unless score @s stlboy.wj matches 1.. if entity @e[type=minecraft:marker,tag=stlboy_sn_exit,predicate=stlboy:owned,distance=..1.8] run return run function stlboy:orb/wh_cross {from:"stlboy_sn_exit",to:"stlboy_sn"}
execute at @e[type=minecraft:marker,tag=stlboy_sn_exit,predicate=stlboy:owned,limit=1] run function stlboy:orb/wh_mouth
