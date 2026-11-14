# Cadence de pulsation de l'orbe nova : 1/s au Niveau 0, 4/s au Niveau 20 (en tant que l'orbe)
function stlboy:orb/res_scan
scoreboard players add @s stlboy.pt 1
execute if score @s stlboy.lvl matches 0 if score @s stlboy.pt matches 20.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 1 if score @s stlboy.pt matches 20.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 2 if score @s stlboy.pt matches 19.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 3 if score @s stlboy.pt matches 18.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 4 if score @s stlboy.pt matches 17.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 5 if score @s stlboy.pt matches 17.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 6 if score @s stlboy.pt matches 16.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 7 if score @s stlboy.pt matches 15.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 8 if score @s stlboy.pt matches 14.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 9 if score @s stlboy.pt matches 14.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 10 if score @s stlboy.pt matches 13.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 11 if score @s stlboy.pt matches 12.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 12 if score @s stlboy.pt matches 11.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 13 if score @s stlboy.pt matches 11.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 14 if score @s stlboy.pt matches 10.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 15 if score @s stlboy.pt matches 9.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 16 if score @s stlboy.pt matches 8.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 17 if score @s stlboy.pt matches 8.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 18 if score @s stlboy.pt matches 7.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 19 if score @s stlboy.pt matches 6.. run return run function stlboy:orb/nova_pulse
execute if score @s stlboy.lvl matches 20 if score @s stlboy.pt matches 5.. run return run function stlboy:orb/nova_pulse
