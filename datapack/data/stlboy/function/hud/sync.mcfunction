# Recopie la vie restante des orbes et du champ de Supernova dans des jauges (en tant que le joueur)
data modify storage stlboy:hud w set value 0
data modify storage stlboy:hud n set value 0
data modify storage stlboy:hud s set value 0
execute if entity @e[tag=stlboy_orb_well,predicate=stlboy:owned] store result storage stlboy:hud w int 1 run scoreboard players get @e[tag=stlboy_orb_well,limit=1,predicate=stlboy:owned] stlboy.life
execute if entity @e[tag=stlboy_orb_nova,predicate=stlboy:owned] store result storage stlboy:hud n int 1 run scoreboard players get @e[tag=stlboy_orb_nova,limit=1,predicate=stlboy:owned] stlboy.life
execute if entity @e[type=marker,tag=stlboy_sn,predicate=stlboy:owned] store result storage stlboy:hud s int 1 run scoreboard players get @e[type=marker,tag=stlboy_sn,limit=1,predicate=stlboy:owned] stlboy.life
# Jauge de recharge de la Supernova en pourcentage (sa duree varie)
data modify storage stlboy:hud p set value 100
execute store result score #cd stlboy.tmp run resource get @s stlboy:graviton_sn_cd
execute if score #cd stlboy.tmp matches 1.. run scoreboard players operation #p stlboy.tmp = @s stlboy.sntot
execute if score #cd stlboy.tmp matches 1.. run scoreboard players operation #p stlboy.tmp -= #cd stlboy.tmp
execute if score #cd stlboy.tmp matches 1.. run scoreboard players operation #p stlboy.tmp *= #100 stlboy.const
execute if score #cd stlboy.tmp matches 1.. run scoreboard players operation #p stlboy.tmp /= @s stlboy.sntot
execute if score #cd stlboy.tmp matches 1.. store result storage stlboy:hud p int 1 run scoreboard players get #p stlboy.tmp
function stlboy:hud/apply with storage stlboy:hud
