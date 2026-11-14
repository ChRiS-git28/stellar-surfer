# Lie la piece a son orbe (meme identifiant, meme Surfer) et la fait grandir (macro : s)
scoreboard players operation @s stlboy.oid = #oid stlboy.tmp
scoreboard players operation @s stlboy.own = #own stlboy.tmp
tag @s remove stlboy_ofx_new
$data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[$(s)f,$(s)f,$(s)f]}}
