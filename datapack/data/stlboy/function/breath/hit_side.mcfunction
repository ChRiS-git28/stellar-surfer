# Ennemi traverse par le rayon (pas la cible principale) : 70 % des degats, mais sa propre constellation (en tant que la cible)
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:20,lifetime_variation:5,size:0.14f,size_variation:0.042f,end_size:0.0f,color:"#F4F8FFFF",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~1 ~ 0.2 0.4 0.2 0.02 2
# Dissonance : la constellation d'un autre Surfer protege cette cible des tiennes (degats seuls)
execute if entity @s[tag=stlboy_bt,predicate=!stlboy:cowned] run return run function stlboy:breath/hit_other
function stlboy:breath/stars_pre
function stlboy:breath/pdmg_calc
function stlboy:breath/pdmg_side
function stlboy:breath/stars_post
