# Nettoyage complet quand un joueur perd l'origine Stellar Surfer (en tant que l'ancien Surfer)
# appele par le pouvoir cache stlboy:cleanup (entity_action_lost)
tag @s remove stlboy_aim
tag @s remove stlboy_bt
tag @s remove stlboy_chron
tag @s remove stlboy_compat
tag @s remove stlboy_dying
tag @s remove stlboy_free
tag @s remove stlboy_frozen
tag @s remove stlboy_glared
tag @s remove stlboy_guard
tag @s remove stlboy_m_constellation
tag @s remove stlboy_m_dragon
tag @s remove stlboy_m_echo
tag @s remove stlboy_m_horizon
tag @s remove stlboy_m_meteor
tag @s remove stlboy_m_mirror
tag @s remove stlboy_m_motes
tag @s remove stlboy_m_ring
tag @s remove stlboy_m_supernova
tag @s remove stlboy_m_wither
tag @s remove stlboy_mg
tag @s remove stlboy_orb
tag @s remove stlboy_orb_nova
tag @s remove stlboy_orb_weak
tag @s remove stlboy_orb_well
tag @s remove stlboy_prism_hit
tag @s remove stlboy_rc
tag @s remove stlboy_shr_cur
tag @s remove stlboy_sk_absorb
tag @s remove stlboy_sk_anchor
tag @s remove stlboy_sk_bane
tag @s remove stlboy_sk_bind
tag @s remove stlboy_sk_boost
tag @s remove stlboy_sk_boost2
tag @s remove stlboy_sk_dead
tag @s remove stlboy_sk_dense
tag @s remove stlboy_sk_dodge
tag @s remove stlboy_sk_dodge2
tag @s remove stlboy_sk_edge1
tag @s remove stlboy_sk_edge2
tag @s remove stlboy_sk_edge3
tag @s remove stlboy_sk_far
tag @s remove stlboy_sk_focus
tag @s remove stlboy_sk_force
tag @s remove stlboy_sk_fracture
tag @s remove stlboy_sk_ghost
tag @s remove stlboy_sk_hunter
tag @s remove stlboy_sk_linger
tag @s remove stlboy_sk_mag
tag @s remove stlboy_sk_mfast
tag @s remove stlboy_sk_mv
tag @s remove stlboy_sk_mwide
tag @s remove stlboy_sk_mxp
tag @s remove stlboy_sk_nova
tag @s remove stlboy_sk_stun
tag @s remove stlboy_sk_nroll
tag @s remove stlboy_sk_orb
tag @s remove stlboy_sk_owide
tag @s remove stlboy_sk_pen2
tag @s remove stlboy_sk_pen3
tag @s remove stlboy_sk_ray
tag @s remove stlboy_sk_rng1
tag @s remove stlboy_sk_rng2
tag @s remove stlboy_sk_scholar
tag @s remove stlboy_sk_siphon
tag @s remove stlboy_sk_sn
tag @s remove stlboy_sk_swift
tag @s remove stlboy_sk_thick
tag @s remove stlboy_sk_veil
tag @s remove stlboy_sk_wake
tag @s remove stlboy_sk_well
tag @s remove stlboy_sk_wide
tag @s remove stlboy_sn_in
tag @s remove stlboy_surfer
tag @s remove stlboy_vgrown
tag @s remove stlboy_vsn
function stlboy:origin/rv1
function stlboy:origin/rv2
function stlboy:origin/rv3
function stlboy:origin/rv4
apoli:skill_tree reset @s
apoli:skill_tree points set @s stlboy:stellar 0
effect clear @s minecraft:water_breathing
effect clear @s minecraft:darkness
effect clear @s minecraft:slow_falling
advancement revoke @s from stlboy:chronicle/root
function stlboy:trial/clean
scoreboard players reset @s stlboy.bstars
scoreboard players reset @s stlboy.cad
scoreboard players reset @s stlboy.chain
scoreboard players reset @s stlboy.cid
scoreboard players reset @s stlboy.dl
scoreboard players reset @s stlboy.dust
scoreboard players reset @s stlboy.dx
scoreboard players reset @s stlboy.dy
scoreboard players reset @s stlboy.dz
scoreboard players reset @s stlboy.fall
scoreboard players reset @s stlboy.fly
scoreboard players reset @s stlboy.fmk
scoreboard players reset @s stlboy.juggle
scoreboard players reset @s stlboy.kstart
scoreboard players reset @s stlboy.kwin
scoreboard players reset @s stlboy.life
scoreboard players reset @s stlboy.lvl
scoreboard players reset @s stlboy.nd
scoreboard players reset @s stlboy.ox
scoreboard players reset @s stlboy.oy
scoreboard players reset @s stlboy.oz
scoreboard players reset @s stlboy.pt
scoreboard players reset @s stlboy.py
scoreboard players reset @s stlboy.rank
scoreboard players reset @s stlboy.rayd
scoreboard players reset @s stlboy.rayt
scoreboard players reset @s stlboy.res
scoreboard players reset @s stlboy.rk
scoreboard players reset @s stlboy.slot
scoreboard players reset @s stlboy.sntot
scoreboard players reset @s stlboy.stars
scoreboard players reset @s stlboy.throw
scoreboard players reset @s stlboy.tick
scoreboard players reset @s stlboy.total
scoreboard players reset @s stlboy.tr
scoreboard players reset @s stlboy.trh
scoreboard players reset @s stlboy.trr
scoreboard players reset @s stlboy.trt
scoreboard players reset @s stlboy.vy
scoreboard players reset @s stlboy.wd
scoreboard players reset @s stlboy.y
bossbar set stlboy:trial players
title @s actionbar ""
# plus aucun Surfer dans le monde : retire orbes, rayon, sanctuaires et affichages
execute unless entity @a[tag=stlboy_surfer] run function stlboy:load
execute unless entity @a[tag=stlboy_surfer] run kill @e[tag=stlboy_orb]
execute unless entity @a[tag=stlboy_surfer] run kill @e[tag=stlboy_shrine]
execute unless entity @a[tag=stlboy_surfer] run kill @e[tag=stlboy_beam]
