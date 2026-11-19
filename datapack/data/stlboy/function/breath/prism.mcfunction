# Prisme : deux rayons secondaires partent de la Nova a +-20 deg (en tant que le joueur)
scoreboard players set #rs stlboy.tmp 0
execute at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] rotated as @s rotated ~20 ~ positioned ^ ^ ^0.6 run function stlboy:breath/prism_step
scoreboard players set #rs stlboy.tmp 0
execute at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] rotated as @s rotated ~-20 ~ positioned ^ ^ ^0.6 run function stlboy:breath/prism_step
execute if score @s stlboy.lvl matches 0 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.45}
execute if score @s stlboy.lvl matches 1 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.473}
execute if score @s stlboy.lvl matches 2 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.495}
execute if score @s stlboy.lvl matches 3 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.517}
execute if score @s stlboy.lvl matches 4 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.54}
execute if score @s stlboy.lvl matches 5 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.562}
execute if score @s stlboy.lvl matches 6 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.585}
execute if score @s stlboy.lvl matches 7 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.608}
execute if score @s stlboy.lvl matches 8 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.63}
execute if score @s stlboy.lvl matches 9 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.652}
execute if score @s stlboy.lvl matches 10 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.675}
execute if score @s stlboy.lvl matches 11 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.698}
execute if score @s stlboy.lvl matches 12 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.72}
execute if score @s stlboy.lvl matches 13 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.742}
execute if score @s stlboy.lvl matches 14 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.765}
execute if score @s stlboy.lvl matches 15 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.788}
execute if score @s stlboy.lvl matches 16 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.81}
execute if score @s stlboy.lvl matches 17 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.833}
execute if score @s stlboy.lvl matches 18 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.855}
execute if score @s stlboy.lvl matches 19 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.877}
execute if score @s stlboy.lvl matches 20 as @e[tag=stlboy_prism_hit] run function stlboy:cosmic/hit {cd:0.9}
tag @e[tag=stlboy_prism_hit] remove stlboy_prism_hit
execute at @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.2 ~ 0.2 0.2 0.2 0.05 4
