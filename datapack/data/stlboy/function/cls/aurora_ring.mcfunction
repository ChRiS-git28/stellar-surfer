# Anneau d'aurore : les allies a 8 blocs regenerent (en tant que le Surfer, toutes les 2 s)
execute as @a[distance=0.01..8] run effect give @s minecraft:regeneration 3 0 true
execute at @a[distance=0.01..8] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:16,lifetime_variation:4,size:0.25f,size_variation:0.1f,end_size:0.0f,color:"#7DFFB0EE",end_color:"#FF6AD500",friction:0.88f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~1 ~ 0.4 0.6 0.4 0.02 4 force
