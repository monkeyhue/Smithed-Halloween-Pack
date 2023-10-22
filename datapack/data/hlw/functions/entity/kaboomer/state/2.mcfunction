#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time5
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

#// Move, dammit!
execute if block ^ ^1 ^0.4 #hlw:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^ ^0.15 ~ 0
execute unless block ~ ~ ~ #hlw:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^1 ^0.15 ~ 0
execute if block ~ ~-0.05 ~ #hlw:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^-0.05 ^0.15 ~ 0
execute unless block ^ ^ ^0.4 #hlw:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^0.3 ^0.15 ~ 0

#// Precautions to make sure there's no hovering or falling off edges or into holes
execute unless score @s monkeyhue.time5 matches 4.. if block ~ ~-0.32 ~ #hlw:unsolid run scoreboard players add @s monkeyhue.time5 1
execute if score @s monkeyhue.time5 matches 4 if block ~ ~-0.32 ~ #hlw:unsolid run function hlw:entity/kaboomer/event/begin_falling
execute if score @s monkeyhue.time5 matches 1.. unless block ~ ~-0.32 ~ #hlw:unsolid run scoreboard players reset @s monkeyhue.time5

execute if entity @p[distance=..7,gamemode=!creative,gamemode=!spectator] positioned ~ ~1 ~ run function hlw:entity/kaboomer/event/sees_player
execute unless entity @p[distance=..24,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 0
