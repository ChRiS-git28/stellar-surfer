# (macro hz, fhz) en tant que le joueur : etincelles au point vise + onde de choc posee sur le rayon (elle suit le curseur)
$execute anchored eyes positioned ^ ^-0.65 ^$(hz) run function stlboy:fx/impact
# l'onde regarde le tireur (demi-tour du regard, voir breath/sb/rotb) : decalage -hz dans ce repere = point vise
$execute anchored eyes positioned ^ ^ ^ run summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_mote","stlboy_mring","stlboy_mnew","stlboy_bring"],item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":7114}},item_display:"none",brightness:{sky:15,block:15},teleport_duration:1,view_range:3f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.65f,$(fhz)f],scale:[0.3f,0.3f,0.3f]}}
scoreboard players operation @e[type=minecraft:item_display,tag=stlboy_bring,tag=stlboy_mnew] stlboy.own = #own stlboy.tmp
scoreboard players set @e[type=minecraft:item_display,tag=stlboy_bring,tag=stlboy_mnew] stlboy.life 9
execute as @e[type=minecraft:item_display,tag=stlboy_bring,tag=stlboy_mnew] run data modify entity @s Rotation set from storage stlboy:beam rotb
execute as @e[type=minecraft:item_display,tag=stlboy_bring,tag=stlboy_mnew] run ride @s mount @e[type=minecraft:item_display,tag=stlboy_bray,predicate=stlboy:owned,limit=1]
