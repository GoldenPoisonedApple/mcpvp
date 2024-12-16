

# スコアボード初期化
scoreboard objectives add Celling dummy
scoreboard players set #2 Celling 2
scoreboard players set #16 Celling 16

# データ取得
execute store result score start_x Celling run data get storage minecraft:setting Area.x
execute store result score start_z Celling run data get storage minecraft:setting Area.z
execute store result score range Celling run data get storage minecraft:setting Area.range

# データ計算
scoreboard players operation resolution Celling = range Celling
scoreboard players operation resolution Celling /= #16 Celling
scoreboard players operation range Celling /= #2 Celling
scoreboard players operation start_x Celling -= range Celling
scoreboard players operation start_z Celling -= range Celling
scoreboard players operation x Celling = start_x Celling
scoreboard players operation z Celling = start_z Celling

# 変数初期化
scoreboard players set x_count Celling 0
scoreboard players set z_count Celling 0

# フラグ初期化
scoreboard players set is_start Celling 0

# データ反映
execute store result storage minecraft:celling Pos.x int 1 run scoreboard players get x Celling
execute store result storage minecraft:celling Pos.z int 1 run scoreboard players get z Celling
data modify storage minecraft:celling Pos.block set value "minecraft:bedrock"