playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 0.8 2
execute store result score @s monkeyhue.temp1 run data get entity @s item.tag.display.color
scoreboard players add @s monkeyhue.temp1 1
execute store result entity @s item.tag.display.color int 1.0 run scoreboard players get @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp1
execute on vehicle run scoreboard players reset @s monkeyhue.time1
execute on vehicle unless score @s monkeyhue.entity.AIState matches 4.. run scoreboard players set @s monkeyhue.entity.AIState 4