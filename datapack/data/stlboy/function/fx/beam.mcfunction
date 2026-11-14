# Effets du rayon (en tant que le joueur, chaque tick de tir). #r = longueur, #pt = compte a rebours de la pulsation
execute store result score #fq stlboy.tmp run resource get @s stlboy:hud_fxq
execute if score #fq stlboy.tmp matches 0 run return 0
execute if score #pt stlboy.tmp matches 1 at @e[type=minecraft:item_display,tag=stlboy_bimp,limit=1,predicate=stlboy:owned] run function stlboy:fx/impact
# poussiere d'etoiles qui se detache du rayon : 1 par tick (complet), 1 tick sur 3 (leger)
execute store result score #rn stlboy.tmp run random value 0..2
execute if score #fq stlboy.tmp matches 1 unless score #rn stlboy.tmp matches 0 run return 0
execute if score #r stlboy.tmp matches ..11 run return 0
execute store result storage stlboy:fx r int 1 run scoreboard players get #r stlboy.tmp
function stlboy:fx/drift with storage stlboy:fx
