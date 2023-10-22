#-------------------------------------------------------------#
#
# Spook state machine
#
#-------------------------------------------------------------#

execute on passengers on passengers unless entity @s[nbt={Health:1024f}] run function hlw:entity/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function hlw:entity/spook/init

#----- AI States -----#

# Idle
execute if score @s monkeyhue.entity.AIState matches 0 run function hlw:entity/spook/state/0

# Wander
execute if score @s monkeyhue.entity.AIState matches 1 run function hlw:entity/spook/state/1

# Chase
execute if score @s monkeyhue.entity.AIState matches 2 run function hlw:entity/spook/state/2

# Attack
execute if score @s monkeyhue.entity.AIState matches 3 run function hlw:entity/spook/state/3

# Hurt
execute if score @s monkeyhue.entity.AIState matches 4 run function hlw:entity/spook/state/4

# Teleport In
execute if score @s monkeyhue.entity.AIState matches 5 run function hlw:entity/spook/state/5

# Teleport Out
execute if score @s monkeyhue.entity.AIState matches 6 run function hlw:entity/spook/state/6

#----- Other Behavior -----#
execute if score @s monkeyhue.entity.hurtTime matches 10 on passengers run function hlw:entity/spook/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 1 on passengers run function hlw:entity/display/unhurt
execute if score @s monkeyhue.entity.health matches ..0 run scoreboard players set @s monkeyhue.entity.AIState -1
execute if score @s monkeyhue.entity.health > @s monkeyhue.entity.maxHealth run scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth
execute if score @s monkeyhue.entity.hurtTime matches 1.. run scoreboard players remove @s monkeyhue.entity.hurtTime 1
execute rotated as @s on passengers run tp @s ~ ~ ~ ~ ~

# Die
execute unless predicate hlw:is_night if score @s monkeyhue.time1 matches 400.. run function hlw:entity/despawn
execute if score @s monkeyhue.time1 matches 3000.. run function hlw:entity/despawn
execute if score @s monkeyhue.entity.AIState matches -1 run function hlw:entity/spook/state/die