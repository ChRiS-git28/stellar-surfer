# Pas fantome (en tant que le joueur) : tu disparais, et ta presence avec toi
effect give @s minecraft:invisibility 3 0 true
effect give @s minecraft:speed 3 1 true
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.3 0.6 0.3 0.1 25
playsound stlboy:cosmic.pulse player @a ~ ~ ~ 0.5 1.8
# image remanente : un leurre invisible reste la ou tu etais (3 s)
kill @e[type=minecraft:armor_stand,tag=stlboy_ghost_decoy,distance=..3]
summon minecraft:armor_stand ~ ~ ~ {Tags:["stlboy_ghost_decoy","stlboy_gd_new"],Invisible:1b,Silent:1b,NoGravity:1b,Invulnerable:0b,DisabledSlots:4144959}
scoreboard players set @e[type=minecraft:armor_stand,tag=stlboy_gd_new] stlboy.life 60
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:18,lifetime_variation:4,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#9EE8FFFF",end_color:"#B07DFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.25 0.5 0.25 0 18
# les monstres a 24 blocs perdent ta trace : ils se retournent contre le leurre
execute as @e[type=#stlboy:glare,distance=..24] run damage @s 0.01 minecraft:generic by @e[type=minecraft:armor_stand,tag=stlboy_gd_new,limit=1]
# les creatures neutres en colere (loups, endermen, golems, piglins...) oublient leur rancune
execute as @e[type=!minecraft:player,distance=..24] if data entity @s AngryAt run data merge entity @s {AngerTime:0}
execute as @e[type=!minecraft:player,distance=..24] if data entity @s AngryAt run data remove entity @s AngryAt
tag @e[type=minecraft:armor_stand,tag=stlboy_gd_new] remove stlboy_gd_new
