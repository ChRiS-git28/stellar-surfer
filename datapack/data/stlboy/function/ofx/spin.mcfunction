# Avance la rotation de toutes les pieces (toutes les 4 ticks)
scoreboard players add #ofx stlboy.tmp 1
scoreboard players set #c16 stlboy.tmp 16
scoreboard players operation #ofx stlboy.tmp %= #c16 stlboy.tmp
execute store result storage stlboy:ofx i int 1 run scoreboard players get #ofx stlboy.tmp
scoreboard players operation #o2 stlboy.tmp = #ofx stlboy.tmp
scoreboard players set #c2 stlboy.tmp 2
scoreboard players operation #o2 stlboy.tmp *= #c2 stlboy.tmp
scoreboard players operation #o2 stlboy.tmp %= #c16 stlboy.tmp
execute store result storage stlboy:ofx j int 1 run scoreboard players get #o2 stlboy.tmp
function stlboy:ofx/spin_m with storage stlboy:ofx
