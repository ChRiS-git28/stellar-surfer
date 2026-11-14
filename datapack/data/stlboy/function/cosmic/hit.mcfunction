# Coup cosmique unique (en tant que la cible) : les porteurs de l'anneau sont epargnes
$execute unless entity @s[predicate=stlboy:ally] if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] run return run damage @s $(cd) stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
# repli : proprietaire introuvable (sid pas encore attribue) -> le coup passe quand meme, sans attaquant
$execute unless entity @s[predicate=stlboy:ally] run damage @s $(cd) stlboy:cosmic
