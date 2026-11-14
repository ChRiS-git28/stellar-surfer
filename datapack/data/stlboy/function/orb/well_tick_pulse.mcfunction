# Cadence de pulsation de l'orbe well : 1/s au Niveau 0, 4/s au Niveau 20 (en tant que l'orbe)
function stlboy:orb/res_scan
# Objets aspires jusqu'au coeur de la Singularite : teleportes au Surfer
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_absorb] as @e[type=#stlboy:well_loot,distance=..1.3] at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#C9A6FFFF",end_color:"#3FD8FF00",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.1 0.1 0.1 0.05 2 force
# --- suite perdue au patch p74, restauree ---
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_absorb] as @e[type=#stlboy:well_loot,distance=..1.3] run data merge entity @s {PickupDelay:0s}
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_absorb] as @e[type=#stlboy:well_loot,distance=..1.3] run tp @s @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
scoreboard players add @s stlboy.pt 1
execute if score @s stlboy.lvl matches 0 if score @s stlboy.pt matches 20.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 1 if score @s stlboy.pt matches 20.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 2 if score @s stlboy.pt matches 19.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 3 if score @s stlboy.pt matches 18.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 4 if score @s stlboy.pt matches 17.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 5 if score @s stlboy.pt matches 17.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 6 if score @s stlboy.pt matches 16.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 7 if score @s stlboy.pt matches 15.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 8 if score @s stlboy.pt matches 14.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 9 if score @s stlboy.pt matches 14.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 10 if score @s stlboy.pt matches 13.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 11 if score @s stlboy.pt matches 12.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 12 if score @s stlboy.pt matches 11.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 13 if score @s stlboy.pt matches 11.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 14 if score @s stlboy.pt matches 10.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 15 if score @s stlboy.pt matches 9.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 16 if score @s stlboy.pt matches 8.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 17 if score @s stlboy.pt matches 8.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 18 if score @s stlboy.pt matches 7.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 19 if score @s stlboy.pt matches 6.. run return run function stlboy:orb/well_pulse
execute if score @s stlboy.lvl matches 20 if score @s stlboy.pt matches 5.. run return run function stlboy:orb/well_pulse
