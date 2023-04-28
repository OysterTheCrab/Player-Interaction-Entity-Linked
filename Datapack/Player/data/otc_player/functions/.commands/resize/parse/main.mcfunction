data modify storage otc_interact:parse string set string entity @s SelectedItem.tag.pages[0]
scoreboard players reset $decimal_places otcInteract
scoreboard players reset $all_digits otcInteract

function otc_player:.commands/resize/parse/iterate

execute unless score $decimal_places otcInteract matches 1.. store result storage otc_interact:parse val float 1 run scoreboard players get $all_digits otcInteract
execute if score $decimal_places otcInteract matches 1 store result storage otc_interact:parse val float 0.1 run scoreboard players get $all_digits otcInteract
execute if score $decimal_places otcInteract matches 2 store result storage otc_interact:parse val float 0.01 run scoreboard players get $all_digits otcInteract
execute if score $decimal_places otcInteract matches 3 store result storage otc_interact:parse val float 0.001 run scoreboard players get $all_digits otcInteract
execute if score $decimal_places otcInteract matches 4 store result storage otc_interact:parse val float 0.0001 run scoreboard players get $all_digits otcInteract
