#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 3 on passengers run data modify entity @s item.tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 3 facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ~ ~ ~ ~ ~
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set #monkeyhue.animLength monkeyhue.objmc1 30
execute unless score @s monkeyhue.tempAI matches 3 on passengers run function hlw:entity/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 13 run playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 1 1.5
execute if score @s monkeyhue.time2 matches 13 positioned ^ ^1 ^1.2 run damage @p[distance=..2] 5 hlw:spook
execute if score @s monkeyhue.time2 matches 13 positioned ^ ^1 ^1 run particle explosion

execute if entity @p[distance=..2,gamemode=!creative,gamemode=!spectator] if score @s monkeyhue.time2 matches 29.. run scoreboard players set @s monkeyhue.tempAI 2
execute unless entity @p[distance=..2,gamemode=!creative,gamemode=!spectator] if score @s monkeyhue.time2 matches 29.. run scoreboard players set @s monkeyhue.entity.AIState 0
