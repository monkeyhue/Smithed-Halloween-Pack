execute as @a at @s run function hlw:player/main
execute as @e[type=#hlw:tickly,tag=monkeyhue.entity,tag=hlw] at @s run function hlw:entity/main

#// Add time to gametime
scoreboard players add %monkeyhue.gametime monkeyhue.temp1 1

schedule function hlw:technical/tick 1t