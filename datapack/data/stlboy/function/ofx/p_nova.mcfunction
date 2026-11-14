# Nova : eruptions d'etincelles vers l'exterieur (en tant que l'orbe)
execute store result score #rn stlboy.tmp run random value 0..3
execute if score #fq stlboy.tmp matches 1 unless score #rn stlboy.tmp matches 0 run return 0
summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_mote","stlboy_mnew","stlboy_mspark"],item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":7115}},billboard:"center",item_display:"none",brightness:{sky:15,block:15},teleport_duration:9,view_range:3f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute if score #rn stlboy.tmp matches 0..1 run summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_mote","stlboy_mnew","stlboy_mspark"],item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":7113}},billboard:"center",item_display:"none",brightness:{sky:15,block:15},teleport_duration:9,view_range:3f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
scoreboard players set @e[type=minecraft:item_display,tag=stlboy_mspark,tag=stlboy_mnew] stlboy.life 10
execute as @e[type=minecraft:item_display,tag=stlboy_mnew,tag=!stlboy_mrot] run function stlboy:fx/rot
