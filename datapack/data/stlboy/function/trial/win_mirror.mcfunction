function stlboy:trial/clean
title @s subtitle {"text":"Every blow you were dealt, you returned brighter.","color":"gray"}
title @s title {"text":"Memory restored","color":"gold"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“There. You are not a wall, not a blade — you are a mirror. That is what a star is, in the end.”","italic":true,"color":"gray"}]
function stlboy:trial/give {id:"mirror"}
function stlboy:skills/point
function stlboy:trial/gift {item:"minecraft:blaze_rod",n:4,name:"Blaze Rod"}
function stlboy:trial/dust {n:160}
