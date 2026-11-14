scoreboard players set @s stlboy.tr 2
scoreboard players set @s stlboy.trt 0
scoreboard players set @s stlboy.trh 0
title @s times 10 70 25
title @s subtitle {"text":"Survive the star-fall. Two hits and the memory breaks.","color":"gray"}
title @s title {"text":"Trial II — Meteor Rain","color":"gold"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“The sky tears open when a star is born. Keep moving. Do not let it find you.”","italic":true,"color":"gray"}]
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.6 1.6
bossbar set stlboy:trial name {"text":"Meteor Rain — 0/2 hits","color":"gold"}
bossbar set stlboy:trial color red
bossbar set stlboy:trial style progress
bossbar set stlboy:trial max 800
bossbar set stlboy:trial value 800
bossbar set stlboy:trial players @s
