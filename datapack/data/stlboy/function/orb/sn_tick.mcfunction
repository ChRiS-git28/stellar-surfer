# Champ de Supernova : fixe, ralentit, aveugle et bloque les teleportations (en tant que le joueur)
scoreboard players remove @e[type=marker,tag=stlboy_sn,predicate=stlboy:owned] stlboy.life 1
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] as @e[distance=..10,tag=!stlboy_sn_in,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,type=!marker,type=!#stlboy:well_loot,type=!#stlboy:homing_projectiles] run function stlboy:orb/sn_enter
execute as @e[tag=stlboy_sn_in] run function stlboy:orb/sn_guard
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run kill @e[type=ender_pearl,distance=..11]
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] as @e[tag=stlboy_sn_in,distance=10.5..] run function stlboy:orb/sn_leave
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run function stlboy:fx/sn
execute as @e[tag=stlboy_sn_in] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#FFE7A8FF",end_color:"#FF6AD500",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.3 0.3 0.3 0.05 1 force
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
# --- Rang 10 : le coeur du Trou de ver ramene chez toi, avec tes allies (en tant que le Surfer) ---
execute if score @s stlboy.wj matches 1.. run scoreboard players remove @s stlboy.wj 1
execute store result score #wr stlboy.tmp run resource get @s stlboy:stardust_rank
execute unless score @s stlboy.wj matches 1.. if score #wr stlboy.tmp matches 10.. if data entity @s SpawnX if entity @e[type=minecraft:marker,tag=stlboy_sn,predicate=stlboy:owned,distance=..1.8] run return run function stlboy:orb/wh_try
# Horizon des evenements (competence) : le champ avale les projectiles
execute if entity @s[tag=stlboy_sk_wvoid] at @e[type=minecraft:marker,tag=stlboy_sn,predicate=stlboy:owned,limit=1] as @e[type=#stlboy:void_projectiles,distance=..10,type=!minecraft:ender_pearl] run function stlboy:orb/void_proj
