scoreboard players add #os stlboy.tmp 1
execute if score #os stlboy.tmp matches ..6 if entity @e[tag=stlboy_orb_nova,distance=..1.5,predicate=stlboy:owned] run return run scoreboard players set #prism stlboy.tmp 1
execute if score #os stlboy.tmp matches 7.. if entity @e[tag=stlboy_orb_nova,distance=..2.4,predicate=stlboy:owned] run return run scoreboard players set #prism stlboy.tmp 1
execute if score #os stlboy.tmp matches 36.. run return 0
execute positioned ^ ^ ^1 if block ~ ~ ~ #stlboy:orb_passable run function stlboy:breath/check_prism_step
