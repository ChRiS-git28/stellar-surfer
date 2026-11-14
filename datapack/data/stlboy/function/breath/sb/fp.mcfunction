# Rayon de premiere personne (en tant que le joueur ; #r = longueur en quarts de bloc, #th = palier, #bp = respiration)
# Repere de la camera (billboard) : x droite, y haut, -z devant. Le rayon part en bas a droite (0,25 ; -0,40 ; -0,35)
# et finit sur le cube d'impact (0 ; -0,65 ; -hz). Tout est en millièmes de bloc.
# D = hz - 0,35 ; longueur ~ D + 62,5/D ; inclinaison k = 0,125 / longueur
scoreboard players operation #fd stlboy.tmp = #r stlboy.tmp
scoreboard players set #c250 stlboy.tmp 250
scoreboard players operation #fd stlboy.tmp *= #c250 stlboy.tmp
scoreboard players remove #fd stlboy.tmp 350
execute if score #fd stlboy.tmp matches ..200 run scoreboard players set #fd stlboy.tmp 200
scoreboard players set #fl stlboy.tmp 62500
scoreboard players operation #fl stlboy.tmp /= #fd stlboy.tmp
scoreboard players operation #fl stlboy.tmp += #fd stlboy.tmp
# centre : z = -(0,35 + hz)/2 = -(D + 0,70)/2
scoreboard players operation #fz stlboy.tmp = #fd stlboy.tmp
scoreboard players add #fz stlboy.tmp 700
scoreboard players operation #fz stlboy.tmp /= #c2 stlboy.const
scoreboard players operation #fz stlboy.tmp *= #cm1 stlboy.const
# k (millièmes) puis quaternion [0, 1, -k, -k] normalise par (1 + k^2)
scoreboard players set #fk stlboy.tmp 125000
scoreboard players operation #fk stlboy.tmp /= #fl stlboy.tmp
scoreboard players operation #fn stlboy.tmp = #fk stlboy.tmp
scoreboard players operation #fn stlboy.tmp *= #fk stlboy.tmp
scoreboard players set #c1000 stlboy.tmp 1000
scoreboard players operation #fn stlboy.tmp /= #c1000 stlboy.tmp
scoreboard players add #fn stlboy.tmp 1000
scoreboard players set #fy stlboy.tmp 1000000
scoreboard players operation #fy stlboy.tmp /= #fn stlboy.tmp
scoreboard players operation #fk stlboy.tmp *= #c1000 stlboy.tmp
scoreboard players operation #fk stlboy.tmp /= #fn stlboy.tmp
scoreboard players operation #fk stlboy.tmp *= #cm1 stlboy.const
execute store result storage stlboy:beam ftz double 0.001 run scoreboard players get #fz stlboy.tmp
execute store result storage stlboy:beam fsz double 0.001 run scoreboard players get #fl stlboy.tmp
execute store result storage stlboy:beam fqy double 0.001 run scoreboard players get #fy stlboy.tmp
execute store result storage stlboy:beam fqk double 0.001 run scoreboard players get #fk stlboy.tmp
# epaisseur : fine pres de l'oeil (le modele fait 0,6 bloc a l'echelle 1)
data modify storage stlboy:beam wf set value "0.30"
execute if score #th stlboy.tmp matches 1 run data modify storage stlboy:beam wf set value "0.46"
execute if score #th stlboy.tmp matches 2 run data modify storage stlboy:beam wf set value "0.62"
execute if score #bp stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 0 run data modify storage stlboy:beam wf set value "0.34"
execute if score #bp stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 1 run data modify storage stlboy:beam wf set value "0.51"
execute if score #bp stlboy.tmp matches 0..1 if score #th stlboy.tmp matches 2 run data modify storage stlboy:beam wf set value "0.68"
# eclat d'impact de 1re personne : au bout du rayon, colle au curseur
execute store result storage stlboy:beam fhz double -0.25 run scoreboard players get #r stlboy.tmp
function stlboy:breath/sb/fp_m with storage stlboy:beam
