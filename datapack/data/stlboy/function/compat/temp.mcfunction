# Corps de lumiere : ni chaud, ni froid, ni soif (toutes les 5 s, effets caches de 12 s).
# Un appel par effet : si un mod n'est pas installe, seul son appel echoue, sans rien casser.
# Legendary Survival Overhaul (ids verifies dans le code du mod, branche 1.21.1)
function stlboy:compat/eff {id:"legendarysurvivaloverhaul:temperature_immunity"}
function stlboy:compat/eff {id:"legendarysurvivaloverhaul:hydration_fill"}
function stlboy:compat/clr {id:"legendarysurvivaloverhaul:thirst"}
function stlboy:compat/clr {id:"legendarysurvivaloverhaul:heat_thirst"}
# Tough As Nails
function stlboy:compat/eff {id:"toughasnails:climate_clemency"}
function stlboy:compat/clr {id:"toughasnails:thirst"}
# Cold Sweat
function stlboy:compat/eff {id:"cold_sweat:grace"}
