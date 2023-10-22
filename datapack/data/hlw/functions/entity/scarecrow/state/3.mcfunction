#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 3 on passengers run data modify entity @s item.tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 3 facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ~ ~ ~ ~ ~
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set #monkeyhue.animLength monkeyhue.objmc1 80
execute unless score @s monkeyhue.tempAI matches 3 on passengers run function hlw:entity/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time2 1

execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes run tp @s ~ ~ ~ ~ 0

execute if score @s monkeyhue.time2 matches 26 run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1.5 0.6

execute if score @s monkeyhue.time2 matches 30 positioned ^ ^2.6 ^-0.2 run function hlw:entity/scarecrow/event/crow
execute if score @s monkeyhue.time2 matches 38 positioned ^ ^2.6 ^-0.2 run function hlw:entity/scarecrow/event/crow
execute if score @s monkeyhue.time2 matches 46 positioned ^ ^2.6 ^-0.2 run function hlw:entity/scarecrow/event/crow
execute if score @s monkeyhue.time2 matches 54 positioned ^ ^2.6 ^-0.2 run function hlw:entity/scarecrow/event/crow
execute if score @s monkeyhue.time2 matches 62 positioned ^ ^2.6 ^-0.2 run function hlw:entity/scarecrow/event/crow

execute if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] if score @s monkeyhue.time2 matches 78.. run scoreboard players set @s monkeyhue.tempAI 1
execute unless entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] if score @s monkeyhue.time2 matches 78.. run scoreboard players set @s monkeyhue.entity.AIState 0
