# (macro d = degats) en tant que le Surfer
$execute as @e[tag=stlboy_sn_in] run damage @s $(d) stlboy:cosmic by @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1]
