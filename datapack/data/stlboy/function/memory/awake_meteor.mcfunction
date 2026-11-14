# Une Memoire d'Aster s'eveille (en tant que le joueur)
tag @s add stlboy_m_meteor
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.6
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.2
particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.2 60
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.5 40
tellraw @s ["",{"text":"\n✦ ","color":"gold"},{"translate":"stlboy.memory.awake","fallback":"A Memory awakens:","color":"gold"},{"text":" "},{"translate":"stlboy.memory.meteor.name","fallback":"Memory of the Meteor","color":"white","bold":true},{"text":"\n  "},{"translate":"stlboy.memory.meteor.lore","fallback":"Stone fell from the sky and you did not flinch.","color":"gray","italic":true},{"text":"\n  "},{"translate":"stlboy.memory.meteor.fx","fallback":"+20% knockback resistance, +1 cosmic damage on Constellations","color":"green"},{"text":"\n"}]
