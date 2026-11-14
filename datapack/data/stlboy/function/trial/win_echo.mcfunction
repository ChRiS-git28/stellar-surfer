function stlboy:trial/clean
title @s subtitle {"text":"The screams of a dead star fall quiet.","color":"gray"}
title @s title {"text":"Memory restored","color":"gold"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“Thank you. I did not want to be alone with them.”","italic":true,"color":"gray"}]
function stlboy:trial/give {id:"echo"}
function stlboy:skills/point
function stlboy:trial/gift {item:"minecraft:netherite_ingot",n:1,name:"Netherite Ingot"}
function stlboy:trial/dust {n:140}
