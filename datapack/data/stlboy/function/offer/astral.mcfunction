# Offrande : Astral Crystal -> ouvre le passage vers le Rank 3 — Comet (en tant que le joueur)
execute unless entity @s[tag=stlboy_surfer] run return 0
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
execute if score #rk stlboy.tmp matches ..1 run return run title @s actionbar {"text":"✦ Not yet — reach Rank 2 first ✦","color":"gray"}
execute if score #rk stlboy.tmp matches 3.. run return run title @s actionbar {"text":"✦ Already offered ✦","color":"gray"}
execute unless entity @s[tag=stlboy_t_ring] run return run title @s actionbar {"translate":"stlboy.offer.need","fallback":"✦ The Offering refuses you — the Memory of the Ring is missing ✦","with":[{"translate":"stlboy.memory.ring.name","fallback":"Memory of the Ring"}],"color":"gray"}
execute unless entity @s[tag=stlboy_t_meteor] run return run title @s actionbar {"translate":"stlboy.offer.need","fallback":"✦ The Offering refuses you — the Memory of the Meteor is missing ✦","with":[{"translate":"stlboy.memory.meteor.name","fallback":"Memory of the Meteor"}],"color":"gray"}
clear @s minecraft:nautilus_shell[minecraft:custom_data~{stlboy_offer:"astral"}] 1
resource set @s stlboy:stardust_lock_3 1
advancement grant @s only stlboy:stardust/offer_astral
playsound stlboy:cosmic.select player @a ~ ~ ~ 1 1.2
playsound stlboy:cosmic.lock player @a ~ ~ ~ 0.8 1.0
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.15 50
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.6 0.3 0.4 30
title @s actionbar {"text":"✦ Astral Crystal offered — fill the bar to reach Rank 3 ✦","color":"light_purple"}
