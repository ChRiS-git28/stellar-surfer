# Creatif (tests) : l'epreuve demarre sans condition de Rang, de competence ni de ciel ouvert
execute if entity @s[gamemode=creative] run return run function stlboy:trial/start_horizon
execute if score #rk stlboy.tmp matches ..5 run return run title @s actionbar {"text":"✦ Event Horizon — reach Rank 6 to face this trial ✦","color":"dark_purple"}
execute unless predicate stlboy:trial_sky run return run title @s actionbar {"text":"✦ A trial needs open sky above you ✦","color":"dark_purple"}
function stlboy:trial/height
execute if score #h stlboy.tmp matches ..24 run return run title @s actionbar {"text":"✦ Rise higher: the Horizon must not touch the ground (24+ blocks above it) ✦","color":"dark_purple"}
function stlboy:trial/start_horizon
