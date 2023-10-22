playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1.5 1

execute as @e[tag=!hlw.hitbox,distance=..3,limit=3] run damage @s 5 minecraft:explosion
particle poof ~ ~0.2 ~ 0.1 0.1 0.1 0.15 8
particle explosion ~ ~0.2 ~ 0 0 0 0 1
kill @s

