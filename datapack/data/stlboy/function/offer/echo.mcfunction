# Offrande : Void Echo -> ouvre le passage vers le Rank 6 — Pulsar (en tant que le joueur)
execute unless entity @s[tag=stlboy_surfer] run return 0
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
execute if score #rk stlboy.tmp matches ..4 run return run title @s actionbar {"text":"✦ Not yet — reach Rank 5 first ✦","color":"gray"}
execute if score #rk stlboy.tmp matches 6.. run return run title @s actionbar {"text":"✦ Already offered ✦","color":"gray"}
execute unless entity @s[tag=stlboy_t_mirror] run return run title @s actionbar {"translate":"stlboy.offer.need","fallback":"✦ The Offering refuses you — the Memory of the Mirror is missing ✦","with":[{"translate":"stlboy.memory.mirror.name","fallback":"Memory of the Mirror"}],"color":"gray"}
execute unless entity @s[tag=stlboy_t_wither] run return run title @s actionbar {"translate":"stlboy.offer.need","fallback":"✦ The Offering refuses you — the Memory of the Wither is missing ✦","with":[{"translate":"stlboy.memory.wither.name","fallback":"Memory of the Wither"}],"color":"gray"}
clear @s minecraft:turtle_scute[minecraft:custom_data~{stlboy_offer:"echo"}] 1
resource set @s stlboy:stardust_lock_6 1
advancement grant @s only stlboy:stardust/offer_echo
playsound stlboy:cosmic.select player @a ~ ~ ~ 1 1.2
playsound stlboy:cosmic.lock player @a ~ ~ ~ 0.8 1.0
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.15 50
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.6 0.3 0.4 30
title @s actionbar {"text":"✦ Void Echo offered — fill the bar to reach Rank 6 ✦","color":"dark_aqua"}
