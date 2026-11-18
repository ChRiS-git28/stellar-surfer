# Oublie toutes les epreuves et Memoires (le Rang ne bouge pas)
function stlboy:trial/clean
tag @s remove stlboy_t_ring
tag @s remove stlboy_m_ring
tag @s remove stlboy_t_meteor
tag @s remove stlboy_m_meteor
tag @s remove stlboy_t_const
tag @s remove stlboy_m_const
tag @s remove stlboy_t_motes
tag @s remove stlboy_m_motes
tag @s remove stlboy_t_echo
tag @s remove stlboy_m_echo
tag @s remove stlboy_t_mirror
tag @s remove stlboy_m_mirror
tag @s remove stlboy_t_horizon
tag @s remove stlboy_m_horizon
tag @s remove stlboy_t_wither
tag @s remove stlboy_m_wither
tag @s remove stlboy_t_dragon
tag @s remove stlboy_m_dragon
tag @s remove stlboy_t_supernova
tag @s remove stlboy_m_supernova
tag @s remove stlboy_t_constellation
tag @s remove stlboy_m_constellation
advancement revoke @s from stlboy:chronicle/root
tellraw @s {"text":"[debug] epreuves et Memoires oubliees.","color":"gray"}
