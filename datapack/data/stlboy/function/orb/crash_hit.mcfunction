# Choc contre un mur (macro d)
$execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] run return run damage @s $(d) minecraft:fly_into_wall by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
$damage @s $(d) minecraft:fly_into_wall
