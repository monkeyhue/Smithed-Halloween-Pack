#-------------------------------------------------------------#
#
# Simple PRNG gen
#
#-------------------------------------------------------------#

# Get Range
scoreboard players add @s monkeyhue.rng.in 360

# Main Operation
scoreboard players operation %monkeyhue.lcg monkeyhue.temp1 *= %monkeyhue.lcg1 monkeyhue.temp1
scoreboard players operation %monkeyhue.lcg monkeyhue.temp1 += %monkeyhue.lcg2 monkeyhue.temp1
scoreboard players operation %monkeyhue.lcg monkeyhue.temp1 %= %monkeyhue.lcg3 monkeyhue.temp1

# Refine and return
scoreboard players operation @s monkeyhue.rng.out = %monkeyhue.lcg monkeyhue.temp1
scoreboard players operation @s monkeyhue.rng.out /= %8 monkeyhue.temp1
scoreboard players operation @s monkeyhue.rng.out %= @s monkeyhue.rng.in
scoreboard players remove @s monkeyhue.rng.out 180
scoreboard players reset @s monkeyhue.rng.in