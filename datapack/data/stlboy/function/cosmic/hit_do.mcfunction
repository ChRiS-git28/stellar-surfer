# (macro cd) applique le coup cosmique, attribue au Surfer proprietaire
$execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] run return run damage @s $(cd) stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
# repli : proprietaire introuvable (sid pas encore attribue) -> le coup passe quand meme, sans attaquant
$damage @s $(cd) stlboy:cosmic
