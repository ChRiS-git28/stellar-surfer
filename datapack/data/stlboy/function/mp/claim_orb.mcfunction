# Une orbe appartient au Surfer qui l'a invoquee (en tant que l'orbe)
scoreboard players set #oc stlboy.tmp 0
execute on owner run scoreboard players operation #oc stlboy.tmp = @s stlboy.sid
execute if score #oc stlboy.tmp matches 0 at @s run scoreboard players operation #oc stlboy.tmp = @p[tag=stlboy_surfer] stlboy.sid
scoreboard players operation @s stlboy.own = #oc stlboy.tmp
