# Le Surfer fixe cette etoile (en tant que l'etoile) : 12 ticks de regard l'allument
scoreboard players add @s stlboy.life 1
execute at @s run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.15 0.15 0.15 0.01 1 force
execute if score @s stlboy.life matches 12.. run function stlboy:anchor/light
