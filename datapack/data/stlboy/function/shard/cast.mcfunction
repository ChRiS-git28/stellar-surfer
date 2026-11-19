# Eclat stellaire (en tant que le Surfer) : instantane, jamais interrompu
execute store result score #sc stlboy.tmp run resource get @s stlboy:shard_charges
execute if score #sc stlboy.tmp matches ..0 run return run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 0.5 0.6
resource change @s stlboy:shard_charges -1
function stlboy:fig/shard
execute anchored eyes positioned ^ ^-0.15 ^0.8 summon minecraft:item_display run function stlboy:shard/init
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 0.8 1.9
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.35 2.0
