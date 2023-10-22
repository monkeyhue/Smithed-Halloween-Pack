execute on vehicle on passengers run scoreboard players set @s monkeyhue.temp1 1
execute unless score @s monkeyhue.temp1 matches 1 run function hlw:entity/prj/kaboomer/hit
scoreboard players reset @s monkeyhue.temp1

execute on vehicle rotated as @s on passengers run tp @s ~ ~ ~ ~ ~

execute if score @s monkeyhue.time1 matches 1 on vehicle run data modify entity @s Air set value 100
execute if score @s monkeyhue.time1 matches 2 on vehicle run data modify entity @s Air set value 1