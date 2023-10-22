#// Add to global mob spawning
execute if predicate hlw:is_night run scoreboard players add #hlw.mobTimer monkeyhue.time1 1
execute if score #hlw.mobTimer monkeyhue.time1 >= #hlw.gamerule.spawnTime monkeyhue.temp1 as @a[limit=4,sort=random] unless score @s hlw.spawnedMob matches 1.. at @s run function hlw:entity/spawn

schedule function hlw:technical/20t 20t
