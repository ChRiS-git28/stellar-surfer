# Arrivee au point de reapparition (en tant que le Surfer) : un anneau d'etoiles s'ouvre au sol, la lumiere jaillit
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
particle minecraft:end_rod ~ ~0.2 ~ 1.4 0.05 1.4 0.02 40 force
particle minecraft:end_rod ~ ~1 ~ 0.1 1.2 0.1 0.05 25 force
particle minecraft:reverse_portal ~ ~1 ~ 1 1 1 0.2 60 force
particle minecraft:dust_color_transition{from_color:[0.69,0.49,1.0],scale:1.4,to_color:[0.62,0.91,1.0]} ~ ~0.3 ~ 1.2 0.1 1.2 0 40 force
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.4
playsound stlboy:cosmic.awaken player @a ~ ~ ~ 1 1.2
playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1 0.8
