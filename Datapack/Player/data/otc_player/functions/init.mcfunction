# Sets the player's id to the current id
scoreboard players operation $current otcInteract = @s otcInteract

# Link the player and interaction entity
scoreboard players operation @e[type=interaction,tag=otcInteract,tag=!otcId] otcInteract = @s otcInteract

# Align the interaction entity on the block
execute as @e[type=interaction,tag=otcInteract,tag=!otcId,predicate=otc_player:match_id] at @s run tp @s ~0.5 ~ ~0.5

# Tag the interaction entity
tag @e[type=interaction,tag=otcInteract,tag=!otcId,predicate=otc_player:match_id] add otcId