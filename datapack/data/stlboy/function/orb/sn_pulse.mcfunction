# Pulsation de la Supernova (en tant que le joueur)
scoreboard players set @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.pt 0
effect give @e[tag=stlboy_sn_in] minecraft:darkness 3 0 true
effect give @a[tag=stlboy_sn_in] minecraft:blindness 3 0 true
execute at @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] run playsound stlboy:cosmic.wh_charge player @a ~ ~ ~ 0.5 0.6
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 0 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:2.0}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 1 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:2.35}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 2 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:2.565}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 3 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:2.745}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 4 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:2.89}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 5 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.188}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 6 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.28}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 7 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.337}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 8 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.36}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 9 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.605}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 10 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.575}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 11 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.51}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 12 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.41}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 13 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.603}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 14 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.45}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 15 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.263}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 16 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.04}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 17 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:3.18}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 18 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:2.905}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 19 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:2.595}
execute if score @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.lvl matches 20 as @e[tag=stlboy_sn_in] run function stlboy:cosmic/hit {cd:2.25}
