# Sets the entity's id to the current id
scoreboard players operation $current otcInteract = @s otcInteract

# Takes the player's UUID from storage
execute if score $differs otcInteract matches 1 run data modify storage otc_interact:player verify set from storage otc_interact:player UUID

# Checks if the player's UUID is the same as the one stored in the interaction entity
execute if score $differs otcInteract matches 1 store success score $differs otcInteract run data modify storage otc_interact:player verify set from entity @s interaction.player

# Runs the reward function if the UUID matches and they are linked
execute if score $differs otcInteract matches 0 at @s as @a[tag=otcInteract,limit=1,predicate=otc_player:match_id] run function otc_player:interact/reward

# Runs the error function if the UUID matches and they are not linked
execute if score $differs otcInteract matches 0 at @s as @a[tag=otcInteract,limit=1,predicate=!otc_player:match_id] run function otc_player:interact/error

# Removes the UUID from the interaction entity 
data remove entity @s interaction

say check

