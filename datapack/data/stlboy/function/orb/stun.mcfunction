# Assomme la cible (en tant que la cible) : immobile et affaiblie 2 s, renouvele a chaque pulsation
effect give @s minecraft:slowness 2 6 true
effect give @s minecraft:weakness 2 1 true
effect give @s minecraft:mining_fatigue 2 2 true
execute at @s run particle minecraft:electric_spark ~ ~1.9 ~ 0.25 0.1 0.25 0.2 3
execute at @s run particle minecraft:end_rod ~ ~2.1 ~ 0.3 0.1 0.3 0.01 1
