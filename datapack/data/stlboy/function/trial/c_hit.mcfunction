# Une Constellation touche un echo d'epreuve (en tant que l'echo)
particle minecraft:end_rod ~ ~1 ~ 0.6 0.8 0.6 0.2 40
particle minecraft:firework ~ ~1 ~ 0.4 0.4 0.4 0.2 20
playsound minecraft:block.amethyst_block.resonate player @a[distance=..24] ~ ~ ~ 1 1.8
kill @s
