# Couleurs des etoiles et des traits selon l'etat de chaque competence (en tant que le Surfer, #own pose)
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_neptune] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_absorb] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn0,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl0,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn0,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl0,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn0,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl0,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn0,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn0,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn0,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn0,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_aurora] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_move] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn1,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl1,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn1,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl1,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn1,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl1,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn1,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn1,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn1,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn1,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_nebula] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn2,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl2,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn2,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl2,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn2,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl2,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn2,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn2,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn2,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn2,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_sun] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_thick] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn3,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl3,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn3,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl3,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn3,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl3,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn3,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn3,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn3,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn3,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_betelgeuse] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn4,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl4,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn4,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl4,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn4,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl4,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn4,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn4,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn4,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn4,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_aurora] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_move_jet] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn5,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl5,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn5,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl5,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn5,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl5,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn5,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn5,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn5,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn5,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_neptune] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_nova_stun] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn6,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl6,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn6,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl6,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn6,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl6,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn6,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn6,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn6,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn6,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_nebula] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_recoil] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn7,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl7,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn7,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl7,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn7,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl7,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn7,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn7,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn7,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn7,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_betelgeuse] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self_skin] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn8,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl8,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn8,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl8,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn8,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl8,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn8,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn8,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn8,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn8,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_sun] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_sun_heat] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn9,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl9,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn9,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl9,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn9,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl9,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn9,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn9,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn9,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn9,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_aurora] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_mag_xp] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn10,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl10,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn10,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl10,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn10,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl10,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn10,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn10,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn10,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn10,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_nova_stun] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_nep_void] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn11,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl11,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn11,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl11,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn11,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl11,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn11,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn11,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn11,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn11,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:cls_neptune] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_nova_crash] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn12,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl12,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn12,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl12,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn12,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl12,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn12,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn12,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn12,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn12,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_thick] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_edge1] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn13,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl13,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn13,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl13,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn13,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl13,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn13,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn13,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn13,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn13,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_far] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn14,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl14,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn14,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl14,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn14,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl14,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn14,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn14,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn14,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn14,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self_vit2] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn15,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl15,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn15,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl15,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn15,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl15,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn15,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn15,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn15,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn15,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_absorb] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_orb_devour] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn16,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl16,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn16,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl16,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn16,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl16,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn16,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn16,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn16,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn16,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_pen2] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn17,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl17,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn17,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl17,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn17,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl17,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn17,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn17,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn17,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn17,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self_guard] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn18,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl18,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn18,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl18,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn18,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl18,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn18,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn18,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn18,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn18,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_move] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_speed1] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn19,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl19,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn19,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl19,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn19,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl19,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn19,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn19,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn19,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn19,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_sun_heat] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_sun_comb] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn20,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl20,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn20,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl20,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn20,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl20,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn20,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn20,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn20,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn20,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_absorb] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_orb_linger] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn21,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl21,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn21,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl21,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn21,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl21,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn21,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn21,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn21,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn21,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_edge1] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_edge2] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn22,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl22,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn22,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl22,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn22,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl22,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn22,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn22,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn22,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn22,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_far] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_focus] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn23,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl23,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn23,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl23,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn23,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl23,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn23,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn23,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn23,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn23,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self_hunter] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn24,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl24,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn24,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl24,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn24,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl24,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn24,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn24,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn24,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn24,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_absorb] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_orb_dense] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn25,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl25,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn25,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl25,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn25,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl25,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn25,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn25,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn25,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn25,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_edge2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_edge3] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn26,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl26,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn26,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl26,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn26,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl26,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn26,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn26,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn26,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn26,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_far] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_wide] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn27,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl27,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn27,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl27,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn27,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl27,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn27,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn27,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn27,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn27,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self_guard] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self_ward] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn28,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl28,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn28,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl28,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn28,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl28,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn28,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn28,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn28,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn28,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_move] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_tide] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn29,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl29,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn29,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl29,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn29,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl29,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn29,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn29,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn29,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn29,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_mag_xp] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_mag_fast] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn30,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl30,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn30,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl30,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn30,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl30,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn30,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn30,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn30,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn30,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_absorb] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_orb_wide] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn31,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl31,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn31,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl31,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn31,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl31,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn31,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn31,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn31,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn31,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_pen2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_bind] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn32,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl32,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn32,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl32,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn32,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl32,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn32,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn32,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn32,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn32,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self_hunter] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self_stride] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn33,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl33,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn33,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl33,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn33,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl33,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn33,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn33,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn33,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn33,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_sun_comb] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_sun_crown] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn34,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl34,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn34,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl34,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn34,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl34,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn34,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn34,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn34,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn34,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self_vit2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_bet_thorns] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn35,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl35,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn35,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl35,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn35,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl35,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn35,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn35,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn35,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn35,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_nova_crash] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_nova_crash2] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn36,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl36,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn36,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl36,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn36,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl36,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn36,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn36,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn36,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn36,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_pen2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_deadeye] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn37,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl37,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn37,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl37,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn37,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl37,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn37,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn37,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn37,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn37,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_far] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_ward] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn38,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl38,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn38,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl38,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn38,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl38,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn38,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn38,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn38,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn38,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_speed1] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_speed2] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn39,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl39,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn39,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl39,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn39,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl39,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn39,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn39,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn39,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn39,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_edge3] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ult_flare] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn40,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl40,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn40,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl40,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn40,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl40,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn40,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn40,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn40,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn40,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_bet_thorns] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_bet_last] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn41,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl41,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn41,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl41,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn41,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl41,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn41,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn41,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn41,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn41,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_absorb] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_boss_bane] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn42,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl42,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn42,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl42,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn42,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl42,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn42,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn42,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn42,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn42,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_pen2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_boss_fracture] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn43,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl43,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn43,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl43,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn43,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl43,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn43,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn43,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn43,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn43,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_move] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_move_dodge2] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn44,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl44,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn44,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl44,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn44,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl44,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn44,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn44,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn44,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn44,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ult_flare] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_sun_nova] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn45,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl45,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn45,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl45,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn45,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl45,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn45,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn45,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn45,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn45,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:cls_nebula] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn46,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl46,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn46,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl46,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn46,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl46,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn46,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn46,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn46,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn46,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_tide] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_move_veil] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn47,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl47,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn47,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl47,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn47,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl47,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn47,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn47,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn47,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn47,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_boss_bane] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_nep_bridge] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn48,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl48,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn48,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl48,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn48,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl48,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn48,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn48,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn48,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn48,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_far] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ray_rain] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn49,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl49,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn49,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl49,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn49,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl49,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn49,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn49,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn49,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn49,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_bet_last] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ult_neutron] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn50,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl50,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn50,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl50,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn50,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl50,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn50,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn50,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn50,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn50,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_tide] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_move_wake] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn51,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl51,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn51,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl51,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn51,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl51,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn51,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn51,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn51,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn51,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_ray_rain] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_neb_skymap] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn52,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl52,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn52,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl52,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5916287
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn52,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl52,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 11832575
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn52,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:11832575}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn52,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn52,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn52,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_speed2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_speed3] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn53,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl53,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn53,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl53,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn53,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl53,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn53,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn53,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn53,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn53,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_mag_fast] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_mag_reach] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn54,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl54,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn54,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl54,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn54,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl54,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn54,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn54,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn54,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn54,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_move_dodge2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_move_ghost] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn55,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl55,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn55,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl55,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn55,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl55,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn55,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn55,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn55,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn55,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_move_dodge2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_move_nroll] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn56,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl56,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn56,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl56,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn56,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl56,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn56,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn56,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn56,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn56,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_speed3] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_aur_ring] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn57,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl57,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn57,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl57,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn57,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl57,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn57,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn57,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn57,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn57,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_mag_reach] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ult_harvest] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn58,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl58,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn58,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl58,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn58,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl58,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn58,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn58,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn58,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn58,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_speed3] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_ult_light] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn59,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl59,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn59,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl59,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn59,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl59,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn59,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn59,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn59,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn59,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:cls_sun] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn60,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl60,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn60,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl60,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn60,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl60,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn60,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn60,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn60,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn60,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:cls_neptune] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn61,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl61,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn61,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl61,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2577535
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn61,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl61,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 5220607
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn61,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:5220607}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn61,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn61,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn61,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_bet_shell] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_bet_mass] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn62,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl62,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn62,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl62,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn62,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl62,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn62,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn62,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn62,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn62,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self_skin] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_bet_shell] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn63,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl63,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn63,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl63,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn63,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl63,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn63,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn63,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn63,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn63,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self_vit2] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self_vit3] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn64,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl64,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn64,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl64,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn64,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl64,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn64,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn64,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn64,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn64,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_self_vit3] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_self_vit4] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn65,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl65,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn65,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl65,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn65,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl65,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn65,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn65,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn65,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn65,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_sun_crown] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_sun_corona2] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn66,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl66,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn66,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl66,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn66,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl66,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn66,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn66,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn66,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn66,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_sun_heat] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_sun_heat2] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn67,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl67,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn67,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl67,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn67,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl67,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn67,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn67,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn67,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn67,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute if entity @s[skill=stlboy:sk_sun_comb] run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:sk_sun_photo] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn68,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl68,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn68,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl68,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8347941
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn68,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl68,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16761418
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn68,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16761418}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn68,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn68,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn68,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:cls_aurora] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn69,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl69,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn69,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl69,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4095832
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn69,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl69,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8257456
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn69,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:8257456}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn69,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn69,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn69,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set #ts stlboy.tmp 0
execute run scoreboard players set #ts stlboy.tmp 1
execute if entity @s[skill=stlboy:cls_betelgeuse] run scoreboard players set #ts stlboy.tmp 2
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn70,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 4210778
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_tl70,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 2763322
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn70,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 13215487
execute if score #ts stlboy.tmp matches 1 as @e[type=minecraft:item_display,tag=stlboy_tl70,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 8336676
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn70,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tl70,predicate=stlboy:owned] run data modify entity @s item.components."minecraft:dyed_color".rgb set value 16738888
execute if score #ts stlboy.tmp matches 2 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn70,predicate=stlboy:owned] run data merge entity @s {Glowing:1b,glow_color_override:16738888}
execute if score #ts stlboy.tmp matches ..1 as @e[type=minecraft:item_display,tag=stlboy_tbg,tag=stlboy_tn70,predicate=stlboy:owned] run data merge entity @s {Glowing:0b}
execute if score #ts stlboy.tmp matches 0 as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn70,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:4,block:4}}
execute if score #ts stlboy.tmp matches 1.. as @e[type=minecraft:item_display,tag=stlboy_ticon,tag=stlboy_tn70,predicate=stlboy:owned] run data merge entity @s {brightness:{sky:15,block:15}}
