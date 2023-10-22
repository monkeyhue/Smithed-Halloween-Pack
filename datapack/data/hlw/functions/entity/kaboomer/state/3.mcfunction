#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 3 on passengers run data modify entity @s item.tag.Damage set value 2
execute unless score @s monkeyhue.tempAI matches 3 facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ~ ~ ~ ~ ~
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set #monkeyhue.animLength monkeyhue.objmc1 20
execute unless score @s monkeyhue.tempAI matches 3 on passengers run function hlw:entity/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 8 run playsound minecraft:entity.snowball.throw hostile @a ~ ~ ~ 1 0.5
execute if score @s monkeyhue.time2 matches 8 as @p[distance=..2] run damage @s 6 minecraft:explosion by @s
execute if score @s monkeyhue.time2 matches 8 positioned ^ ^2.4 ^1.2 summon minecraft:area_effect_cloud run function hlw:entity/kaboomer/event/spawn_projectile
execute if score @s monkeyhue.time2 matches 8 positioned ^ ^2.4 ^1.2 summon minecraft:area_effect_cloud run function hlw:entity/kaboomer/event/spawn_projectile

execute if score @s monkeyhue.time2 matches 20.. run scoreboard players set @s monkeyhue.entity.AIState 1
