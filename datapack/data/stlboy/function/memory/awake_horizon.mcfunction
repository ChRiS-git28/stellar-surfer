# Une Memoire d'Aster s'eveille (en tant que le joueur)
tag @s add stlboy_m_horizon
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.6
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.2 60
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.5 40
tellraw @s ["",{"text":"\n✦ ","color":"gold"},{"translate":"stlboy.memory.awake","fallback":"A Memory awakens:","color":"gold"},{"text":" "},{"translate":"stlboy.memory.horizon.name","fallback":"Memory of the Horizon","color":"white","bold":true},{"text":"\n  "},{"translate":"stlboy.memory.horizon.lore","fallback":"You stood at the edge of the well and chose to stay. Falling is a choice now.","color":"gray","italic":true},{"text":"\n  "},{"translate":"stlboy.memory.horizon.fx","fallback":"+2 hearts, fall damage -50%","color":"green"},{"text":"\n"}]
