# Une Memoire d'Aster s'eveille (en tant que le joueur)
tag @s add stlboy_m_constellation
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.6
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.2 60
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.5 40
tellraw @s ["",{"text":"\n✦ ","color":"gold"},{"translate":"stlboy.memory.awake","fallback":"A Memory awakens:","color":"gold"},{"text":" "},{"translate":"stlboy.memory.constellation.name","fallback":"Memory of the Constellations","color":"white","bold":true},{"text":"\n  "},{"translate":"stlboy.memory.constellation.lore","fallback":"You drew a map in light. Now the dark cannot hide from you.","color":"gray","italic":true},{"text":"\n  "},{"translate":"stlboy.memory.constellation.fx","fallback":"Night Vision, +2 luck, +1 reach","color":"green"},{"text":"\n"}]
