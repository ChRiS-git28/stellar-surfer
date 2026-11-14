# Effets du rayon (en tant que le joueur, chaque tick de tir). #r = longueur, #pt = compte a rebours de la pulsation
execute store result score #fq stlboy.tmp run resource get @s stlboy:hud_fxq
execute if score #fq stlboy.tmp matches 0 run return 0
# onde de choc + etincelles au point vise (l'onde suit ensuite le curseur, voir fx/impact)
execute if score #pt stlboy.tmp matches 1 run function stlboy:fx/impact_at with storage stlboy:beam
# poussiere d'etoiles qui se detache du rayon : 1 par tick (complet), 1 tick sur 3 (leger)
execute store result score #rn stlboy.tmp run random value 0..2
execute if score #fq stlboy.tmp matches 1 unless score #rn stlboy.tmp matches 0 run return 0
execute if score #r stlboy.tmp matches ..11 run return 0
execute store result storage stlboy:fx r int 1 run scoreboard players get #r stlboy.tmp
function stlboy:fx/drift with storage stlboy:fx
