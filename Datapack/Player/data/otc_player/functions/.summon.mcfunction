# Sets the player's id to the current id
scoreboard players operation $current otcInteract = @s otcInteract

# Summons the interaction entity
execute summon interaction run function otc_player:init