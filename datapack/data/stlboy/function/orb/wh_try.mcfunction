# Le Surfer plonge dans le coeur de son Trou de ver (Rang 10) : retour au point de reapparition, une fois par jour Minecraft
execute store result score #wn stlboy.tmp run time query gametime
scoreboard players operation #wd stlboy.tmp = #wn stlboy.tmp
scoreboard players operation #wd stlboy.tmp -= @s stlboy.whday
execute if score @s stlboy.whday matches 1.. if score #wd stlboy.tmp matches ..23999 run return run function stlboy:orb/wh_rest
function stlboy:orb/wh_home
