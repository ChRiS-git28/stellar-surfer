# 0,5 % des PV max par pulsation (plafond 8 coeurs) (en tant que le boss)
execute store result score #mh stlboy.tmp run attribute @s minecraft:generic.max_health get
scoreboard players operation #bp stlboy.tmp = #mh stlboy.tmp
scoreboard players set #c20 stlboy.tmp 20
scoreboard players operation #bp stlboy.tmp /= #c20 stlboy.tmp
execute if score #bp stlboy.tmp matches 80.. run scoreboard players set #bp stlboy.tmp 80
execute store result storage stlboy:tmp cd double 0.1 run scoreboard players get #bp stlboy.tmp
function stlboy:cosmic/hit with storage stlboy:tmp
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.5 0.8 0.5 0.3 12
