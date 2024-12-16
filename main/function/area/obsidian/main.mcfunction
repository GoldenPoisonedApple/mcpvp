## 引数
# minecraft:obsidian Pos
# $x
# $z

# 黒曜石削除
$execute positioned $(x) 0 $(z) run fill ~ -63 ~ ~7 319 ~7 air replace minecraft:obsidian

# x座標インクリメント
scoreboard players add x Obsidian 8
scoreboard players add x_count Obsidian 1

## x軸の範囲を超えた判定
# z座標インクリメント
execute if score x_count Obsidian > resolution Obsidian run scoreboard players add z Obsidian 8
execute if score x_count Obsidian > resolution Obsidian run scoreboard players add z_count Obsidian 1
# xを初期化
execute if score x_count Obsidian > resolution Obsidian run scoreboard players operation x Obsidian = start_x Obsidian
execute if score x_count Obsidian > resolution Obsidian run scoreboard players set x_count Obsidian 0

## z軸の範囲を超えた判定
# 初期化
execute if score z_count Obsidian > resolution Obsidian run function main:area/obsidian/init

# 座標反映
execute store result storage minecraft:obsidian Pos.x int 1 run scoreboard players get x Obsidian
execute store result storage minecraft:obsidian Pos.z int 1 run scoreboard players get z Obsidian