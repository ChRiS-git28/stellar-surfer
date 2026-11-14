# (macro) avance d'un pas vers la cible si le chemin est libre
$execute facing entity @e[type=marker,tag=stlboy_aim_$(t),limit=1] feet positioned ^ ^ ^$(s) if block ~ ~ ~ #stlboy:orb_passable run tp @s ~ ~ ~
