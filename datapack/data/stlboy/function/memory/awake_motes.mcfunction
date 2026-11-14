# Une Memoire d'Aster s'eveille (en tant que le joueur)
tag @s add stlboy_m_motes
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.6
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.2 60
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.5 40
tellraw @s ["",{"text":"\n✦ ","color":"gold"},{"translate":"stlboy.memory.awake","fallback":"A Memory awakens:","color":"gold"},{"text":" "},{"translate":"stlboy.memory.motes.name","fallback":"Memory of the Hunger","color":"white","bold":true},{"text":"\n  "},{"translate":"stlboy.memory.motes.lore","fallback":"The stars are always hungry. So are you. Together you feed.","color":"gray","italic":true},{"text":"\n  "},{"translate":"stlboy.memory.motes.fx","fallback":"+25% mining speed, +1 Stardust per kill","color":"green"},{"text":"\n"}]
