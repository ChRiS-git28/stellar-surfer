# +1 point de competence (en tant que le joueur)
execute unless entity @s[tag=stlboy_surfer] run return 0
apoli:skill_tree points add @s stlboy:stellar 1
title @s actionbar {"text":"✦ +1 Skill Point ✦","color":"light_purple"}
playsound stlboy:cosmic.rankup player @s ~ ~ ~ 0.6 1.6
