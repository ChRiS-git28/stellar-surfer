# Donne a l'objet une vitesse vers le joueur (en tant que l'objet) :
# 12 % de l'ecart par tick vers le joueur + 6 % en travers (spirale) + un peu de hauteur selon la distance (arc).
# Plus l'objet approche, plus la spirale et l'arc se resserrent : il tombe dans le joueur en courbe.
data merge entity @s {NoGravity:1b}
tag @s add stlboy_mg
scoreboard players set #c12 stlboy.tmp 12
scoreboard players set #c6 stlboy.tmp 6
scoreboard players set #c3 stlboy.tmp 3
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
# X = 12 % rx - 6 % rz
scoreboard players operation #dx stlboy.tmp = #rx stlboy.tmp
scoreboard players operation #dx stlboy.tmp *= #c12 stlboy.tmp
scoreboard players operation #t stlboy.tmp = #rz stlboy.tmp
scoreboard players operation #t stlboy.tmp *= #c6 stlboy.tmp
scoreboard players operation #dx stlboy.tmp -= #t stlboy.tmp
scoreboard players operation #dx stlboy.tmp /= #c100 stlboy.tmp
# Z = 12 % rz + 6 % rx
scoreboard players operation #dz stlboy.tmp = #rz stlboy.tmp
scoreboard players operation #dz stlboy.tmp *= #c12 stlboy.tmp
scoreboard players operation #t stlboy.tmp = #rx stlboy.tmp
scoreboard players operation #t stlboy.tmp *= #c6 stlboy.tmp
scoreboard players operation #dz stlboy.tmp += #t stlboy.tmp
scoreboard players operation #dz stlboy.tmp /= #c100 stlboy.tmp
# Y = 12 % ry + 3 % de la distance a plat (|rx| + |rz|) : l'objet monte en arc puis redescend vers toi
scoreboard players operation #h stlboy.tmp = #rx stlboy.tmp
execute if score #h stlboy.tmp matches ..-1 run scoreboard players operation #h stlboy.tmp *= #cm1 stlboy.tmp
scoreboard players operation #t stlboy.tmp = #rz stlboy.tmp
execute if score #t stlboy.tmp matches ..-1 run scoreboard players operation #t stlboy.tmp *= #cm1 stlboy.tmp
scoreboard players operation #h stlboy.tmp += #t stlboy.tmp
scoreboard players operation #h stlboy.tmp *= #c3 stlboy.tmp
scoreboard players operation #dy stlboy.tmp = #ry stlboy.tmp
scoreboard players operation #dy stlboy.tmp *= #c12 stlboy.tmp
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
execute if predicate stlboy:chance_quarter run particle minecraft:end_rod ~ ~0.25 ~ 0.03 0.03 0.03 0 1
execute if predicate stlboy:chance_quarter run particle minecraft:dust_color_transition{from_color:[0.5,0.8,1.0],scale:0.7,to_color:[0.7,0.4,1.0]} ~ ~0.25 ~ 0.06 0.06 0.06 0 1
