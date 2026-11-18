# Etait rapide (> 0,25 bloc/tick) : a-t-elle perdu 2/3 de sa vitesse contre un bloc ? (en tant que la cible)
scoreboard players operation #lim stlboy.tmp = @s stlboy.fv
scoreboard players operation #lim stlboy.tmp /= #9 stlboy.const
execute if score #mx stlboy.tmp > #lim stlboy.tmp run return 0
scoreboard players set #wall stlboy.tmp 0
execute unless block ~0.7 ~0.5 ~ #stlboy:orb_passable run scoreboard players set #wall stlboy.tmp 1
execute unless block ~-0.7 ~0.5 ~ #stlboy:orb_passable run scoreboard players set #wall stlboy.tmp 1
execute unless block ~ ~0.5 ~0.7 #stlboy:orb_passable run scoreboard players set #wall stlboy.tmp 1
execute unless block ~ ~0.5 ~-0.7 #stlboy:orb_passable run scoreboard players set #wall stlboy.tmp 1
execute unless block ~ ~1.3 ~ #stlboy:orb_passable run scoreboard players set #wall stlboy.tmp 1
execute if score #wall stlboy.tmp matches 0 run return 0
scoreboard players operation #own stlboy.tmp = @s stlboy.own
scoreboard players set #cd stlboy.tmp 2
execute if score @s stlboy.fv matches 160000.. run scoreboard players set #cd stlboy.tmp 4
execute if score @s stlboy.fv matches 360000.. run scoreboard players set #cd stlboy.tmp 6
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_crash2,limit=1] run function stlboy:orb/crash_amp
execute store result storage stlboy:tmp crash.d int 1 run scoreboard players get #cd stlboy.tmp
function stlboy:orb/crash_hit with storage stlboy:tmp crash
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:8,lifetime_variation:2,size:1.6f,size_variation:0.48f,end_size:0.0f,color:"#F0E8FFEE",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~0.6 ~ 0.2 0.2 0.2 0 1
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:12,lifetime_variation:4,size:0.4f,size_variation:0.1f,end_size:0.0f,color:"#FFF4E8FF",end_color:"#FF5A3C00",friction:0.85f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~0.8 ~ 0.3 0.4 0.3 0.15 10 force
playsound minecraft:entity.generic.big_fall hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 0.5 1.4
function stlboy:orb/crash_end
