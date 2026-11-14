# Offrande : Dead Star Core -> ouvre le passage vers le Rank 5 — Red Giant (en tant que le joueur)
execute unless entity @s[tag=stlboy_surfer] run return 0
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
execute if score #rk stlboy.tmp matches ..3 run return run title @s actionbar {"text":"✦ Not yet — reach Rank 4 first ✦","color":"gray"}
execute if score #rk stlboy.tmp matches 5.. run return run title @s actionbar {"text":"✦ Already offered ✦","color":"gray"}
execute unless entity @s[tag=stlboy_t_constellation] run return run title @s actionbar {"translate":"stlboy.offer.need","fallback":"✦ The Offering refuses you — the Memory of the Constellations is missing ✦","with":[{"translate":"stlboy.memory.constellation.name","fallback":"Memory of the Constellations"}],"color":"gray"}
execute unless entity @s[tag=stlboy_t_motes] run return run title @s actionbar {"translate":"stlboy.offer.need","fallback":"✦ The Offering refuses you — the Memory of the Hunger is missing ✦","with":[{"translate":"stlboy.memory.motes.name","fallback":"Memory of the Hunger"}],"color":"gray"}
execute unless entity @s[tag=stlboy_t_echo] run return run title @s actionbar {"translate":"stlboy.offer.need","fallback":"✦ The Offering refuses you — the Memory of the Echo is missing ✦","with":[{"translate":"stlboy.memory.echo.name","fallback":"Memory of the Echo"}],"color":"gray"}
clear @s minecraft:phantom_membrane[minecraft:custom_data~{stlboy_offer:"core"}] 1
resource set @s stlboy:stardust_lock_5 1
advancement grant @s only stlboy:stardust/offer_core
playsound stlboy:cosmic.select player @a ~ ~ ~ 1 1.2
playsound stlboy:cosmic.lock player @a ~ ~ ~ 0.8 1.0
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.15 50
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.6 0.3 0.4 30
title @s actionbar {"text":"✦ Dead Star Core offered — fill the bar to reach Rank 5 ✦","color":"gold"}
