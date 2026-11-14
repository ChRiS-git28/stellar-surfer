execute facing entity @p feet run particle minecraft:end_rod ^2 ^ ^ 0 0 0 0 1 force
execute facing entity @p feet run particle minecraft:end_rod ^1.41 ^1.41 ^ 0 0 0 0 1 force
execute facing entity @p feet run particle minecraft:end_rod ^ ^2 ^ 0 0 0 0 1 force
execute facing entity @p feet run particle minecraft:end_rod ^-1.41 ^1.41 ^ 0 0 0 0 1 force
execute facing entity @p feet run particle minecraft:end_rod ^-2 ^ ^ 0 0 0 0 1 force
execute facing entity @p feet run particle minecraft:end_rod ^-1.41 ^-1.41 ^ 0 0 0 0 1 force
execute facing entity @p feet run particle minecraft:end_rod ^ ^-2 ^ 0 0 0 0 1 force
execute facing entity @p feet run particle minecraft:end_rod ^1.41 ^-1.41 ^ 0 0 0 0 1 force
particle minecraft:dust_color_transition{from_color:[0.4,0.9,1.0],scale:1.4,to_color:[0.8,0.4,1.0]} ~ ~ ~ 0.5 0.5 0.5 0 2 force
execute if entity @a[distance=..2.4,tag=stlboy_surfer,scores={stlboy.tr=1}] run function stlboy:trial/ring_get
