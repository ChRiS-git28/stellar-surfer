# Remet a zero tous les temps de recharge : /function stlboy:debug/cooldowns
resource set @s stlboy:graviton_well_cd 0
resource set @s stlboy:graviton_nova_cd 0
resource set @s stlboy:graviton_sn_cd 0
resource set @s stlboy:flight_boost_cd 0
resource set @s stlboy:float_dodge_cd 0
resource set @s stlboy:surge_roll_cd 0
resource set @s stlboy:surge_cooldown 0
resource set @s stlboy:stellar_breath_charge 0
resource set @s stlboy:stellar_breath_need_release 0
tellraw @s {"text":"Temps de recharge remis a zero.","color":"green"}
