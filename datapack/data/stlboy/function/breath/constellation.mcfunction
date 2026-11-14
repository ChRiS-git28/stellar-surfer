# Constellation ! (en tant que la cible)
execute if entity @s[tag=stlboy_tr_cecho] run function stlboy:trial/c_hit
scoreboard players set @s stlboy.stars 0
function stlboy:breath/const_fx with storage stlboy:breath cur
resource change @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy:stellar_breath_siphon 1
# Degats cosmiques de la Constellation : base FIXE (4) + competences + Memoires, en UN seul coup
scoreboard players set #cdmg stlboy.tmp 40
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_edge1,limit=1] run scoreboard players add #cdmg stlboy.tmp 10
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_edge2,limit=1] run scoreboard players add #cdmg stlboy.tmp 15
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_edge3,limit=1] run scoreboard players add #cdmg stlboy.tmp 25
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_t_meteor,limit=1] run scoreboard players add #cdmg stlboy.tmp 5
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_t_wither,limit=1] run scoreboard players add #cdmg stlboy.tmp 5
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_t_dragon,limit=1] run scoreboard players add #cdmg stlboy.tmp 10
scoreboard players set #c3 stlboy.tmp 3
scoreboard players set #c2 stlboy.tmp 2
execute if score #fly stlboy.tmp matches 1 run scoreboard players operation #cdmg stlboy.tmp *= #c3 stlboy.tmp
execute if score #fly stlboy.tmp matches 1 run scoreboard players operation #cdmg stlboy.tmp /= #c2 stlboy.tmp
execute if entity @s[type=#c:bosses] if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_fracture,limit=1] run function stlboy:cosmic/boss_pct
execute store result storage stlboy:tmp cd double 0.1 run scoreboard players get #cdmg stlboy.tmp
function stlboy:cosmic/hit with storage stlboy:tmp
execute if score @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.chain matches ..2 run scoreboard players add @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] stlboy.chain 1
execute if entity @s[type=!#c:bosses] run function stlboy:breath/exec_check
advancement grant @a[tag=stlboy_surfer,predicate=stlboy:owner,limit=1] only stlboy:stardust/first_constellation
execute if entity @a[tag=stlboy_surfer,predicate=stlboy:owner,tag=stlboy_sk_bind,limit=1] run effect give @s minecraft:slowness 3 2 true
# appartenance (multi-Surfer)
execute as @e[tag=stlboy_cst] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
execute as @e[tag=stlboy_vis] unless score @s stlboy.own matches 1.. run scoreboard players operation @s stlboy.own = #own stlboy.tmp
