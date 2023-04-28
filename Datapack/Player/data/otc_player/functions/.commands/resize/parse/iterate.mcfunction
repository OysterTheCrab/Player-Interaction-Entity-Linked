data modify storage otc_interact:parse char set string storage otc_interact:parse string 0 1
data modify storage otc_interact:parse string set string storage otc_interact:parse string 1

scoreboard players reset $digit otcInteract
execute if data storage otc_interact:parse {char:"0"} run scoreboard players set $digit otcInteract 0
execute if data storage otc_interact:parse {char:"1"} run scoreboard players set $digit otcInteract 1
execute if data storage otc_interact:parse {char:"2"} run scoreboard players set $digit otcInteract 2
execute if data storage otc_interact:parse {char:"3"} run scoreboard players set $digit otcInteract 3
execute if data storage otc_interact:parse {char:"4"} run scoreboard players set $digit otcInteract 4
execute if data storage otc_interact:parse {char:"5"} run scoreboard players set $digit otcInteract 5
execute if data storage otc_interact:parse {char:"6"} run scoreboard players set $digit otcInteract 6
execute if data storage otc_interact:parse {char:"7"} run scoreboard players set $digit otcInteract 7
execute if data storage otc_interact:parse {char:"8"} run scoreboard players set $digit otcInteract 8
execute if data storage otc_interact:parse {char:"9"} run scoreboard players set $digit otcInteract 9

execute if data storage otc_interact:parse {char:"."} run scoreboard players set $decimal_places otcInteract 0

execute if score $digit otcInteract matches 0..9 run function otc_player:.commands/resize/parse/constant
execute if score $digit otcInteract matches 0..9 if score $decimal_places otcInteract matches 0.. run scoreboard players add $decimal_places otcInteract 1

execute unless data storage otc_interact:parse {string:""} run function otc_player:.commands/resize/parse/iterate
execute as @s[tag=otcModifyWidth] at @s if data storage otc_interact:parse {string:""} run function otc_player:.commands/resize/width/resize
execute as @s[tag=otcModifyHeight] at @s if data storage otc_interact:parse {string:""} run function otc_player:.commands/resize/height/resize