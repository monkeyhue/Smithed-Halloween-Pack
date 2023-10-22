#// Setup
function hlw:technical/tick
function hlw:technical/20t
function hlw:technical/monkeylib_load
tellraw @a {"text":"Halloween is here!"}

#// Click Detections
scoreboard objectives add hlw.player.use minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add hlw.goodie_bag minecraft.used:minecraft.snowball
scoreboard objectives add hlw.spawnedMob dummy

#// General scores

#// Scoreboards
scoreboard players set #hlw.gamerule.spawnTime monkeyhue.temp1 20
