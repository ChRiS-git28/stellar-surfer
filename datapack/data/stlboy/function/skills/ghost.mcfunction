# Pas fantome (en tant que le joueur) : tu disparais, et ta presence avec toi
effect give @s minecraft:invisibility 3 0 true
effect give @s minecraft:speed 3 1 true
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.1 25
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1.8
# image remanente : un leurre invisible reste la ou tu etais (3 s)
kill @e[type=minecraft:armor_stand,tag=stlboy_ghost_decoy,distance=..3]
summon minecraft:armor_stand ~ ~ ~ {Tags:["stlboy_ghost_decoy","stlboy_gd_new"],Invisible:1b,Silent:1b,NoGravity:1b,Invulnerable:0b,DisabledSlots:4144959}
scoreboard players set @e[type=minecraft:armor_stand,tag=stlboy_gd_new] stlboy.life 60
particle minecraft:dust_color_transition{from_color:[0.62,0.91,1.0],scale:1.2,to_color:[0.69,0.49,1.0]} ~ ~1 ~ 0.25 0.5 0.25 0 18
# les monstres a 24 blocs perdent ta trace : ils se retournent contre le leurre
execute as @e[type=#stlboy:glare,distance=..24] run damage @s 0.01 minecraft:generic by @e[type=minecraft:armor_stand,tag=stlboy_gd_new,limit=1]
# les creatures neutres en colere (loups, endermen, golems, piglins...) oublient leur rancune
execute as @e[type=!minecraft:player,distance=..24] if data entity @s AngryAt run data merge entity @s {AngerTime:0}
execute as @e[type=!minecraft:player,distance=..24] if data entity @s AngryAt run data remove entity @s AngryAt
tag @e[type=minecraft:armor_stand,tag=stlboy_gd_new] remove stlboy_gd_new
