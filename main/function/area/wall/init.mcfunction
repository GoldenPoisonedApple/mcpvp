## 引数
# minecraft:setting Wall
# $direction : 方向 "x", "z"

# スコアボード初期化
scoreboard objectives add Wall dummy
scoreboard players set #1 Wall 1
scoreboard players set #2 Wall 2
scoreboard players set #16 Wall 16
# データ取得
execute store result score install_x Wall run data get storage minecraft:setting Area.x
execute store result score install_z Wall run data get storage minecraft:setting Area.z
execute store result score range Wall run data get storage minecraft:setting Area.range
scoreboard players operation range Wall /= #2 Wall
scoreboard players operation load_x Wall = install_x Wall
scoreboard players operation load_z Wall = install_z Wall

# 壁敷設 始点終点設定
# 終点
$scoreboard players operation install_end Wall = install_$(direction) Wall
scoreboard players operation install_end Wall += range Wall
# 始点
$scoreboard players operation install_$(direction) Wall -= range Wall

# ロード削除エリア
$scoreboard players operation load_$(direction) Wall = install_$(direction) Wall
$scoreboard players operation load_$(direction) Wall -= #16 Wall

# データ反映
execute store result storage minecraft:wall Install.x int 1 run scoreboard players get install_x Wall
execute store result storage minecraft:wall Install.z int 1 run scoreboard players get install_z Wall
execute store result storage minecraft:wall Install.load_x int 1 run scoreboard players get load_x Wall
execute store result storage minecraft:wall Install.load_y int 1 run scoreboard players get load_z Wall

# 強制読み込み全削除
forceload remove all

# 終了フラグ初期化
scoreboard players set is_finish Wall 1