# Le chemin du retour est encore ferme (en tant que le Surfer) : minutes restantes
scoreboard players set #wm stlboy.tmp 24000
scoreboard players operation #wm stlboy.tmp -= #wd stlboy.tmp
scoreboard players set #c1200 stlboy.tmp 1200
scoreboard players operation #wm stlboy.tmp /= #c1200 stlboy.tmp
scoreboard players add #wm stlboy.tmp 1
scoreboard players set @s stlboy.wj 40
playsound stlboy:cosmic.wh_deny player @s ~ ~ ~ 0.6 1.2
title @s actionbar {"translate":"stlboy.wormhole.rest","fallback":"✦ The way home is still closed (%s min)","color":"gray","with":[{"score":{"name":"#wm","objective":"stlboy.tmp"}}]}
