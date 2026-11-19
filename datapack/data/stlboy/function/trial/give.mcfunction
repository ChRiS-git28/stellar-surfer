# Accorde une epreuve (macro : id) en tant que le joueur : une seule fois, +1 point
$execute if entity @s[tag=stlboy_t_$(id)] run return 0
$tag @s add stlboy_t_$(id)
$advancement grant @s only stlboy:chronicle/$(id)
function stlboy:skills/point
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.5 0.8 0.5 0.1 30
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
