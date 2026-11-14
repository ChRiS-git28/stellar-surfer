# Execution (en tant que la cible)
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.8 0.4 0.6 60
playsound stlboy:cosmic.beam_burst player @a ~ ~ ~ 0.6 1.8
playsound stlboy:cosmic.awaken player @a ~ ~ ~ 0.4 2.0
execute if entity @s[type=player] run resource change @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy:stardust_gain 10
function stlboy:cosmic/hit {cd:1000}
execute as @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] run function stlboy:breath/reward
advancement grant @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] only stlboy:stardust/first_execution
