# DEBUG : pose un Autel dechu (la structure du monde) 12 blocs devant toi
execute positioned ^ ^ ^12 positioned over motion_blocking_no_leaves run place structure stlboy:fallen_altar
tellraw @s {"text":"[debug] Autel dechu pose. Il s eveille dans la seconde si une epreuve de ton Rang est disponible.","color":"gray"}
