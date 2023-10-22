execute store result score @s monkeyhue.temp1 run data get entity @s Health
scoreboard players set @s monkeyhue.temp2 1023
scoreboard players operation @s monkeyhue.temp2 -= @s monkeyhue.temp1
execute at @s on vehicle on vehicle run scoreboard players operation @s monkeyhue.entity.health -= @e[limit=1,sort=nearest,tag=hlw.hitbox,dx=0] monkeyhue.temp2
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2
data merge entity @s {Health:1024f}
execute on vehicle on vehicle unless score @s monkeyhue.entity.hurtTime matches 0.. run scoreboard players set @s monkeyhue.entity.hurtTime 10