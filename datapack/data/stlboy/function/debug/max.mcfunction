# MAX : Rang 10, verrous, dix Memoires, tous les avancements, chronique complete, points de competence
function stlboy:debug/unlock
advancement grant @s from stlboy:stardust/root
advancement grant @s from stlboy:chronicle/root
tag @s add stlboy_chron
tag @s add stlboy_t_ring
tag @s add stlboy_t_meteor
tag @s add stlboy_t_constellation
tag @s add stlboy_t_motes
tag @s add stlboy_t_mirror
tag @s add stlboy_t_echo
tag @s add stlboy_t_horizon
tag @s add stlboy_t_wither
tag @s add stlboy_t_supernova
tag @s add stlboy_t_dragon
tag @s add stlboy_lock10
resource set @s stlboy:stardust_lock_10 1
apoli:skill_tree points set @s stlboy:stellar 99
resource set @s stlboy:stardust_rank 10
resource set @s stlboy:stardust_total 20250
schedule function stlboy:debug/dust 15t
tellraw @s {"text":"[debug] MAX : rang 10, dix Memoires, tous les avancements, 99 points de competence","color":"gray"}
