## 引数
# $direction: 方向 "x", "z"
# $range : 範囲 int

# 壁敷設位置初期設定
$scoreboard players set tmp Wall $(range)
$scoreboard players operation install_$(direction) Wall -= tmp Wall

# データ反映
execute store result storage minecraft:wall InstallPos.x int 1 run scoreboard players get install_x Wall
execute store result storage minecraft:wall InstallPos.z int 1 run scoreboard players get install_z Wall