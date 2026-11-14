# (macro : s = identifiant du Surfer, c = couleur)
$item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":"{aligned:1b,sid:$(s)}"},{"function":"minecraft:set_name","entity":"this","target":"item_name","name":{"translate":"stlboy.ring.aligned","fallback":"Star Blessing · %s","color":"$(c)","italic":false,"with":[{"selector":"@s"}]}}]
