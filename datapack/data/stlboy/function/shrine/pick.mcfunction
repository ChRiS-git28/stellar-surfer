# Choisit un emplacement a 32-56 blocs (macro : id), en tant que le Surfer
$data modify storage stlboy:shr id set value "$(id)"
execute store result score #sx stlboy.tmp run random value 32..56
execute store result score #sz stlboy.tmp run random value 32..56
execute store result score #sa stlboy.tmp run random value 0..3
execute if score #sa stlboy.tmp matches 1 run scoreboard players operation #sx stlboy.tmp *= #-1 stlboy.const
execute if score #sa stlboy.tmp matches 2 run scoreboard players operation #sz stlboy.tmp *= #-1 stlboy.const
execute if score #sa stlboy.tmp matches 3 run scoreboard players operation #sx stlboy.tmp *= #-1 stlboy.const
execute if score #sa stlboy.tmp matches 3 run scoreboard players operation #sz stlboy.tmp *= #-1 stlboy.const
execute store result storage stlboy:shr x int 1 run scoreboard players get #sx stlboy.tmp
execute store result storage stlboy:shr z int 1 run scoreboard players get #sz stlboy.tmp
function stlboy:shrine/pick_m with storage stlboy:shr
