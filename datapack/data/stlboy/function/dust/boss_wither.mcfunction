scoreboard players operation #own stlboy.tmp = @s stlboy.sid
# Boss tue : +300 de Poussiere pour le Surfer (en tant que le joueur)
execute if entity @s[tag=stlboy_surfer] run resource change @s stlboy:stardust_gain 300
execute if entity @s[tag=stlboy_surfer] run playsound stlboy:cosmic.on player @a ~ ~ ~ 1 1.5
execute if entity @s[tag=stlboy_surfer] run particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.8 0.4 0.5 60
execute if entity @s[tag=stlboy_surfer] run title @s actionbar {"text":"✦ +300 Stardust ✦","color":"light_purple"}
execute if entity @s[tag=stlboy_surfer] run function stlboy:trial/give {id:"wither"}
advancement revoke @s only stlboy:dust/boss_wither
