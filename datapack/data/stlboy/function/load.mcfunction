# Objectifs et nettoyage de l'origine
scoreboard objectives add stlboy.y dummy
scoreboard objectives add stlboy.py dummy
scoreboard objectives add stlboy.vy dummy
scoreboard objectives add stlboy.fall dummy
scoreboard objectives add stlboy.throw dummy
scoreboard objectives add stlboy.juggle dummy
scoreboard objectives add stlboy.tick dummy
scoreboard objectives add stlboy.tmp dummy
scoreboard objectives add stlboy.const dummy
scoreboard objectives add stlboy.life dummy
scoreboard objectives add stlboy.ox dummy
scoreboard objectives add stlboy.oy dummy
scoreboard objectives add stlboy.oz dummy
scoreboard objectives add stlboy.dx dummy
scoreboard objectives add stlboy.dy dummy
scoreboard objectives add stlboy.dz dummy
scoreboard players set #9 stlboy.const 9
scoreboard players set #10 stlboy.const 10
scoreboard players set #20 stlboy.const 20
scoreboard players set #4 stlboy.const 4
scoreboard players set #cm1 stlboy.const -1
scoreboard players set #5 stlboy.const 5
scoreboard players set #100 stlboy.const 100
scoreboard objectives add stlboy.sntot dummy
scoreboard players set #12 stlboy.const 12
scoreboard objectives add stlboy.lvl dummy
scoreboard objectives add stlboy.slot dummy
scoreboard objectives add stlboy.pt dummy
scoreboard objectives add stlboy.wd dummy
scoreboard objectives add stlboy.nd dummy
tag @e[tag=stlboy_grip] remove stlboy_grip
kill @e[type=marker,tag=stlboy_well]
kill @e[type=marker,tag=stlboy_aim_well]
kill @e[type=marker,tag=stlboy_aim_nova]
execute as @e[tag=stlboy_frozen] run function stlboy:orb/unfreeze
kill @e[type=marker,tag=stlboy_sn]
kill @e[type=marker,tag=stlboy_anc]
scoreboard players set #c2 stlboy.const 2
scoreboard players set #c20 stlboy.const 20
execute as @e[tag=stlboy_sn_in] run function stlboy:orb/sn_leave
scoreboard objectives add stlboy.stars dummy
scoreboard objectives add stlboy.cid dummy
scoreboard objectives add stlboy.kstart dummy
scoreboard objectives add stlboy.kwin dummy
scoreboard objectives add stlboy.rk dummy
scoreboard objectives add stlboy.chain dummy
scoreboard objectives add stlboy.fly dummy
scoreboard objectives add stlboy.bstars dummy
tag @e[tag=stlboy_bt] remove stlboy_bt
scoreboard players set #25 stlboy.const 25
scoreboard players set #180 stlboy.const 180
kill @e[tag=stlboy_beam]
kill @e[tag=stlboy_cst]
kill @e[type=minecraft:marker,tag=stlboy_dir]
function stlboy:breath/shapes_init
scoreboard players set #200 stlboy.const 200
scoreboard players set #-1 stlboy.const -1
scoreboard players set #40 stlboy.const 40
kill @e[tag=stlboy_vis]
scoreboard objectives add stlboy.cad dummy
scoreboard objectives add stlboy.dl dummy
scoreboard objectives add stlboy.res dummy
scoreboard objectives add stlboy.rayd dummy
scoreboard objectives add stlboy.rayt dummy
scoreboard players set #rayv stlboy.const 1
scoreboard objectives add stlboy.deaths deathCount
scoreboard objectives add stlboy.trr dummy
# HUD Sigil : menu de reglages (/trigger stlboy.hud) et grains de lumiere
scoreboard objectives add stlboy.hud trigger
kill @e[type=minecraft:item_display,tag=stlboy_mote]
kill @e[type=minecraft:item_display,tag=stlboy_shard]
function stlboy:ofx/init
kill @e[type=minecraft:item_display,tag=stlboy_ofx]

# --- Multi-Surfer (jusqu'a 5) ---
scoreboard objectives add stlboy.sid dummy
scoreboard objectives add stlboy.pal dummy
scoreboard objectives add stlboy.cwait dummy
scoreboard objectives add stlboy.bage dummy
scoreboard objectives add stlboy.clast dummy
scoreboard objectives add stlboy.gate dummy
scoreboard objectives add stlboy.whday dummy
scoreboard objectives add stlboy.palx dummy
scoreboard objectives add stlboy.own dummy
scoreboard objectives add stlboy.oid dummy
scoreboard objectives add stlboy.cown dummy
scoreboard objectives add stlboy.bl dummy
scoreboard objectives add stlboy.rr dummy
scoreboard players set #taxp stlboy.const 0
scoreboard objectives add stlboy.fl dummy
scoreboard objectives add stlboy.fv dummy
scoreboard objectives add stlboy.wj dummy
kill @e[type=minecraft:marker,tag=stlboy_sn_exit]
