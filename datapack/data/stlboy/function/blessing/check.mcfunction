# Anneau Star Blessing (en tant que chaque joueur, toutes les 10 ticks)
execute unless entity @s[tag=stlboy_rcp2] run function stlboy:blessing/learn
data modify storage stlboy:mp u set from entity @s UUID
# un anneau en main secondaire, pas encore lie, se lie a celui qui le porte
execute if items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b}] unless items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{bound:1b}] run function stlboy:blessing/bind with storage stlboy:mp
# rituel d'alignement : un Surfer tient un anneau non aligne et le regarde 2 s
execute if entity @s[tag=stlboy_surfer,x_rotation=60..90] if items entity @s weapon.mainhand minecraft:echo_shard[minecraft:custom_data~{stlboy_ring:1b}] unless items entity @s weapon.mainhand minecraft:echo_shard[minecraft:custom_data~{aligned:1b}] run function stlboy:blessing/align_tick
execute unless entity @s[tag=stlboy_surfer,x_rotation=60..90] run scoreboard players set @s stlboy.rr 0
# protection : seul l'anneau lie a CE joueur compte, et il protege du Surfer auquel il est aligne
scoreboard players set @s stlboy.bl 0
function stlboy:blessing/scan with storage stlboy:mp
execute if score @s stlboy.bl matches 1.. unless entity @s[tag=stlboy_blessed] run function stlboy:blessing/on
execute if score @s stlboy.bl matches 0 if entity @s[tag=stlboy_blessed] run function stlboy:blessing/off
