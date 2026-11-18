# Un projectile ou un sort (Iron's Spells, Hazen n Stuff, Ars Nouveau / Elemental) est englouti (Trou de ver) ou brule (Souffle) (en tant que le projectile)
# les tirs des Surfers passent
execute on origin if entity @s[tag=stlboy_surfer] run return 0
# armes lancees (trident, armes enchantees...) : elles tombent comme apres avoir touche, rien n'est perdu
execute if entity @s[type=#stlboy:thrown_weapons] run return run function stlboy:orb/proj_drop
execute if data entity @s item.components."minecraft:enchantments" run return run function stlboy:orb/proj_drop
particle apoli:custom{texture:"stlboy:textures/particle/wisp.png",lifetime:24,lifetime_variation:6,size:0.18f,size_variation:0.054f,end_size:0.0f,color:"#B07CFFDD",end_color:"#3A1A7A00",friction:0.92f,gravity:-0.004f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0.1 0.1 0.1 0.3 8
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~ ~ 0 0 0 0.04 2
kill @s
