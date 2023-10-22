#General Entity Scores
scoreboard objectives add monkeyhue.entity.AIState dummy
scoreboard objectives add monkeyhue.entity.health dummy
scoreboard objectives add monkeyhue.entity.maxHealth dummy
scoreboard objectives add monkeyhue.entity.hurtTime dummy

#Temp values (Most are deprecated, someone remind me to clean this up in a later patch)
scoreboard objectives add monkeyhue.objmc1 dummy
scoreboard objectives add monkeyhue.objmc2 dummy
scoreboard objectives add monkeyhue.tempAI dummy
scoreboard objectives add monkeyhue.temp1 dummy
scoreboard objectives add monkeyhue.temp2 dummy
scoreboard objectives add monkeyhue.temp3 dummy
scoreboard objectives add monkeyhue.temp4 dummy
scoreboard objectives add monkeyhue.temp5 dummy
scoreboard objectives add monkeyhue.temp6 dummy

#Time values (I have so many of these because bosses have concurrent time scores. It's how you make good attack cycles!)
scoreboard objectives add monkeyhue.time1 dummy
scoreboard objectives add monkeyhue.time2 dummy
scoreboard objectives add monkeyhue.time3 dummy
scoreboard objectives add monkeyhue.time4 dummy
scoreboard objectives add monkeyhue.time5 dummy
scoreboard objectives add monkeyhue.time6 dummy

#Constants
scoreboard players set %-1 monkeyhue.temp1 -1
scoreboard players set %8 monkeyhue.temp1 8
scoreboard players set #10 monkeyhue.temp1 8
scoreboard players set %64 monkeyhue.temp1 64
scoreboard players set #256 monkeyhue.temp1 256
scoreboard players set #24000 monkeyhue.temp1 24000

#RNG
scoreboard objectives add monkeyhue.rng.in dummy
scoreboard objectives add monkeyhue.rng.out dummy
scoreboard players set %monkeyhue.lcg1 monkeyhue.temp1 1630111353
scoreboard players set %monkeyhue.lcg2 monkeyhue.temp1 1623164762
scoreboard players set %monkeyhue.lcg3 monkeyhue.temp1 2147483647
execute unless score %monkeyhue.lcg monkeyhue.temp1 matches ..2147483647 store result score %monkeyhue.lcg monkeyhue.temp1 run seed

#Gametime
execute store result score %monkeyhue.gametime monkeyhue.temp1 run time query gametime