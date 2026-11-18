# Passif de classe des Eclats d'etoile (en tant que la cible touchee ; #own = Surfer proprietaire)
scoreboard players set #scl stlboy.tmp 0
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_cls_nebula,limit=1] run scoreboard players set #scl stlboy.tmp 1
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_cls_sun,limit=1] run scoreboard players set #scl stlboy.tmp 2
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_cls_neptune,limit=1] run scoreboard players set #scl stlboy.tmp 3
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_cls_aurora,limit=1] run scoreboard players set #scl stlboy.tmp 4
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_cls_betelgeuse,limit=1] run scoreboard players set #scl stlboy.tmp 5
execute if score #scl stlboy.tmp matches 0 run return 0
# Nebuleuse : poussiere voilee (Lenteur I 2 s, Surbrillance 3 s)
execute if score #scl stlboy.tmp matches 1 run effect give @s minecraft:slowness 2 0
execute if score #scl stlboy.tmp matches 1 run effect give @s minecraft:glowing 3 0
execute if score #scl stlboy.tmp matches 1 run particle apoli:custom{texture:"stlboy:textures/particle/neb_star.png",lifetime:14,lifetime_variation:4,size:0.18f,size_variation:0.06f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#B07CFF00",friction:0.88f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 5)"} ~ ~0.8 ~ 0.2 0.3 0.2 0.12 10 force
# Soleil : eclat ardent (Eruption solaire 2 s)
execute if score #scl stlboy.tmp matches 2 run function stlboy:cls/flare {t:2}
execute if score #scl stlboy.tmp matches 2 run particle apoli:custom{texture:"stlboy:textures/particle/sun_ember.png",lifetime:14,lifetime_variation:4,size:0.18f,size_variation:0.06f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#FF6A2A00",friction:0.88f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 5)"} ~ ~0.8 ~ 0.2 0.3 0.2 0.12 10 force
# Neptune : eclat de maree (Lenteur II 1,5 s)
execute if score #scl stlboy.tmp matches 3 run effect give @s minecraft:slowness 2 1
execute if score #scl stlboy.tmp matches 3 run particle apoli:custom{texture:"stlboy:textures/particle/nep_bubble.png",lifetime:14,lifetime_variation:4,size:0.18f,size_variation:0.06f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#3FE8D800",friction:0.88f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 5)"} ~ ~0.8 ~ 0.2 0.3 0.2 0.12 10 force
# Aurore : eclat d'aurore (le Surfer recupere un peu de vie)
execute if score #scl stlboy.tmp matches 4 run effect give @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] minecraft:regeneration 1 2 true
execute if score #scl stlboy.tmp matches 4 run particle apoli:custom{texture:"stlboy:textures/particle/aur_ribbon.png",lifetime:14,lifetime_variation:4,size:0.18f,size_variation:0.06f,end_size:0.0f,color:"#FFFFFFFF",end_color:"#FF6AD500",friction:0.88f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 5)"} ~ ~0.8 ~ 0.2 0.3 0.2 0.12 10 force
# Betelgeuse : eclat geant (petite explosion cosmique de 2 degats a 1,8 bloc)
execute if score #scl stlboy.tmp matches 5 run function stlboy:shard/giant
