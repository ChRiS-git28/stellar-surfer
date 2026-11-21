# Creatif (tests) : l'epreuve demarre sans condition de Rang, de competence ni de ciel ouvert
execute if entity @s[gamemode=creative] run return run function stlboy:trial/start_mirror
execute if score #rk stlboy.tmp matches ..4 run return run title @s actionbar {"text":"✦ The Mirror — reach Rank 5 to face this trial ✦","color":"dark_purple"}
execute unless entity @s[tag=stlboy_sk_nova] run return run title @s actionbar {"text":"✦ The Mirror — learn White Hole in the Stellar Path first ✦","color":"dark_purple"}
execute unless predicate stlboy:trial_sky run return run title @s actionbar {"text":"✦ A trial needs open sky above you ✦","color":"dark_purple"}
function stlboy:trial/start_mirror
