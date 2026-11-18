# Eruption solaire (en tant que la cible brulante, chaque tick) : brule comme le feu, mais ignore l'invulnerabilite
# s'eteint dans l'eau, sous Resistance au feu, ou a la fin du compte
execute if block ~ ~ ~ minecraft:water run return run function stlboy:cls/flare_end
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{}}}} run return run function stlboy:cls/flare_end
scoreboard players remove @s stlboy.sfl 1
execute if score @s stlboy.sfl matches ..0 run return run function stlboy:cls/flare_end
# flammes solaires
particle apoli:custom{texture:"stlboy:textures/particle/solar.png",lifetime:14,lifetime_variation:4,size:0.42f,size_variation:0.14f,end_size:0.1f,color:"#FFFFFFFF",end_color:"#FF6A2A00",friction:0.9f,gravity:-0.02f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(-15, 15)",roll_speed:"rNor(0, 1)"} ~ ~0.5 ~ 0.25 0.45 0.25 0.01 2 force
execute if predicate stlboy:chance_half run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:16,lifetime_variation:5,size:0.09f,size_variation:0.03f,end_size:0.0f,color:"#FFE08AFF",end_color:"#FF3A1000",friction:0.95f,gravity:-0.012f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.8 ~ 0.3 0.5 0.3 0.02 1 force
# 1 degat cosmique par seconde (ignore l'invulnerabilite), attribue au Surfer qui l'a allumee
scoreboard players operation #fm stlboy.tmp = @s stlboy.sfl
scoreboard players operation #fm stlboy.tmp %= #20 stlboy.const
execute if score #fm stlboy.tmp matches 0 run scoreboard players operation #own stlboy.tmp = @s stlboy.sfo
execute if score #fm stlboy.tmp matches 0 run scoreboard players set #cfree stlboy.tmp 1
execute if score #fm stlboy.tmp matches 0 run function stlboy:cosmic/hit {cd:1}
