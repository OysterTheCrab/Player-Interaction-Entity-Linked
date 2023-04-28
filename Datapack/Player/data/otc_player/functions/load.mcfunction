scoreboard objectives add otcInteract dummy
scoreboard players set $10 otcInteract 10
execute as @e[type=minecraft:villager,nbt={HurtTime:10s}] at @s on attacker run playsound entity.arrow.hit_player
