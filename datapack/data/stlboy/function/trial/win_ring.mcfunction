function stlboy:trial/clean
title @s subtitle {"text":"The first memory of Aster returns.","color":"gray"}
title @s title {"text":"Memory restored","color":"gold"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“There. That is how I flew. Remember it with your whole body.”","italic":true,"color":"gray"}]
function stlboy:trial/give {id:"ring"}
function stlboy:trial/gift {item:"minecraft:amethyst_shard",n:4,name:"Amethyst Shard"}
function stlboy:trial/dust {n:40}
