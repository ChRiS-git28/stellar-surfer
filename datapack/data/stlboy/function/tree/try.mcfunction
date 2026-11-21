# Achat (macro id, en tant que le Surfer)
$execute if entity @s[skill=$(id)] run return run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 0.6 1.2
scoreboard players set #tok stlboy.tmp 0
$execute store success score #tok stlboy.tmp run apoli skill_tree buy @s $(id)
$execute unless entity @s[skill=$(id)] run scoreboard players set #tok stlboy.tmp 0
execute if score #tok stlboy.tmp matches 0 run title @s actionbar {"translate":"stlboy.tree.no","fallback":"✦ Not yet: points, rank or the previous star are missing (or another choice closed it) ✦","color":"#B8A8D8"}
execute if score #tok stlboy.tmp matches 0 run return run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 0.6 0.7
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 1 1.8
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.4 1.6
function stlboy:tree/refresh
function stlboy:tree/points
