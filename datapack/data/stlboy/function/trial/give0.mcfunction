# Idem sans point de competence (boss qui en donnent deja un)
$execute if entity @s[tag=stlboy_t_$(id)] run return 0
$tag @s add stlboy_t_$(id)
$advancement grant @s only stlboy:chronicle/$(id)
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
