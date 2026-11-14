# Rituel de l'Ancre d'etoile : tracer sa constellation (en tant que le Surfer, accroupi et immobile)
# star_anchor_charge = ticks ecoules depuis le debut du rituel
execute store result score #ac stlboy.tmp run resource get @s stlboy:star_anchor_charge
# il faut un Eclat d'amethyste sur soi (consume a la fin du rituel)
execute unless items entity @s container.* minecraft:amethyst_shard unless items entity @s weapon.offhand minecraft:amethyst_shard run return run function stlboy:anchor/need
execute if score #ac stlboy.tmp matches 0 run function stlboy:anchor/spawn
resource change @s stlboy:star_anchor_charge 1
execute store result score #ac stlboy.tmp run resource get @s stlboy:star_anchor_charge
# trop long : les etoiles se taisent
execute if score #ac stlboy.tmp matches 400.. run return run function stlboy:anchor/cancel
# regard : l'etoile fixee (a 10 blocs des yeux) se charge, puis s'allume
execute anchored eyes positioned ^ ^ ^10 as @e[type=minecraft:marker,tag=stlboy_anc,tag=!stlboy_anc_lit,distance=..1.4,predicate=stlboy:owned,limit=1] run function stlboy:anchor/gaze
# rendu des etoiles (une image sur deux, pour les petits PC)
scoreboard players operation #ap stlboy.tmp = #ac stlboy.tmp
scoreboard players operation #ap stlboy.tmp %= #c2 stlboy.const
execute if score #ap stlboy.tmp matches 0 as @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned] at @s run function stlboy:anchor/star_fx
# progression
execute store result score #al stlboy.tmp if entity @e[type=minecraft:marker,tag=stlboy_anc_lit,predicate=stlboy:owned]
execute if score #al stlboy.tmp matches 0 run title @s actionbar {"text":"· · · ","color":"aqua","extra":[{"translate":"stlboy.anchor.trace","fallback":"Trace your constellation…","color":"gray","italic":true}]}
execute if score #al stlboy.tmp matches 1 run title @s actionbar {"text":"✦ · · ","color":"aqua","extra":[{"translate":"stlboy.anchor.trace","fallback":"Trace your constellation…","color":"gray","italic":true}]}
execute if score #al stlboy.tmp matches 2 run title @s actionbar {"text":"✦ ✦ · ","color":"aqua","extra":[{"translate":"stlboy.anchor.trace","fallback":"Trace your constellation…","color":"gray","italic":true}]}
execute if score #al stlboy.tmp matches 3.. run function stlboy:anchor/bind
