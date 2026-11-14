# Direction au hasard pour un grain (en tant que le grain)
execute store result entity @s Rotation[0] float 1 run random value -180..179
execute store result entity @s Rotation[1] float 1 run random value -80..80
tag @s add stlboy_mrot
