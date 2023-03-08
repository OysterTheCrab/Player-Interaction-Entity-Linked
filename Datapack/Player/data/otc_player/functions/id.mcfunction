# Gives player a unique id in a increasing order
execute store result score @s otcInteract run scoreboard players add $max otcInteract 1
tag @s add otcInteract