#-------------------------------------------------------------#
#
# Scarecrow state machine
#
#-------------------------------------------------------------#

execute on passengers on passengers unless entity @s[nbt={Health:1024f}] run function hlw:entity/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function hlw:entity/scarecrow/init

#----- AI States -----#

# Idle
execute if score @s monkeyhue.entity.AIState matches 0 run function hlw:entity/scarecrow/state/0

# Wander
execute if score @s monkeyhue.entity.AIState matches 1 run function hlw:entity/scarecrow/state/1

# Chase
execute if score @s monkeyhue.entity.AIState matches 2 run function hlw:entity/scarecrow/state/2

# Attack
execute if score @s monkeyhue.entity.AIState matches 3 run function hlw:entity/scarecrow/state/3

#----- Other Behavior -----#
execute if score @s monkeyhue.entity.hurtTime matches 10 on passengers run function hlw:entity/scarecrow/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 1 on passengers run function hlw:entity/display/unhurt
execute if score @s monkeyhue.entity.health matches ..0 run scoreboard players set @s monkeyhue.entity.AIState -1
execute if score @s monkeyhue.entity.health > @s monkeyhue.entity.maxHealth run scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth
execute if score @s monkeyhue.entity.hurtTime matches 1.. run scoreboard players remove @s monkeyhue.entity.hurtTime 1
execute rotated as @s on passengers run tp @s ~ ~ ~ ~ ~

# Die
execute unless predicate hlw:is_night if score @s monkeyhue.time1 matches 400.. run function hlw:entity/despawn
execute if score @s monkeyhue.time1 matches 4200.. run function hlw:entity/despawn
execute if score @s monkeyhue.entity.AIState matches -1 run function hlw:entity/scarecrow/state/die