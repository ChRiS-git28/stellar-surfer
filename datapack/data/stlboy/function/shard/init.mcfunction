scoreboard players operation @s stlboy.own = #own stlboy.tmp
# Nouvel eclat (en tant que l'eclat, oriente comme le regard du Surfer)
tag @s add stlboy_shard
data merge entity @s {billboard:"center",brightness:{sky:15,block:15},teleport_duration:1,item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":7113}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
scoreboard players set @s stlboy.life 26
tp @s ~ ~ ~ ~ ~
