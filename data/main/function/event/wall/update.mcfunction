## 引数
# minecraft:event Wall
# $direction

## 運用
# execute if score is_finish Wall matches 0 run function main:event/wall/main with storage minecraft:event Wall


# 建設
function main:event/wall/fill with storage minecraft:wall Install

# 次建設位置
$scoreboard players operation install_$(direction) Wall += #1 Wall
# データ反映
$execute store result storage minecraft:wall Install.$(direction) int 1 run scoreboard players get install_$(direction) Wall

# ロード削除エリア
$scoreboard players operation load_$(direction) Wall += #1 Wall
$execute store result storage minecraft:wall Install.load_$(direction) int 1 run scoreboard players get load_$(direction) Wall

# 終了判定
$execute if score install_$(direction) Wall > install_end Wall run scoreboard players set is_finish Wall 1