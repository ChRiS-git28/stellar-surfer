# Le rituel est rompu : les etoiles s'eteignent (en tant que le Surfer)
execute if entity @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned] run title @s actionbar {"text":"· ","color":"dark_gray","extra":[{"translate":"stlboy.anchor.fade","fallback":"The stars fall silent.","color":"dark_gray","italic":true}]}
execute at @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned] run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.01 3 force
kill @e[type=minecraft:marker,tag=stlboy_anc,predicate=stlboy:owned]
resource set @s stlboy:star_anchor_charge 0
