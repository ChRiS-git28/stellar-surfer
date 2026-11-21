# Option : masquer ses propres particules de classe (aura, trainee) a la premiere personne ; les autres joueurs les voient toujours
execute if entity @s[tag=stlboy_nofx] run return run tag @s remove stlboy_nofx
tag @s add stlboy_nofx
