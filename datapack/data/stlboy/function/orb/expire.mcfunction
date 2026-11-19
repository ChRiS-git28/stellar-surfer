# Fin de vie d'une orbe : implosion visuelle, recharge (en tant que l'orbe)
# Recharge de base : Singularite 20 s, Nova 40 s. Ecoulement (linger) : 12 s / 24 s. Incantation rapide (swift) : 15 s / 30 s. Les deux : 9 s / 18 s.
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:18,lifetime_variation:6,size:0.22f,size_variation:0.088f,end_size:0.0f,color:"#C9A6FFFF",end_color:"#3FD8FF00",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~ ~ 0.05 0.05 0.05 0.05 8 force
# --- suite perdue au patch p74, restauree ---
playsound stlboy:cosmic.off neutral @a ~ ~ ~ 0.8 1.2
execute if entity @s[tag=stlboy_orb_well] run resource set @a[tag=stlboy_surfer,predicate=stlboy:owner] stlboy:graviton_well_cd 400
execute if entity @s[tag=stlboy_orb_nova] run resource set @a[tag=stlboy_surfer,predicate=stlboy:owner] stlboy:graviton_nova_cd 800
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_linger] if entity @s[tag=stlboy_orb_well] run resource set @a[tag=stlboy_surfer,predicate=stlboy:owner] stlboy:graviton_well_cd 240
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_linger] if entity @s[tag=stlboy_orb_nova] run resource set @a[tag=stlboy_surfer,predicate=stlboy:owner] stlboy:graviton_nova_cd 480
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_swift,tag=!stlboy_sk_linger] if entity @s[tag=stlboy_orb_well] run resource set @a[tag=stlboy_surfer,predicate=stlboy:owner] stlboy:graviton_well_cd 300
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_swift,tag=!stlboy_sk_linger] if entity @s[tag=stlboy_orb_nova] run resource set @a[tag=stlboy_surfer,predicate=stlboy:owner] stlboy:graviton_nova_cd 600
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_swift,tag=stlboy_sk_linger] if entity @s[tag=stlboy_orb_well] run resource set @a[tag=stlboy_surfer,predicate=stlboy:owner] stlboy:graviton_well_cd 180
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_swift,tag=stlboy_sk_linger] if entity @s[tag=stlboy_orb_nova] run resource set @a[tag=stlboy_surfer,predicate=stlboy:owner] stlboy:graviton_nova_cd 360
execute if entity @s[tag=stlboy_orb_well] run resource set @s stlboy:orb_well_dying 1
execute if entity @s[tag=stlboy_orb_nova] run resource set @s stlboy:orb_nova_dying 1
tag @s add stlboy_dying
tag @s remove stlboy_orb_well
tag @s remove stlboy_orb_nova
tag @s remove stlboy_free
