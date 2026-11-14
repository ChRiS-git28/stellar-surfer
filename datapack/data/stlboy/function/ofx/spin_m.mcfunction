# (macro : i = pas lent, j = pas rapide)
$execute as @e[type=minecraft:item_display,tag=stlboy_ofx_tumble,tag=!stlboy_ofx_die] run data modify entity @s transformation.left_rotation set from storage stlboy:ofx tumble[$(i)]
$execute as @e[type=minecraft:item_display,tag=stlboy_ofx_spin,tag=!stlboy_ofx_die] run data modify entity @s transformation.left_rotation set from storage stlboy:ofx spin[$(i)]
$execute as @e[type=minecraft:item_display,tag=stlboy_ofx_spin2,tag=!stlboy_ofx_die] run data modify entity @s transformation.left_rotation set from storage stlboy:ofx spin[$(j)]
$execute as @e[type=minecraft:item_display,tag=stlboy_ofx_roll,tag=!stlboy_ofx_die] run data modify entity @s transformation.left_rotation set from storage stlboy:ofx roll[$(i)]
execute as @e[type=minecraft:item_display,tag=stlboy_ofx,tag=!stlboy_ofx_die,tag=!stlboy_ofx_pulse,predicate=stlboy:owned] run data merge entity @s {start_interpolation:0,interpolation_duration:4}
