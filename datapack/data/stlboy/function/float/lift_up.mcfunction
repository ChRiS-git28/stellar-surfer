# (Re)apparition : le Surfer se souleve du sol (en tant que le joueur). 2,5 blocs si la place le permet, sinon 1,2.
execute if block ~ ~2.5 ~ #stlboy:orb_passable if block ~ ~3.5 ~ #stlboy:orb_passable run return run tp @s ~ ~2.5 ~
execute if block ~ ~1.2 ~ #stlboy:orb_passable if block ~ ~2.2 ~ #stlboy:orb_passable run tp @s ~ ~1.2 ~
