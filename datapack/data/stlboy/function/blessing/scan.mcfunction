# Cherche un anneau lie a ce joueur (main secondaire, inventaire, emplacement Curios) (macro : u)
$execute if items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:1,w:$(u)}] run scoreboard players set @s stlboy.bl 1
$execute if items entity @s container.* minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:1,w:$(u)}] run scoreboard players set @s stlboy.bl 1
$execute if score @s stlboy.bl matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{stlboy_ring:1b,bound:1b,sid:1,w:$(u)}}}]}] run scoreboard players set @s stlboy.bl 1
$execute if items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:2,w:$(u)}] run scoreboard players set @s stlboy.bl 2
$execute if items entity @s container.* minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:2,w:$(u)}] run scoreboard players set @s stlboy.bl 2
$execute if score @s stlboy.bl matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{stlboy_ring:1b,bound:1b,sid:2,w:$(u)}}}]}] run scoreboard players set @s stlboy.bl 2
$execute if items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:3,w:$(u)}] run scoreboard players set @s stlboy.bl 3
$execute if items entity @s container.* minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:3,w:$(u)}] run scoreboard players set @s stlboy.bl 3
$execute if score @s stlboy.bl matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{stlboy_ring:1b,bound:1b,sid:3,w:$(u)}}}]}] run scoreboard players set @s stlboy.bl 3
$execute if items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:4,w:$(u)}] run scoreboard players set @s stlboy.bl 4
$execute if items entity @s container.* minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:4,w:$(u)}] run scoreboard players set @s stlboy.bl 4
$execute if score @s stlboy.bl matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{stlboy_ring:1b,bound:1b,sid:4,w:$(u)}}}]}] run scoreboard players set @s stlboy.bl 4
$execute if items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:5,w:$(u)}] run scoreboard players set @s stlboy.bl 5
$execute if items entity @s container.* minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b,bound:1b,sid:5,w:$(u)}] run scoreboard players set @s stlboy.bl 5
$execute if score @s stlboy.bl matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{stlboy_ring:1b,bound:1b,sid:5,w:$(u)}}}]}] run scoreboard players set @s stlboy.bl 5
