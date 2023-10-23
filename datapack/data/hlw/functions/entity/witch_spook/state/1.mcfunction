#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 1 run function hlw:technical/rng/60
execute unless score @s monkeyhue.tempAI matches 1 store result score @s monkeyhue.time2 run scoreboard players get @s monkeyhue.rng.out
execute unless score @s monkeyhue.tempAI matches 1 run function hlw:technical/rng/360
execute unless score @s monkeyhue.tempAI matches 1 store result entity @s Rotation[0] float 1.0 run scoreboard players get @s monkeyhue.rng.out
execute unless score @s monkeyhue.tempAI matches 1 run data modify entity @s Rotation[1] set value 0.0f
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 120.. run scoreboard players set @s monkeyhue.entity.AIState 0

execute if block ^ ^ ^0.15 #hlw:unsolid_nofluids run teleport @s ^ ^ ^0.15
execute unless block ^ ^ ^0.15 #hlw:unsolid_nofluids run scoreboard players set @s monkeyhue.entity.AIState 5
execute if block ~ ~-2.5 ~ #hlw:unsolid_nofluids run teleport @s ^ ^-0.05 ^0.15
execute unless block ~ ~-1.5 ~ #hlw:unsolid_nofluids run teleport @s ^ ^0.1 ^0.15

execute if entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 2

