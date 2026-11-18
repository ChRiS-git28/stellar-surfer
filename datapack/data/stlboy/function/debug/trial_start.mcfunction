# Lance une epreuve sans conditions de Rang ni de ciel (macro id) : /function stlboy:debug/trial_start {id:"ring"}
function stlboy:trial/clean
$tag @s remove stlboy_t_$(tid)
$function stlboy:trial/start_$(id)
$tellraw @s [{"text":"[debug] epreuve lancee : ","color":"gray"},{"text":"$(id)","color":"light_purple"}]
