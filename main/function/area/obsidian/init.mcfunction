

# スコアボード初期化
scoreboard objectives add Obsidian dummy
scoreboard players set #2 Obsidian 2
scoreboard players set #8 Obsidian 8

# データ取得
execute store result score start_x Obsidian run data get storage minecraft:setting Area.x
execute store result score start_z Obsidian run data get storage minecraft:setting Area.z
execute store result score range Obsidian run data get storage minecraft:setting Area.range

# データ計算
scoreboard players operation x Obsidian = start_x Obsidian
scoreboard players operation z Obsidian = start_z Obsidian
scoreboard players operation resolution Obsidian = range Obsidian
scoreboard players operation resolution Obsidian /= #8 Obsidian
scoreboard players operation range Obsidian /= #2 Obsidian
scoreboard players operation x Obsidian -= range Obsidian
scoreboard players operation z Obsidian -= range Obsidian


# 変数初期化
scoreboard players set x_count Obsidian 0
scoreboard players set z_count Obsidian 0

# データ反映
execute store result storage minecraft:obsidian Pos.x int 1 run scoreboard players get x Obsidian
execute store result storage minecraft:obsidian Pos.z int 1 run scoreboard players get z Obsidian