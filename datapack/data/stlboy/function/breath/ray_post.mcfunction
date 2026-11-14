# Apres le raycast : garde les #pierce cibles les plus proches (en tant que le joueur)
execute store result storage stlboy:tmp n int 1 run scoreboard players get #pierce stlboy.tmp
function stlboy:breath/ray_post_m with storage stlboy:tmp
