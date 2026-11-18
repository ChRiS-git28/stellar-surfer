# Chronique (toutes les secondes, en tant que le joueur)
execute unless entity @s[tag=stlboy_surfer] run return 0
function stlboy:trial/setup
execute unless entity @s[tag=stlboy_chron] run function stlboy:trial/init
execute unless entity @s[tag=stlboy_compat2] run function stlboy:compat/grant
function stlboy:shrine/seek
