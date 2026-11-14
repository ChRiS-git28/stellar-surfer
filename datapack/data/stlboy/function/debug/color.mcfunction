# Essaie une palette sans changer de classe : /function stlboy:debug/color {s:2}  (1 Nebuleuse, 2 Soleil, 3 Neptune, 4 Aurore, 5 Betelgeuse)
# {s:0} rend la palette de ta classe. Les orbes deja posees gardent leur teinte.
$scoreboard players set @s stlboy.palx $(s)
$tellraw @s [{"text":"[debug] ","color":"gray"},{"translate":"stlboy.debug.color","fallback":"Surfer colour set to %s","with":[{"translate":"stlboy.mp.c$(s)","fallback":"class"}]}]
