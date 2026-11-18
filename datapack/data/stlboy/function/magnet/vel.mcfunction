# Donne a l'objet une vitesse vers le joueur (en tant que l'objet) :
# 9 % de l'ecart par tick vers le joueur + 30 % en travers : l'objet tourne ~3 fois autour de toi en se rapprochant,
# monte a hauteur de poitrine, puis est aspire tout droit dans le dernier bloc et demi.
data merge entity @s {NoGravity:1b}
tag @s add stlboy_mg
scoreboard players set #c12 stlboy.tmp 9
scoreboard players set #c6 stlboy.tmp 30
scoreboard players set #c3 stlboy.tmp 2
scoreboard players set #c100 stlboy.tmp 100
# ecarts bruts (centiemes de bloc)
execute store result score #ix stlboy.tmp run data get entity @s Pos[0] 100
scoreboard players operation #rx stlboy.tmp = #px stlboy.tmp
scoreboard players operation #rx stlboy.tmp -= #ix stlboy.tmp
execute store result score #iy stlboy.tmp run data get entity @s Pos[1] 100
scoreboard players operation #ry stlboy.tmp = #py stlboy.tmp
scoreboard players operation #ry stlboy.tmp -= #iy stlboy.tmp
execute store result score #iz stlboy.tmp run data get entity @s Pos[2] 100
scoreboard players operation #rz stlboy.tmp = #pz stlboy.tmp
scoreboard players operation #rz stlboy.tmp -= #iz stlboy.tmp
# distance a plat approchee (|rx| + |rz|)
scoreboard players operation #h stlboy.tmp = #rx stlboy.tmp
execute if score #h stlboy.tmp matches ..-1 run scoreboard players operation #h stlboy.tmp *= #cm1 stlboy.tmp
scoreboard players operation #t stlboy.tmp = #rz stlboy.tmp
execute if score #t stlboy.tmp matches ..-1 run scoreboard players operation #t stlboy.tmp *= #cm1 stlboy.tmp
scoreboard players operation #h stlboy.tmp += #t stlboy.tmp
# dernier bloc et demi : aspire tout droit
execute if score #h stlboy.tmp matches ..160 run scoreboard players set #c12 stlboy.tmp 40
execute if score #h stlboy.tmp matches ..160 run scoreboard players set #c6 stlboy.tmp 0
execute if score #h stlboy.tmp matches ..160 run scoreboard players set #c3 stlboy.tmp 0
# X = r% rx - t% rz
scoreboard players operation #dx stlboy.tmp = #rx stlboy.tmp
scoreboard players operation #dx stlboy.tmp *= #c12 stlboy.tmp
scoreboard players operation #t stlboy.tmp = #rz stlboy.tmp
scoreboard players operation #t stlboy.tmp *= #c6 stlboy.tmp
scoreboard players operation #dx stlboy.tmp -= #t stlboy.tmp
scoreboard players operation #dx stlboy.tmp /= #c100 stlboy.tmp
# Z = r% rz + t% rx
scoreboard players operation #dz stlboy.tmp = #rz stlboy.tmp
scoreboard players operation #dz stlboy.tmp *= #c12 stlboy.tmp
scoreboard players operation #t stlboy.tmp = #rx stlboy.tmp
scoreboard players operation #t stlboy.tmp *= #c6 stlboy.tmp
scoreboard players operation #dz stlboy.tmp += #t stlboy.tmp
scoreboard players operation #dz stlboy.tmp /= #c100 stlboy.tmp
# Y = 25 % ry (rejoint vite la hauteur de poitrine) + un leger arc selon la distance
scoreboard players operation #h stlboy.tmp *= #c3 stlboy.tmp
scoreboard players set #c25 stlboy.tmp 25
scoreboard players operation #dy stlboy.tmp = #ry stlboy.tmp
scoreboard players operation #dy stlboy.tmp *= #c25 stlboy.tmp
scoreboard players operation #dy stlboy.tmp += #h stlboy.tmp
scoreboard players operation #dy stlboy.tmp /= #c100 stlboy.tmp
# plafonds
scoreboard players operation #dx stlboy.tmp < #vmax stlboy.tmp
scoreboard players operation #dx stlboy.tmp > #vmin stlboy.tmp
scoreboard players operation #dy stlboy.tmp < #vmax stlboy.tmp
scoreboard players operation #dy stlboy.tmp > #vmin stlboy.tmp
scoreboard players operation #dz stlboy.tmp < #vmax stlboy.tmp
scoreboard players operation #dz stlboy.tmp > #vmin stlboy.tmp
execute store result entity @s Motion[0] double 0.01 run scoreboard players get #dx stlboy.tmp
execute store result entity @s Motion[1] double 0.01 run scoreboard players get #dy stlboy.tmp
execute store result entity @s Motion[2] double 0.01 run scoreboard players get #dz stlboy.tmp
# trainee d'etincelles qui suit l'objet tout au long de sa spirale
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:12,lifetime_variation:4,size:0.15f,size_variation:0.05f,end_size:0.0f,color:"#FFF2C2EE",end_color:"#B07CFF00",friction:0.9f,gravity:0.0f,physics:false,emissive:true,blend:"additive",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 3)"} ~ ~0.25 ~ 0.04 0.04 0.04 0.005 1 force
execute if predicate stlboy:chance_half run particle minecraft:end_rod ~ ~0.25 ~ 0.02 0.02 0.02 0 1
