scoreboard players operation #own stlboy.tmp = @s stlboy.sid
# Boss tue : +250 de Poussiere pour le Surfer (en tant que le joueur)
execute if entity @s[tag=stlboy_surfer] run resource change @s stlboy:stardust_gain 250
execute if entity @s[tag=stlboy_surfer] run playsound stlboy:cosmic.on player @a ~ ~ ~ 1 1.5
execute if entity @s[tag=stlboy_surfer] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:30,lifetime_variation:7,size:0.16f,size_variation:0.048f,end_size:0.0f,color:"#FFE08AFF",end_color:"#7DFFB000",friction:0.95f,gravity:0.01f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.4 0.8 0.4 0.5 60
execute if entity @s[tag=stlboy_surfer] run title @s actionbar {"text":"✦ +250 Stardust ✦","color":"light_purple"}
advancement revoke @s only stlboy:dust/boss_warden
