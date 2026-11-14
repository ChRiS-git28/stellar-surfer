# Effondrement du Trou de ver (en tant que le Surfer qui plonge dans son coeur en surf ; #own = son id)
# Degats d'implosion a tout ce qui est fige dans le champ : 4 + 1 par seconde de champ restante (max 12)
scoreboard players operation #wd stlboy.tmp = @e[type=minecraft:marker,tag=stlboy_sn,predicate=stlboy:owned,limit=1] stlboy.life
scoreboard players operation #wd stlboy.tmp /= #c20 stlboy.const
scoreboard players add #wd stlboy.tmp 4
execute if score #wd stlboy.tmp matches 13.. run scoreboard players set #wd stlboy.tmp 12
execute store result storage stlboy:tmp wc.d int 1 run scoreboard players get #wd stlboy.tmp
execute at @e[type=minecraft:marker,tag=stlboy_sn,predicate=stlboy:owned,limit=1] run function stlboy:orb/wh_collapse_fx
function stlboy:orb/wh_collapse_m with storage stlboy:tmp wc
# tu ressors par l'autre bouche, relance, protege un instant
function stlboy:orb/wh_cross {from:"stlboy_sn",to:"stlboy_sn_exit"}
resource set @s stlboy:flight_level 60
effect give @s minecraft:resistance 2 1 true
title @s actionbar {"translate":"stlboy.wormhole.collapse","fallback":"✦ The wormhole collapses behind you","color":"light_purple"}
# le champ disparait (la recharge demarre)
function stlboy:orb/sn_end
