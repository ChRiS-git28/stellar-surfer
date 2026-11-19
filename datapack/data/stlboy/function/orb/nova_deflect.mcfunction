# Trou blanc : tout projectile (fleches, boules de feu, sorts...) qui entre dans son champ est renvoye d'ou il vient, plus vite
# (en tant que l'orbe, a sa position ; tenue ou relachee). Portee selon la puissance de l'orbe (4 / 5,2 / 6,4 blocs)
execute if score @s stlboy.lvl matches ..6 as @e[type=#stlboy:void_projectiles,distance=..4,tag=!stlboy_defl] run function stlboy:orb/deflect
execute if score @s stlboy.lvl matches 7..13 as @e[type=#stlboy:void_projectiles,distance=..5.2,tag=!stlboy_defl] run function stlboy:orb/deflect
execute if score @s stlboy.lvl matches 14.. as @e[type=#stlboy:void_projectiles,distance=..6.4,tag=!stlboy_defl] run function stlboy:orb/deflect
