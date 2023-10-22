#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
#// Effects
particle minecraft:poof ~ ~0.3 ~ 0.2 0.3 0.2 0.05 30 force

#// Natural
loot spawn ~ ~0.3 ~ loot hlw:entity/generic

#// Kill
summon experience_orb ~ ~0.2 ~ {Value:6}
tp @s ~ -200 ~
scoreboard players reset @s
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s