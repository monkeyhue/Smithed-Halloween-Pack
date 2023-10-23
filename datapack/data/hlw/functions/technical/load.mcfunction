#// Setup
function hlw:technical/tick
function hlw:technical/20t
function hlw:technical/monkeylib_load
tellraw @a [{"text":"\ua000 ","font":"hlw:tooltip","color":"white","italic":false},{"text":"Happy Halloween!","font":"minecraft:default","color":"#FF9E3D","italic":false,"hoverEvent":{"action":"show_text","value":[{"text":"Halloween is here!\nDefeat themed enemies \nat night to collect \nspooky prizes!"}]}},{"text":" \ua000","font":"hlw:tooltip","color":"white","italic":false}]

#// Click Detections
scoreboard objectives add hlw.player.use minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add hlw.goodie_bag minecraft.used:minecraft.snowball
scoreboard objectives add hlw.spawnedMob dummy

#// General scores

#// Scoreboards
execute unless score #hlw.gamerule monkeyhue.temp1 matches 1.. run scoreboard players set #hlw.gamerule.spawnTime monkeyhue.temp1 60
