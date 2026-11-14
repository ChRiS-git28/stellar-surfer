# L'anneau se lie a son porteur : inutile a un voleur (macro : u)
$item modify entity @s weapon.offhand [{"function":"minecraft:set_custom_data","tag":"{bound:1b,w:$(u)}"},{"function":"minecraft:set_lore","entity":"this","mode":"append","lore":[{"translate":"stlboy.ring.bound","fallback":"Bound to %s","color":"gray","italic":false,"with":[{"selector":"@s"}]}]}]
playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.7 1.8
title @s actionbar {"translate":"stlboy.ring.bound_msg","fallback":"✦ The ring knows its wearer now. In any other hand it is only glass.","color":"aqua"}
