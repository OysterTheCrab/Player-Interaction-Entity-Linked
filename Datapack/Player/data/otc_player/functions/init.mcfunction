data merge entity @s {width:1f,height:1f,response:1b,Tags:["otcInteract"]}

# Link the player and interaction entity
scoreboard players operation @s otcInteract = $current otcInteract

# Align the interaction entity on the block
execute at @s run tp @s ~0.5 ~ ~0.5

# Tag the interaction entity
tag @s add otcId