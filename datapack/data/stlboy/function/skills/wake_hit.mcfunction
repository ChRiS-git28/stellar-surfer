# Sillage cometaire : degats cosmiques autour du joueur en vol (en tant que le joueur)
particle minecraft:dust_color_transition{from_color:[1.0,0.55,0.2],scale:1.2,to_color:[0.7,0.4,1.0]} ~ ~0.8 ~ 0.5 0.5 0.5 0 10
particle minecraft:flame ~ ~0.8 ~ 0.4 0.4 0.4 0.02 3
execute as @e[distance=..3,type=!minecraft:player,type=!#stlboy:no_wake,tag=!stlboy_orb,predicate=!stlboy:owner] run function stlboy:cosmic/hit {cd:2}
