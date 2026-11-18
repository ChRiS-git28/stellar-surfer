# Le rituel est rompu : les etoiles s'eteignent (en tant que le Surfer)
execute if entity @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned] run title @s actionbar {"text":"· ","color":"dark_gray","extra":[{"translate":"stlboy.anchor.fade","fallback":"The stars fall silent.","color":"dark_gray","italic":true}]}
execute at @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned] run particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:20,lifetime_variation:5,size:0.2f,size_variation:0.06f,end_size:0.0f,color:"#4A3A70AA",end_color:"#1A102A00",friction:0.92f,gravity:-0.003f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.1 0.1 0.1 0.01 3 force
kill @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned]
resource set @s stlboy:star_anchor_charge 0
