# Le rayon se replie (en tant que le joueur, une fois) : la lumiere retourne dans la main, l'impact implose
execute anchored eyes positioned ^0.25 ^-0.4 ^0.6 run particle minecraft:reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.5 18
execute anchored eyes positioned ^0.25 ^-0.4 ^0.6 run particle minecraft:end_rod ~ ~ ~ 0.02 0.02 0.02 0.03 5
playsound stlboy:cosmic.off player @a ~ ~ ~ 0.5 1.6
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.35 1.8
