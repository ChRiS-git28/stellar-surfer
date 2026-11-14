# Les dix Memoires resonnent : le passage vers le Rang 10 s'ouvre (en tant que le joueur, une fois)
tag @s add stlboy_lock10
resource set @s stlboy:stardust_lock_10 1
advancement grant @s only stlboy:stardust/offer_memories
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 0.7
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.4
particle minecraft:end_rod ~ ~1 ~ 0.6 1 0.6 0.15 80
tellraw @s ["",{"text":"\n✦ ","color":"gold"},{"translate":"stlboy.memory.all","fallback":"The ten Memories resonate as one — the way to Rank 10 is open.","color":"gold","bold":true},{"text":"\n"}]
