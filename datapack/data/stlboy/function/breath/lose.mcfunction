# Cette cible n'est plus touchee : sa constellation s'eteint (en tant que la cible)
execute if score @s stlboy.stars matches 1.. run playsound stlboy:cosmic.shard player @a ~ ~ ~ 0.5 0.8
scoreboard players operation #o stlboy.tmp = @s stlboy.cid
execute as @e[type=minecraft:item_display,tag=stlboy_cst,tag=!stlboy_cdone,predicate=stlboy:owned] if score @s stlboy.cid = #o stlboy.tmp at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0 0 0 0.02 1
execute as @e[type=minecraft:item_display,tag=stlboy_cst,tag=!stlboy_cdone,predicate=stlboy:owned] if score @s stlboy.cid = #o stlboy.tmp run kill @s
scoreboard players set @s stlboy.stars 0
scoreboard players set @s stlboy.cwait 0
scoreboard players set @s stlboy.cid 0
scoreboard players set @s stlboy.cown 0
tag @s remove stlboy_bt
