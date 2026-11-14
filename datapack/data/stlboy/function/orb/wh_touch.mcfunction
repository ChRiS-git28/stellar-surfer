# Premier contact avec le Trou blanc (en tant que la cible) : la pulsation frappe AVANT que la poussee ne l'emporte
execute if entity @s[tag=stlboy_whit] run return 0
tag @s add stlboy_whit
execute as @e[tag=stlboy_orb_nova,sort=nearest,limit=1] run scoreboard players operation #own stlboy.tmp = @s stlboy.own
execute store result score #wl stlboy.tmp run scoreboard players get @e[tag=stlboy_orb_nova,sort=nearest,limit=1] stlboy.lvl
function stlboy:orb/wh_dmg
function stlboy:orb/wh_fling
