# A la position du marqueur de l'autel (macro : id), en tant que le Surfer
$function stlboy:shrine/place_$(id)
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~2 ~ 0.6 1.2 0.6 0.08 40
kill @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..1.5]
