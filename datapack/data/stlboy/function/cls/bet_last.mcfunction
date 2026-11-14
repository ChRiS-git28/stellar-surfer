# Dernier souffle : un coup fatal est evite (1 fois toutes les 5 min)
effect give @s minecraft:regeneration 5 2 true
effect give @s minecraft:absorption 10 1 true
effect give @s minecraft:resistance 3 2 true
particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.8 0.4 0.4 60
playsound minecraft:item.totem.use player @a ~ ~ ~ 0.8 1.2
title @s actionbar {"translate":"stlboy.cls.bet_last","fallback":"✦ The red giant refuses to die ✦","color":"red"}
