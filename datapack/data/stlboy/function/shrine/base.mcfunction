# Sanctuaire en ruine : piliers effondres, arche moussue, flore cyan et colonne de lumiere annelee
# (en tant que le Surfer, a la position du sanctuaire). La lumiere et les anneaux s'eteignent avec l'epreuve ; les ruines restent.
fill ~-4 ~ ~-4 ~4 ~9 ~4 minecraft:air
# sol : dalles de deepslate fissurees, mousse et terre
fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 minecraft:moss_block
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:cracked_deepslate_tiles
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:deepslate_tiles
setblock ~ ~-1 ~ minecraft:chiseled_tuff_bricks
setblock ~-2 ~-1 ~2 minecraft:mossy_cobblestone
setblock ~2 ~-1 ~-2 minecraft:coarse_dirt
setblock ~1 ~-1 ~2 minecraft:moss_block
setblock ~-2 ~-1 ~-1 minecraft:moss_block
setblock ~ ~ ~ minecraft:chiseled_polished_blackstone
setblock ~ ~1 ~ minecraft:light[level=13]
# arche effondree au fond
fill ~-3 ~ ~-4 ~3 ~1 ~-4 minecraft:cobbled_deepslate
fill ~-2 ~2 ~-4 ~2 ~2 ~-4 minecraft:deepslate_bricks
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 minecraft:cracked_deepslate_bricks
setblock ~ ~4 ~-4 minecraft:chiseled_deepslate
setblock ~-3 ~2 ~-4 minecraft:mossy_cobblestone
setblock ~3 ~2 ~-4 minecraft:cobbled_deepslate_wall
setblock ~ ~1 ~-4 minecraft:air
setblock ~ ~2 ~-4 minecraft:air
setblock ~-1 ~2 ~-4 minecraft:mossy_cobblestone
# pilier gauche : pierres empilees de travers
fill ~-3 ~ ~-1 ~-3 ~3 ~-1 minecraft:cobbled_deepslate
setblock ~-3 ~1 ~-1 minecraft:chiseled_tuff_bricks
setblock ~-3 ~4 ~-1 minecraft:tuff_bricks
setblock ~-4 ~4 ~-1 minecraft:polished_tuff
setblock ~-3 ~5 ~-1 minecraft:chiseled_tuff_bricks
setblock ~-3 ~6 ~ minecraft:cobbled_deepslate
setblock ~-2 ~6 ~ minecraft:tuff_bricks
setblock ~-2 ~7 ~ minecraft:chiseled_tuff
setblock ~-4 ~ ~-1 minecraft:mossy_cobblestone
setblock ~-3 ~ ~ minecraft:cobbled_deepslate_stairs[facing=east]
# pilier droit
fill ~3 ~ ~-1 ~3 ~2 ~-1 minecraft:mossy_cobblestone
setblock ~3 ~3 ~-1 minecraft:polished_tuff
setblock ~3 ~4 ~-1 minecraft:chiseled_tuff_bricks
setblock ~4 ~4 ~-1 minecraft:cobbled_deepslate
setblock ~3 ~5 ~-1 minecraft:tuff_bricks
setblock ~3 ~6 ~-2 minecraft:cobbled_deepslate
setblock ~3 ~ ~ minecraft:tuff_brick_stairs[facing=west]
setblock ~4 ~ ~ minecraft:mossy_cobblestone
# lichens luisants sur les pierres
setblock ~-3 ~2 ~ minecraft:glow_lichen[north=true]
setblock ~3 ~1 ~ minecraft:glow_lichen[north=true]
setblock ~ ~2 ~-3 minecraft:glow_lichen[north=true]
# flore cyan et herbes hautes
setblock ~-2 ~ ~1 minecraft:blue_orchid
setblock ~2 ~ ~2 minecraft:blue_orchid
setblock ~-1 ~ ~3 minecraft:cornflower
setblock ~1 ~ ~-3 minecraft:blue_orchid
setblock ~-4 ~ ~2 minecraft:tall_grass[half=lower]
setblock ~-4 ~1 ~2 minecraft:tall_grass[half=upper]
setblock ~4 ~ ~-3 minecraft:tall_grass[half=lower]
setblock ~4 ~1 ~-3 minecraft:tall_grass[half=upper]
setblock ~3 ~ ~3 minecraft:short_grass
setblock ~-3 ~ ~-3 minecraft:short_grass
setblock ~2 ~ ~-1 minecraft:fern
setblock ~-1 ~ ~-2 minecraft:fern
# colonne de lumiere cyan qui monte au ciel, cerclee de trois anneaux de cuivre oxyde
summon minecraft:item_display ~ ~ ~ {Tags:["stlboy_shrine","stlboy_shr_beam"],Rotation:[0f,-90f],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":7120,"minecraft:dyed_color":{rgb:4188376,show_in_tooltip:false}}},item_display:"none",brightness:{sky:15,block:15},view_range:4f,shadow_radius:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,20f],scale:[1.1f,1.1f,40f]}}
summon minecraft:block_display ~-0.7 ~4 ~-0.7 {Tags:["stlboy_shrine","stlboy_shr_ring3"],block_state:{Name:"minecraft:oxidized_copper_grate"},brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,0.3f,1.4f]}}
summon minecraft:block_display ~-0.7 ~8 ~-0.7 {Tags:["stlboy_shrine","stlboy_shr_ring3"],block_state:{Name:"minecraft:oxidized_copper_grate"},brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,0.3f,1.4f]}}
summon minecraft:block_display ~-0.7 ~12 ~-0.7 {Tags:["stlboy_shrine","stlboy_shr_ring3"],block_state:{Name:"minecraft:oxidized_copper_grate"},brightness:{sky:15,block:12},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,0.3f,1.4f]}}
summon minecraft:block_display ~-0.35 ~4.3 ~-0.35 {Tags:["stlboy_shrine","stlboy_shr_ring3"],block_state:{Name:"minecraft:prismarine"},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,1.4f,0.7f]}}
summon minecraft:block_display ~-0.35 ~8.3 ~-0.35 {Tags:["stlboy_shrine","stlboy_shr_ring3"],block_state:{Name:"minecraft:prismarine"},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,1.4f,0.7f]}}
summon minecraft:block_display ~-0.35 ~12.3 ~-0.35 {Tags:["stlboy_shrine","stlboy_shr_ring3"],block_state:{Name:"minecraft:prismarine"},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,1.4f,0.7f]}}
playsound stlboy:cosmic.on player @s ~ ~ ~ 0.6 1.4
playsound minecraft:block.beacon.activate player @a[distance=..48] ~ ~ ~ 0.8 1.3
