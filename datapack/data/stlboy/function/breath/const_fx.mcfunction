# Constellation complete : derniere etoile, le trait qui referme la figure, puis elle s'embrase et s'eteint (en tant que la cible)
# (si l'ancienne figure de cette cible s'eteint encore, on ne dessine pas par-dessus) PREV_FADE
$execute if entity @e[type=minecraft:item_display,tag=stlboy_cdone,scores={stlboy.cid=$(cid)},predicate=stlboy:owned] run tag @s add stlboy_cskip
$execute unless entity @s[tag=stlboy_cskip] unless entity @e[type=minecraft:item_display,tag=stlboy_s4,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},predicate=stlboy:owned] run function stlboy:breath/vis/s4 with storage stlboy:breath cur
$execute unless entity @s[tag=stlboy_cskip] unless entity @e[type=minecraft:item_display,tag=stlboy_l3,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},predicate=stlboy:owned] run function stlboy:breath/vis/l3 with storage stlboy:breath cur
execute unless entity @s[tag=stlboy_cskip] run function stlboy:breath/vis/l4 with storage stlboy:breath cur
$scoreboard players set @e[tag=stlboy_cst,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},predicate=stlboy:owned] stlboy.life 18
$tag @e[tag=stlboy_cst,tag=!stlboy_cdone,scores={stlboy.cid=$(cid)},predicate=stlboy:owned] add stlboy_cdone
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
playsound stlboy:cosmic.chime player @a ~ ~ ~ 1 2.0
playsound stlboy:cosmic.chime player @a ~ ~ ~ 0.8 2.0
playsound stlboy:cosmic.resonate player @a ~ ~ ~ 1 1.5
playsound stlboy:cosmic.chime player @a ~ ~ ~ 0.8 1.4
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_uflare,limit=1] run function stlboy:breath/flare_burst
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_skymap,limit=1] run function stlboy:cls/neb_chain
tag @s remove stlboy_cskip
