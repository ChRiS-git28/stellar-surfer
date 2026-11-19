# Reinitialise l'arbre de competences (points rendus) : /function stlboy:debug/reset_skills
# Le Rang, les Memoires et le reste ne bougent pas. Le Serment de classe est aussi annule (palette Nebuleuse).
apoli:skill_tree reset @s stlboy:stellar
tag @s remove stlboy_cls_nebula
tag @s remove stlboy_cls_sun
tag @s remove stlboy_cls_neptune
tag @s remove stlboy_cls_aurora
tag @s remove stlboy_cls_betelgeuse
scoreboard players reset @s stlboy.palx
playsound stlboy:cosmic.off player @s ~ ~ ~ 0.8 1.2
tellraw @s [{"text":"[debug] ","color":"gray"},{"translate":"stlboy.debug.reset_skills","fallback":"Skill tree reset, points refunded.","color":"white"}]
