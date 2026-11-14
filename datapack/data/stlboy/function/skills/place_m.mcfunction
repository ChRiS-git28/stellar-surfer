$execute store success score #ok stlboy.tmp run setblock ~ ~ ~ $(pid)
execute if score #ok stlboy.tmp matches 1 run particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.05 8
execute if score #ok stlboy.tmp matches 1 run playsound minecraft:block.amethyst_block.place block @a ~ ~ ~ 0.9 1.4
execute if score #ok stlboy.tmp matches 1 unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand stlboy:minus_one
