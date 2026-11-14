# Accorde une epreuve (macro : id) en tant que le joueur : une seule fois, +1 point
$execute if entity @s[tag=stlboy_t_$(id)] run return 0
$tag @s add stlboy_t_$(id)
$advancement grant @s only stlboy:chronicle/$(id)
function stlboy:skills/point
particle minecraft:end_rod ~ ~1 ~ 0.5 0.8 0.5 0.1 30
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
