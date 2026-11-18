# Execution (en tant que la cible)
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:4,lifetime_variation:1,size:1.4f,size_variation:0.42f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#C9A6FF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~1 ~ 0 0 0 0 1
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:8,lifetime_variation:2,size:2.2f,size_variation:0.66f,end_size:0.0f,color:"#9FE8FFDD",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 0)"} ~ ~1 ~ 0 0 0 0 1
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.4 0.8 0.4 0.6 60
playsound stlboy:cosmic.beam_burst player @a ~ ~ ~ 0.6 1.8
playsound stlboy:cosmic.awaken player @a ~ ~ ~ 0.4 2.0
execute if entity @s[type=player] run resource change @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy:stardust_gain 10
function stlboy:cosmic/hit {cd:1000}
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] run function stlboy:breath/reward
advancement grant @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] only stlboy:stardust/first_execution
