# Arme lancee arretee net : elle retombe (et revient si elle a Loyaute)
data merge entity @s {Motion:[0.0,0.0,0.0],DealtDamage:1b}
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:8,lifetime_variation:2,size:0.1f,size_variation:0.03f,end_size:0.0f,color:"#9FE8FFFF",end_color:"#FFFFFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.1 0.1 0.1 0.05 6
