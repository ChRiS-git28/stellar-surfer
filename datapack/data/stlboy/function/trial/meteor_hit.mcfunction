# Impact (en tant que le marqueur) : le rocher eclate en feu et fumee ; touche les joueurs proches (sans casser le terrain)
scoreboard players operation #mid stlboy.tmp = @s stlboy.mid
execute as @e[type=minecraft:block_display,tag=stlboy_tr_rock] if score @s stlboy.mid = #mid stlboy.tmp run kill @s
particle apoli:custom{texture:"stlboy:textures/particle/solar.png",lifetime:16,lifetime_variation:1,size:0.9f,size_variation:0.2f,end_size:0.3f,color:"#FFFFFFFF",end_color:"#FF3A1000",friction:0.9f,gravity:-0.01f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~0.6 ~ 1.4 0.6 1.4 0.05 18 force
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:30,lifetime_variation:6,size:0.9f,size_variation:0.3f,end_size:1.6f,color:"#3A302ACC",end_color:"#1A141000",friction:0.95f,gravity:-0.004f,physics:false,emissive:false,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 1)"} ~ ~0.8 ~ 1.6 0.8 1.6 0.02 10 force
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:6,lifetime_variation:1,size:4.0f,size_variation:0.5f,end_size:0.0f,color:"#FFF0C0FF",end_color:"#FF6A2A00",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 0)",roll_speed:"rNor(0, 0)"} ~ ~0.8 ~ 0 0 0 0 1 force
particle minecraft:block{block_state:"minecraft:magma_block"} ~ ~0.5 ~ 0.8 0.4 0.8 0.3 30 force
particle minecraft:block{block_state:"minecraft:blackstone"} ~ ~0.5 ~ 0.8 0.4 0.8 0.3 30 force
playsound minecraft:entity.generic.explode player @a[distance=..48] ~ ~ ~ 1.0 0.8
playsound minecraft:block.basalt.break player @a[distance=..32] ~ ~ ~ 1.0 0.6
execute as @a[distance=..3.9,tag=stlboy_surfer,scores={stlboy.tr=2}] run function stlboy:trial/meteor_dmg
kill @s
