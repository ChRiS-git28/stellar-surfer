# Une Memoire d'Aster s'eveille (en tant que le joueur)
tag @s add stlboy_m_dragon
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.6
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.2 60
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.5 40
tellraw @s ["",{"text":"\n✦ ","color":"gold"},{"translate":"stlboy.memory.awake","fallback":"A Memory awakens:","color":"gold"},{"text":" "},{"translate":"stlboy.memory.dragon.name","fallback":"Memory of the Dragon","color":"white","bold":true},{"text":"\n  "},{"translate":"stlboy.memory.dragon.lore","fallback":"The last sky-ruler fell. The sky is yours, and it knows.","color":"gray","italic":true},{"text":"\n  "},{"translate":"stlboy.memory.dragon.fx","fallback":"+3 hearts, +2 cosmic damage on Constellations, +1 reach","color":"green"},{"text":"\n"}]
