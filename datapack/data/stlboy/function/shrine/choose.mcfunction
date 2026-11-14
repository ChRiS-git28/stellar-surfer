# Choisit la prochaine epreuve selon le Rang -> storage stlboy:shr id ; renvoie 1 si une epreuve est disponible (en tant que le Surfer)
execute store result score #rk stlboy.tmp run resource get @s stlboy:stardust_rank
execute unless entity @s[tag=stlboy_t_ring] if score #rk stlboy.tmp matches 1.. run return run function stlboy:shrine/set {id:"ring"}
execute unless entity @s[tag=stlboy_t_meteor] if score #rk stlboy.tmp matches 2.. run return run function stlboy:shrine/set {id:"meteor"}
execute unless entity @s[tag=stlboy_t_constellation] if score #rk stlboy.tmp matches 3.. run return run function stlboy:shrine/set {id:"const"}
execute unless entity @s[tag=stlboy_t_motes] if score #rk stlboy.tmp matches 3.. if entity @s[tag=stlboy_sk_well] run return run function stlboy:shrine/set {id:"motes"}
execute unless entity @s[tag=stlboy_t_echo] if score #rk stlboy.tmp matches 4.. run return run function stlboy:shrine/set {id:"echo"}
execute unless entity @s[tag=stlboy_t_mirror] if score #rk stlboy.tmp matches 5.. if entity @s[tag=stlboy_sk_nova] run return run function stlboy:shrine/set {id:"mirror"}
execute unless entity @s[tag=stlboy_t_horizon] if score #rk stlboy.tmp matches 6.. run return run function stlboy:shrine/set {id:"horizon"}
return 0
