# Glisse doucement l'objet vers le joueur (en tant que l'objet) : vitesse visee = 8 % de l'ecart par tick,
# lissee avec la vitesse actuelle (30 %) pour un mouvement fluide, sans orbite. Laisse une trainee d'etincelles.
# ecarts (centiemes de bloc)
execute store result score #ix stlboy.tmp run data get entity @s Pos[0] 100
scoreboard players operation #rx stlboy.tmp = #px stlboy.tmp
scoreboard players operation #rx stlboy.tmp -= #ix stlboy.tmp
execute store result score #iy stlboy.tmp run data get entity @s Pos[1] 100
scoreboard players operation #ry stlboy.tmp = #py stlboy.tmp
scoreboard players operation #ry stlboy.tmp -= #iy stlboy.tmp
execute store result score #iz stlboy.tmp run data get entity @s Pos[2] 100
scoreboard players operation #rz stlboy.tmp = #pz stlboy.tmp
scoreboard players operation #rz stlboy.tmp -= #iz stlboy.tmp
# revendication : V = (Rang + 1) x 100000 - (|rx| + |ry| + |rz|)
scoreboard players operation #dd stlboy.tmp = #rx stlboy.tmp
execute if score #dd stlboy.tmp matches ..-1 run scoreboard players operation #dd stlboy.tmp *= #cm1 stlboy.tmp
scoreboard players operation #t stlboy.tmp = #ry stlboy.tmp
execute if score #t stlboy.tmp matches ..-1 run scoreboard players operation #t stlboy.tmp *= #cm1 stlboy.tmp
scoreboard players operation #dd stlboy.tmp += #t stlboy.tmp
scoreboard players operation #t stlboy.tmp = #rz stlboy.tmp
execute if score #t stlboy.tmp matches ..-1 run scoreboard players operation #t stlboy.tmp *= #cm1 stlboy.tmp
scoreboard players operation #dd stlboy.tmp += #t stlboy.tmp
scoreboard players operation #cv stlboy.tmp = #rkv stlboy.tmp
scoreboard players operation #cv stlboy.tmp -= #dd stlboy.tmp
execute unless score @s stlboy.mgt >= #gtm stlboy.tmp run scoreboard players set @s stlboy.mgc -1
execute unless score @s stlboy.mgo = #own stlboy.tmp if score @s stlboy.mgc > #cv stlboy.tmp run return 0
scoreboard players operation @s stlboy.mgc = #cv stlboy.tmp
scoreboard players operation @s stlboy.mgo = #own stlboy.tmp
scoreboard players operation @s stlboy.mgt = #gt stlboy.tmp
data merge entity @s {NoGravity:1b}
tag @s add stlboy_mg
# vitesse visee (centiemes de bloc / tick)
scoreboard players set #c8 stlboy.tmp 8
scoreboard players set #c100 stlboy.tmp 100
scoreboard players operation #dx stlboy.tmp = #rx stlboy.tmp
scoreboard players operation #dx stlboy.tmp *= #c8 stlboy.tmp
scoreboard players operation #dx stlboy.tmp /= #c100 stlboy.tmp
scoreboard players operation #dy stlboy.tmp = #ry stlboy.tmp
scoreboard players operation #dy stlboy.tmp *= #c8 stlboy.tmp
scoreboard players operation #dy stlboy.tmp /= #c100 stlboy.tmp
scoreboard players operation #dz stlboy.tmp = #rz stlboy.tmp
scoreboard players operation #dz stlboy.tmp *= #c8 stlboy.tmp
scoreboard players operation #dz stlboy.tmp /= #c100 stlboy.tmp
scoreboard players operation #dx stlboy.tmp < #vmax stlboy.tmp
scoreboard players operation #dx stlboy.tmp > #vmin stlboy.tmp
scoreboard players operation #dy stlboy.tmp < #vmax stlboy.tmp
scoreboard players operation #dy stlboy.tmp > #vmin stlboy.tmp
scoreboard players operation #dz stlboy.tmp < #vmax stlboy.tmp
scoreboard players operation #dz stlboy.tmp > #vmin stlboy.tmp
# lissage : v = v + (visee - v) x 30 %
scoreboard players set #c30 stlboy.tmp 30
execute store result score #mx stlboy.tmp run data get entity @s Motion[0] 100
execute store result score #my stlboy.tmp run data get entity @s Motion[1] 100
execute store result score #mz stlboy.tmp run data get entity @s Motion[2] 100
scoreboard players operation #dx stlboy.tmp -= #mx stlboy.tmp
scoreboard players operation #dx stlboy.tmp *= #c30 stlboy.tmp
scoreboard players operation #dx stlboy.tmp /= #c100 stlboy.tmp
scoreboard players operation #dx stlboy.tmp += #mx stlboy.tmp
scoreboard players operation #dy stlboy.tmp -= #my stlboy.tmp
scoreboard players operation #dy stlboy.tmp *= #c30 stlboy.tmp
scoreboard players operation #dy stlboy.tmp /= #c100 stlboy.tmp
scoreboard players operation #dy stlboy.tmp += #my stlboy.tmp
scoreboard players operation #dz stlboy.tmp -= #mz stlboy.tmp
scoreboard players operation #dz stlboy.tmp *= #c30 stlboy.tmp
scoreboard players operation #dz stlboy.tmp /= #c100 stlboy.tmp
scoreboard players operation #dz stlboy.tmp += #mz stlboy.tmp
execute store result entity @s Motion[0] double 0.01 run scoreboard players get #dx stlboy.tmp
execute store result entity @s Motion[1] double 0.01 run scoreboard players get #dy stlboy.tmp
execute store result entity @s Motion[2] double 0.01 run scoreboard players get #dz stlboy.tmp
# trainee : etincelles douces + poussiere d'etoile
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:14,lifetime_variation:4,size:0.13f,size_variation:0.04f,end_size:0.0f,color:"#FFF2C2EE",end_color:"#B07CFF00",friction:0.92f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.2 ~ 0.06 0.06 0.06 0.004 1 force
execute if predicate stlboy:chance_half run particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:22,lifetime_variation:6,size:0.07f,size_variation:0.02f,end_size:0.0f,color:"#9FE8FFCC",end_color:"#B07CFF00",friction:0.96f,gravity:-0.002f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 2)"} ~ ~0.2 ~ 0.12 0.12 0.12 0.003 1 force
