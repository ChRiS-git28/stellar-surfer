function stlboy:trial/clean
title @s subtitle {"text":"You slipped the end of a star.","color":"gray"}
title @s title {"text":"Memory restored","color":"gold"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“You escaped what took me. Now go — finish what I began.”","italic":true,"color":"gray"}]
function stlboy:trial/give {id:"horizon"}
function stlboy:skills/point
function stlboy:trial/gift {item:"minecraft:echo_shard",n:4,name:"Echo Shard"}
function stlboy:trial/dust {n:180}
