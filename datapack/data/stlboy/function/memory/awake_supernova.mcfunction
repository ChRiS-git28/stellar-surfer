# Une Memoire d'Aster s'eveille (en tant que le joueur)
tag @s add stlboy_m_supernova
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.6
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.2 60
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.5 40
tellraw @s ["",{"text":"\n✦ ","color":"gold"},{"translate":"stlboy.memory.awake","fallback":"A Memory awakens:","color":"gold"},{"text":" "},{"translate":"stlboy.memory.supernova.name","fallback":"Memory of the Wormhole","color":"white","bold":true},{"text":"\n  "},{"translate":"stlboy.memory.supernova.lore","fallback":"You burned once, brighter than the sky. Flame is kin now.","color":"gray","italic":true},{"text":"\n  "},{"translate":"stlboy.memory.supernova.fx","fallback":"-8% magic damage, +5% speed, Fire Resistance","color":"green"},{"text":"\n"}]
