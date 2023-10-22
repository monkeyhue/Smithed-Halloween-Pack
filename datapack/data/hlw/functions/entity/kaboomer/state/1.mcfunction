#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 on passengers run data modify entity @s item.tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set #monkeyhue.animLength monkeyhue.objmc1 20
execute unless score @s monkeyhue.tempAI matches 1 on passengers run function hlw:entity/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 1 run function hlw:technical/rng/60
execute unless score @s monkeyhue.tempAI matches 1 store result score @s monkeyhue.time2 run scoreboard players get @s monkeyhue.rng.out
execute unless score @s monkeyhue.tempAI matches 1 run function hlw:technical/rng/360
execute unless score @s monkeyhue.tempAI matches 1 store result entity @s Rotation[0] float 1.0 run scoreboard players get @s monkeyhue.rng.out
execute unless score @s monkeyhue.tempAI matches 1 run data modify entity @s Rotation[1] set value 0.0f
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 120.. run scoreboard players set @s monkeyhue.entity.AIState 0

#// Move, dammit!
execute if block ^ ^1 ^0.4 #hlw:unsolid run teleport @s ^ ^ ^0.15
execute unless block ~ ~ ~ #hlw:unsolid run teleport @s ^ ^0.1 ^0.15
execute if block ~ ~-0.05 ~ #hlw:unsolid run teleport @s ^ ^-0.05 ^0.15
execute unless block ^ ^ ^0.4 #hlw:unsolid run teleport @s ^ ^0.3 ^0.15

#// Precautions to make sure there's no hovering or falling off edges or into holes
execute unless score @s monkeyhue.time5 matches 4.. if block ~ ~-0.32 ~ #hlw:unsolid run scoreboard players add @s monkeyhue.time5 1
execute if score @s monkeyhue.time5 matches 4 if block ~ ~-0.32 ~ #hlw:unsolid rotated as @s run function hlw:entity/kaboomer/event/begin_falling
execute if score @s monkeyhue.time5 matches 1.. unless block ~ ~-0.32 ~ #hlw:unsolid run scoreboard players reset @s monkeyhue.time5

execute if entity @p[distance=..24,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 2

