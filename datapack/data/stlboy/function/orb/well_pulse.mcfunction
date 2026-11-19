# Pulsation de la Singularite (en tant que l'orbe)
scoreboard players set @s stlboy.pt 0
execute store result score #r stlboy.tmp run random value 1..3
execute if score #r stlboy.tmp matches 1 run playsound stlboy:cosmic.hum neutral @a ~ ~ ~ 0.5 0.6
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#C9A6FFFF",end_color:"#3FD8FF00",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.05 0.05 0.05 0.05 7 force
# --- suite perdue au patch p74, restauree ---
execute if entity @s[tag=stlboy_orb_weak] run return 0
# portee/cadence = RANG (indice de puissance), degats = POUSSIERE
function stlboy:orb/iv
function stlboy:orb/well_dps
scoreboard players operation #dmg stlboy.tmp *= #iv stlboy.tmp
scoreboard players set #20 stlboy.tmp 20
scoreboard players operation #dmg stlboy.tmp /= #20 stlboy.tmp
execute store result storage stlboy:tmp dmg double 0.01 run scoreboard players get #dmg stlboy.tmp
scoreboard players set #2 stlboy.tmp 2
scoreboard players operation #pm stlboy.tmp = @s stlboy.dl
scoreboard players operation #pm stlboy.tmp /= #2 stlboy.tmp
scoreboard players add #pm stlboy.tmp 3
scoreboard players set #10 stlboy.tmp 10
scoreboard players operation #pm stlboy.tmp *= #10 stlboy.tmp
scoreboard players operation #pm stlboy.tmp *= #iv stlboy.tmp
scoreboard players operation #pm stlboy.tmp /= #20 stlboy.tmp
execute if score @s stlboy.lvl matches 0..6 unless entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_dense,limit=1] as @e[distance=..1.8,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,type=!marker,type=!#stlboy:well_loot,type=!#c:bosses] run function stlboy:orb/hit_both
execute if score @s stlboy.lvl matches 0..6 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_dense,limit=1] as @e[distance=..2.52,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,type=!marker,type=!#stlboy:well_loot,type=!#c:bosses] run function stlboy:orb/hit_both
execute if score @s stlboy.lvl matches 7..13 unless entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_dense,limit=1] as @e[distance=..2.34,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,type=!marker,type=!#stlboy:well_loot,type=!#c:bosses] run function stlboy:orb/hit_both
execute if score @s stlboy.lvl matches 7..13 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_dense,limit=1] as @e[distance=..3.28,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,type=!marker,type=!#stlboy:well_loot,type=!#c:bosses] run function stlboy:orb/hit_both
execute if score @s stlboy.lvl matches 14..20 unless entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_dense,limit=1] as @e[distance=..2.88,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,type=!marker,type=!#stlboy:well_loot,type=!#c:bosses] run function stlboy:orb/hit_both
execute if score @s stlboy.lvl matches 14..20 if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_dense,limit=1] as @e[distance=..4.03,tag=!stlboy_orb,predicate=!stlboy:owner,predicate=!stlboy:ally,type=!#stlboy:friendly,type=!marker,type=!#stlboy:well_loot,type=!#c:bosses] run function stlboy:orb/hit_both
# Horizon Bane : les boss pres du coeur de la Singularite subissent des degats en % de leurs PV max
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_bane,limit=1] as @e[type=#c:bosses,distance=..5] run function stlboy:orb/boss_hit
