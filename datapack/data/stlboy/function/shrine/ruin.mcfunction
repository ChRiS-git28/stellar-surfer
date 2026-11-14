# Le souvenir est restaure : le sanctuaire s'eteint
particle minecraft:end_rod ~ ~1.5 ~ 0.5 0.8 0.5 0.15 40
playsound minecraft:block.beacon.deactivate player @a[distance=..40] ~ ~ ~ 0.8 1.2
setblock ~ ~1 ~ minecraft:air
kill @e[tag=stlboy_shrine,distance=..4]
