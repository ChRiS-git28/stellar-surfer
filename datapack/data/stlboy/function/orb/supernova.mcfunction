# Fusion Nova + Singularite : explosion persistante et fixe (en tant que le joueur)
# Duree = vie restante de la Singularite + vie restante de la Nova
scoreboard players operation #d stlboy.tmp = @e[tag=stlboy_orb_well,limit=1,predicate=stlboy:owned] stlboy.life
scoreboard players operation #d stlboy.tmp += @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] stlboy.life
execute if entity @s[tag=stlboy_sk_bridge] run scoreboard players operation #dh stlboy.tmp = #d stlboy.tmp
execute if entity @s[tag=stlboy_sk_bridge] run scoreboard players operation #dh stlboy.tmp /= #c2 stlboy.const
execute if entity @s[tag=stlboy_sk_bridge] run scoreboard players operation #d stlboy.tmp += #dh stlboy.tmp
execute at @e[tag=stlboy_orb_well,limit=1,predicate=stlboy:owned] run summon marker ~ ~ ~ {Tags:["stlboy_sn"]}
execute as @e[tag=stlboy_sn] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
scoreboard players operation @e[type=marker,tag=stlboy_sn,predicate=stlboy:owned] stlboy.life = #d stlboy.tmp
scoreboard players operation @e[type=marker,tag=stlboy_sn,predicate=stlboy:owned] stlboy.lvl = @s stlboy.lvl
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#FFF2C2FF",end_color:"#FF7A3C00",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
# --- suite perdue au patch p74, restauree ---
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run playsound stlboy:cosmic.wh_beam_burst player @a ~ ~ ~ 1.5 0.7
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run playsound stlboy:cosmic.wh_awaken player @a ~ ~ ~ 1 1.4
kill @e[tag=stlboy_orb,predicate=stlboy:owned]
resource set @s stlboy:graviton_well_cd 400
resource set @s stlboy:graviton_nova_cd 800
# Recharge de la Supernova = 2 x la duree du champ, memorisee pour la fin
scoreboard players operation #c stlboy.tmp = #d stlboy.tmp
scoreboard players operation #c stlboy.tmp += #d stlboy.tmp
execute if score #c stlboy.tmp matches ..0 run scoreboard players set #c stlboy.tmp 1
scoreboard players operation @s stlboy.sntot = #c stlboy.tmp
# La recharge ne demarre qu'a la disparition du champ (voir sn_end)
resource set @s stlboy:cosmic_fx_sn_flag 1
scoreboard players set @s stlboy.wj 20
title @s actionbar {"translate":"stlboy.wormhole.open","fallback":"✦ W O R M H O L E ✦  a second mouth opened at your feet","color":"light_purple"}
function stlboy:trial/give {id:"supernova"}
