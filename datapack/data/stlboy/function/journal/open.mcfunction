# Journal d'Aster : panneau dynamique (en tant que le joueur)
execute unless entity @s[tag=stlboy_surfer] run return 0
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
execute store result score #tt stlboy.tmp run resource get @s stlboy:stardust_total
execute store result storage stlboy:jr r int 1 run scoreboard players get #rk stlboy.tmp
function stlboy:journal/bar_m with storage stlboy:jr
execute if score #rk stlboy.tmp matches 10 run scoreboard players operation #bar stlboy.tmp = #tt stlboy.tmp
execute if score #rk stlboy.tmp matches 10 run scoreboard players remove #bar stlboy.tmp 20250
execute if score #rk stlboy.tmp matches 0 run scoreboard players set #mx stlboy.tmp 200
execute if score #rk stlboy.tmp matches 1 run scoreboard players set #mx stlboy.tmp 400
execute if score #rk stlboy.tmp matches 2 run scoreboard players set #mx stlboy.tmp 650
execute if score #rk stlboy.tmp matches 3 run scoreboard players set #mx stlboy.tmp 1000
execute if score #rk stlboy.tmp matches 4 run scoreboard players set #mx stlboy.tmp 1400
execute if score #rk stlboy.tmp matches 5 run scoreboard players set #mx stlboy.tmp 1900
execute if score #rk stlboy.tmp matches 6 run scoreboard players set #mx stlboy.tmp 2500
execute if score #rk stlboy.tmp matches 7 run scoreboard players set #mx stlboy.tmp 3200
execute if score #rk stlboy.tmp matches 8 run scoreboard players set #mx stlboy.tmp 4000
execute if score #rk stlboy.tmp matches 9 run scoreboard players set #mx stlboy.tmp 5000
execute if score #rk stlboy.tmp matches 10 run scoreboard players set #mx stlboy.tmp 4750
scoreboard players operation #pc stlboy.tmp = #bar stlboy.tmp
scoreboard players operation #pc stlboy.tmp *= #100 stlboy.const
scoreboard players operation #pc stlboy.tmp /= #mx stlboy.tmp
tellraw @s ["",{"text":"\n✦ ","color":"gold"},{"translate":"stlboy.journal.title","fallback":"Aster's Journal","color":"gold","bold":true},{"text":" ✦","color":"gold"}]
function stlboy:journal/rank_m with storage stlboy:jr
function stlboy:journal/bar
execute store result score #lk stlboy.tmp run resource get @s stlboy:stardust_lock_3
execute if score #rk stlboy.tmp matches 2 if score #lk stlboy.tmp matches 0 run tellraw @s ["",{"text":"  ✧ ","color":"yellow"},{"translate":"stlboy.journal.offer","fallback":"Offering needed:","color":"yellow"},{"text":" Astral Crystal","color":"white"},{"text":" (Memories: Ring, Meteor)","color":"dark_gray"}]
execute store result score #lk stlboy.tmp run resource get @s stlboy:stardust_lock_5
execute if score #rk stlboy.tmp matches 4 if score #lk stlboy.tmp matches 0 run tellraw @s ["",{"text":"  ✧ ","color":"yellow"},{"translate":"stlboy.journal.offer","fallback":"Offering needed:","color":"yellow"},{"text":" Dead Star Core","color":"white"},{"text":" (Memories: Constellations, Hunger, Echo)","color":"dark_gray"}]
execute store result score #lk stlboy.tmp run resource get @s stlboy:stardust_lock_6
execute if score #rk stlboy.tmp matches 5 if score #lk stlboy.tmp matches 0 run tellraw @s ["",{"text":"  ✧ ","color":"yellow"},{"translate":"stlboy.journal.offer","fallback":"Offering needed:","color":"yellow"},{"text":" Void Echo","color":"white"},{"text":" (Memories: Mirror, Wither)","color":"dark_gray"}]
execute store result score #lk stlboy.tmp run resource get @s stlboy:stardust_lock_7
execute if score #rk stlboy.tmp matches 6 if score #lk stlboy.tmp matches 0 run tellraw @s ["",{"text":"  ✧ ","color":"yellow"},{"translate":"stlboy.journal.offer","fallback":"Offering needed:","color":"yellow"},{"text":" Supernova Heart","color":"white"},{"text":" (Memories: Horizon, Dragon)","color":"dark_gray"}]
execute store result score #lk stlboy.tmp run resource get @s stlboy:stardust_lock_10
execute if score #rk stlboy.tmp matches 9 if score #lk stlboy.tmp matches 0 run tellraw @s ["",{"text":"  ✧ ","color":"yellow"},{"translate":"stlboy.journal.offer","fallback":"Offering needed:","color":"yellow"},{"text":" ","color":"white"},{"translate":"stlboy.journal.offer10","fallback":"the ten Memories of Aster","color":"white"}]
function stlboy:journal/next
tellraw @s ["",{"text":"\n","color":"gray"},{"translate":"stlboy.journal.powers","fallback":"Powers","color":"light_purple","bold":true}]
execute if entity @s[tag=stlboy_sk_orb] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.orb","fallback":"Gravity Sense","color":"white"}]
execute unless entity @s[tag=stlboy_sk_orb] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.orb","fallback":"Gravity Sense","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
execute if entity @s[tag=stlboy_sk_well] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.well","fallback":"Gravity Well","color":"white"}]
execute unless entity @s[tag=stlboy_sk_well] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.well","fallback":"Gravity Well","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
execute if entity @s[tag=stlboy_sk_nova] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.nova","fallback":"White Hole","color":"white"}]
execute unless entity @s[tag=stlboy_sk_nova] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.nova","fallback":"White Hole","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
execute if entity @s[tag=stlboy_sk_sn] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.sn","fallback":"Wormhole","color":"white"}]
execute unless entity @s[tag=stlboy_sk_sn] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.sn","fallback":"Wormhole","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
execute if entity @s[tag=stlboy_sk_ray] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.ray","fallback":"Stellar Lens","color":"white"}]
execute unless entity @s[tag=stlboy_sk_ray] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.ray","fallback":"Stellar Lens","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
execute if entity @s[tag=stlboy_sk_mag] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.mag","fallback":"Stellar Magnetism","color":"white"}]
execute unless entity @s[tag=stlboy_sk_mag] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.mag","fallback":"Stellar Magnetism","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
execute if entity @s[tag=stlboy_sk_mv] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.mv","fallback":"Slipstream","color":"white"}]
execute unless entity @s[tag=stlboy_sk_mv] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.mv","fallback":"Slipstream","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
execute if entity @s[tag=stlboy_sk_absorb] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.absorb","fallback":"Matter Feast","color":"white"}]
execute unless entity @s[tag=stlboy_sk_absorb] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.absorb","fallback":"Matter Feast","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
execute if entity @s[tag=stlboy_sk_anchor] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.p.anchor","fallback":"Air Anchor","color":"white"}]
execute unless entity @s[tag=stlboy_sk_anchor] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.p.anchor","fallback":"Air Anchor","color":"dark_gray"},{"translate":"stlboy.journal.locked","fallback":" — locked","color":"dark_gray","italic":true}]
tellraw @s ["",{"text":"\n","color":"gray"},{"translate":"stlboy.journal.trials","fallback":"Trials of Aster","color":"gold","bold":true}]
execute if entity @s[tag=stlboy_t_ring] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.ring","fallback":"The Ring Run","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.ring.fx","fallback":"+2 hearts, +4 safe fall distance","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_ring] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.ring","fallback":"The Ring Run","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_meteor] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.meteor","fallback":"Meteor Rain","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.meteor.fx","fallback":"+20% knockback resistance, +1 cosmic damage on Constellations","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_meteor] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.meteor","fallback":"Meteor Rain","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_constellation] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.constellation","fallback":"Constellations","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.constellation.fx","fallback":"Night Vision, +2 luck, +1 reach","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_constellation] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.constellation","fallback":"Constellations","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_motes] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.motes","fallback":"The Hunger","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.motes.fx","fallback":"+25% mining speed, +1 Stardust per kill","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_motes] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.motes","fallback":"The Hunger","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_mirror] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.mirror","fallback":"The Mirror","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.mirror.fx","fallback":"-10% projectile damage, -10% magic damage","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_mirror] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.mirror","fallback":"The Mirror","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_echo] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.echo","fallback":"Echo Siege","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.echo.fx","fallback":"+10% speed, immune to Darkness","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_echo] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.echo","fallback":"Echo Siege","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_horizon] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.horizon","fallback":"Event Horizon","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.horizon.fx","fallback":"+2 hearts, fall damage -50%","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_horizon] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.horizon","fallback":"Event Horizon","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_wither] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.wither","fallback":"The Wither","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.wither.fx","fallback":"+2 hearts, +1 cosmic damage on Constellations, immune to Wither","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_wither] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.wither","fallback":"The Wither","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_supernova] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.supernova","fallback":"First Wormhole","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.supernova.fx","fallback":"-8% magic damage, +5% speed, Fire Resistance","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_supernova] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.supernova","fallback":"First Wormhole","color":"dark_gray"}]
execute if entity @s[tag=stlboy_t_dragon] run tellraw @s ["",{"text":"  ✦ ","color":"green"},{"translate":"stlboy.journal.t.dragon","fallback":"The Dragon","color":"white"},{"text":" — ","color":"dark_gray"},{"translate":"stlboy.memory.dragon.fx","fallback":"+3 hearts, +2 cosmic damage on Constellations, +1 reach","color":"dark_green"}]
execute unless entity @s[tag=stlboy_t_dragon] run tellraw @s ["",{"text":"  ✧ ","color":"dark_gray"},{"translate":"stlboy.journal.t.dragon","fallback":"The Dragon","color":"dark_gray"}]
tellraw @s ["",{"translate":"stlboy.journal.foot","fallback":"Trials wait at shrines and Fallen Altars in the world. Dying costs a tenth of the current bar.","color":"gray","italic":true},{"text":"\n"}]
