## 引数
# minecraft:celling Pos
# $x
# $z
# $block

## 運用
# execute if score is_start Celling matches 1 run function main:area/ceiling/main with storage minecraft:celling Pos

# 強制読み込み
$forceload add $(x) $(z)

# x座標インクリメント
scoreboard players add x Celling 16
scoreboard players add x_count Celling 1

## x軸の範囲を超えた判定
# z座標インクリメント
execute if score x_count Celling > resolution Celling run scoreboard players add z Celling 16
execute if score x_count Celling > resolution Celling run scoreboard players add z_count Celling 1
# xを初期化
execute if score x_count Celling > resolution Celling run scoreboard players operation x Celling = start_x Celling
execute if score x_count Celling > resolution Celling run scoreboard players set x_count Celling 0

## z軸の範囲を超えた判定
# 初期化
execute if score z_count Celling > resolution Celling run function main:area/ceiling/init


# 岩盤の天井作成
$execute positioned $(x) 0 $(z) run fill ~ 319 ~ ~15 319 ~15 $(block)
#	強制読み込み解除
$forceload remove $(x) $(z)


# 座標反映
execute store result storage minecraft:celling Pos.x int 1 run scoreboard players get x Celling
execute store result storage minecraft:celling Pos.z int 1 run scoreboard players get z Celling