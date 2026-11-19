# Pas d'Eclat d'amethyste : le rituel ne peut pas commencer (ou s'eteint) (en tant que le Surfer)
execute store result score #ac stlboy.tmp run resource get @s stlboy:star_anchor_charge
execute if score #ac stlboy.tmp matches 1.. run function stlboy:anchor/cancel
resource set @s stlboy:star_anchor_cd 40
playsound stlboy:cosmic.shard player @s ~ ~ ~ 0.8 0.6
title @s actionbar {"text":"✦ ","color":"light_purple","extra":[{"translate":"stlboy.anchor.need","fallback":"The stars need a crystal to remember you: carry an Amethyst Shard.","color":"gray","italic":true}]}
