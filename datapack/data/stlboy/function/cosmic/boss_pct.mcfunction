# Starbreaker : +2 % des PV max d'un boss (plafond 30 coeurs) ajoutes a la Constellation (en tant que le boss)
execute store result score #mh stlboy.tmp run attribute @s minecraft:generic.max_health get
scoreboard players operation #bp stlboy.tmp = #mh stlboy.tmp
scoreboard players set #c5 stlboy.tmp 5
scoreboard players operation #bp stlboy.tmp /= #c5 stlboy.tmp
execute if score #bp stlboy.tmp matches 300.. run scoreboard players set #bp stlboy.tmp 300
scoreboard players operation #cdmg stlboy.tmp += #bp stlboy.tmp
