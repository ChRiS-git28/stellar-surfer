# Reduit la duree #fl (ticks) : Protection contre le feu -15 % par niveau sur l'armure (max -80 %), puis resistance au feu magique (Iron's Spells)
scoreboard players set #fpl stlboy.tmp 0
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:1}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:2}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:3}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:4}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:1}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:2}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:3}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:4}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:1}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:2}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:3}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:4}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:1}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:2}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:3}}]] run scoreboard players add #fpl stlboy.tmp 1
execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection",levels:{min:4}}]] run scoreboard players add #fpl stlboy.tmp 1
scoreboard players set #c15 stlboy.tmp 15
scoreboard players operation #fpl stlboy.tmp *= #c15 stlboy.tmp
execute if score #fpl stlboy.tmp matches 81.. run scoreboard players set #fpl stlboy.tmp 80
scoreboard players set #fkeep stlboy.tmp 100
scoreboard players operation #fkeep stlboy.tmp -= #fpl stlboy.tmp
scoreboard players operation #fl stlboy.tmp *= #fkeep stlboy.tmp
scoreboard players set #c100 stlboy.tmp 100
scoreboard players operation #fl stlboy.tmp /= #c100 stlboy.tmp
# resistance au feu magique (attribut d'Iron's Spells, lu par macro : sans le mod, la commande echoue sans rien casser)
scoreboard players set #fmr stlboy.tmp 0
execute store result score #fmr stlboy.tmp run function stlboy:cls/flare_attr {a:"irons_spellbooks:fire_magic_resist"}
execute if score #fmr stlboy.tmp matches 101.. run scoreboard players operation #fl stlboy.tmp *= #c100 stlboy.tmp
execute if score #fmr stlboy.tmp matches 101.. run scoreboard players operation #fl stlboy.tmp /= #fmr stlboy.tmp
execute if score #fl stlboy.tmp matches ..9 run scoreboard players set #fl stlboy.tmp 10
