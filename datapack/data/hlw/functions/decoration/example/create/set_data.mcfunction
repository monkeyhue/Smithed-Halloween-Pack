data merge entity @s {Tags: ["smithed.entity", "smithed.strict", "decorinator.decoration", "hlw.example"], item: {id: "minecraft:structure_block", Count: 1b, tag: {CustomModelData: 4269001, decoration: {id: "hlw:example"}}}, transformation: {translation: [0.0f, 0.625f, 0.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}}
execute if data storage decorinator:api owner run function hlw:decoration/example/create/pickup
