$give @s $(item) $(n)
$tellraw @s ["",{"text":"✦ ","color":"gold"},{"text":"Aster leaves you a gift: ","color":"gray","italic":true},{"text":"$(n)× $(name)","color":"aqua"}]
playsound stlboy:cosmic.rankup player @s ~ ~ ~ 0.7 1.8
