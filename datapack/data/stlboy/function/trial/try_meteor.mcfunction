# Creatif (tests) : l'epreuve demarre sans condition de Rang, de competence ni de ciel ouvert
execute if entity @s[gamemode=creative] run return run function stlboy:trial/start_meteor
execute if score #rk stlboy.tmp matches ..1 run return run title @s actionbar {"text":"✦ Meteor Rain — reach Rank 2 to face this trial ✦","color":"dark_purple"}
execute unless predicate stlboy:trial_sky run return run title @s actionbar {"text":"✦ A trial needs open sky above you ✦","color":"dark_purple"}
function stlboy:trial/start_meteor
