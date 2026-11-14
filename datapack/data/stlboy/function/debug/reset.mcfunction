# Remet tout a zero : Rang, barres, verrous
resource set @s stlboy:stardust_gain 0
resource set @s stlboy:stardust_rank 0
resource set @s stlboy:stardust_tier_0 0
resource set @s stlboy:stardust_tier_1 0
resource set @s stlboy:stardust_tier_2 0
resource set @s stlboy:stardust_tier_3 0
resource set @s stlboy:stardust_tier_4 0
resource set @s stlboy:stardust_tier_5 0
resource set @s stlboy:stardust_tier_6 0
resource set @s stlboy:stardust_lock_3 0
resource set @s stlboy:stardust_lock_5 0
resource set @s stlboy:stardust_lock_6 0
resource set @s stlboy:stardust_lock_7 0
resource set @s stlboy:stardust_total 0
resource set @s stlboy:stardust_level 0
function stlboy:debug/cooldowns
apoli:skill_tree reset @s
apoli:skill_tree points set @s stlboy:stellar 0
tag @s remove stlboy_sk_ray
tag @s remove stlboy_sk_focus
tag @s remove stlboy_sk_wide
tag @s remove stlboy_sk_orb
tag @s remove stlboy_sk_devour
tag @s remove stlboy_sk_linger
tag @s remove stlboy_sk_hunter
tag @s remove stlboy_sk_dead
tag @s remove stlboy_sk_swift
tag @s remove stlboy_sk_scholar
tag @s remove stlboy_sk_force
tag @s remove stlboy_sk_owide
tag @s remove stlboy_sk_dense
tag @s remove stlboy_sk_far
tag @s remove stlboy_sk_bind
tag @s remove stlboy_sk_mag
tag @s remove stlboy_sk_mwide
tag @s remove stlboy_sk_mxp
tag @s remove stlboy_sk_dodge
tag @s remove stlboy_sk_boost
tag @s remove stlboy_sk_wake
tag @s remove stlboy_sk_veil
tag @s remove stlboy_sk_nroll
tag @s remove stlboy_sk_ghost
tag @s remove stlboy_sk_mv
tag @s remove stlboy_sk_mfast
tag @s remove stlboy_sk_siphon
tag @s remove stlboy_dodged
tag @s remove stlboy_sk_pen2
tag @s remove stlboy_sk_pen3
tag @s remove stlboy_sk_thick
tag @s remove stlboy_sk_rng1
tag @s remove stlboy_sk_rng2
tag @s remove stlboy_sk_dodge2
tag @s remove stlboy_sk_boost2
tag @s remove stlboy_sk_well
tag @s remove stlboy_sk_nova
tag @s remove stlboy_sk_stun
tag @s remove stlboy_sk_sn
tag @s remove stlboy_sk_anchor
tag @s remove stlboy_mg
tag @s remove stlboy_sk_absorb
tag @s remove stlboy_chron
advancement revoke @s from stlboy:chronicle/root
function stlboy:trial/clean
tag @s remove stlboy_t_ring
tag @s remove stlboy_t_meteor
tag @s remove stlboy_t_echo
tag @s remove stlboy_t_horizon
tag @s remove stlboy_t_wither
tag @s remove stlboy_t_dragon
tag @s remove stlboy_t_beacon
tag @s remove stlboy_t_constellation
tag @s remove stlboy_t_motes
tag @s remove stlboy_t_supernova
tag @s remove stlboy_t_mirror
tag @s remove stlboy_compat
tag @s remove stlboy_guard
tag @s remove stlboy_blessed
tag @s remove stlboy_recipe
tag @s remove stlboy_rcp2
effect clear @s minecraft:water_breathing
tag @s remove stlboy_sk_edge1
tag @s remove stlboy_sk_edge2
tag @s remove stlboy_sk_edge3
tag @s remove stlboy_sk_fracture
tag @s remove stlboy_sk_bane
tag @s remove stlboy_m_ring
tag @s remove stlboy_m_meteor
tag @s remove stlboy_m_constellation
tag @s remove stlboy_m_motes
tag @s remove stlboy_m_mirror
tag @s remove stlboy_m_echo
tag @s remove stlboy_m_horizon
tag @s remove stlboy_m_wither
tag @s remove stlboy_m_supernova
tag @s remove stlboy_m_dragon
schedule function stlboy:debug/dust 5t
kill @e[tag=stlboy_shrine]
