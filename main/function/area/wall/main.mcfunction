## 引数
# minecraft:setting Wall
# $direction

## 運用
# execute if score is_finish Wall matches 0 run function main:area/wall/main with storage minecraft:setting Wall


# 建設
function main:area/wall/fill with storage minecraft:wall Install

# 次建設位置
$scoreboard players operation install_$(direction) Wall += #1 Wall

# データ反映
$execute store result storage minecraft:wall Install.$(direction) int 1 run scoreboard players get install_$(direction) Wall

# 終了判定
$execute if score install_$(direction) Wall > install_end Wall run scoreboard players set is_finish Wall 1