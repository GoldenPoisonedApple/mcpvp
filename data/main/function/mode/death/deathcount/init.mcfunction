## 引数
# minecraft:mode Death.ticket
# $a
# $b

## 運用
# execute as @a run

## キルデス数制
scoreboard objectives remove KillDeathCount
scoreboard objectives add KillDeathCount dummy "スコア"
# チケット数を設定
$scoreboard players set $(a) KillDeathCount 0
$scoreboard players set $(b) KillDeathCount 0
# キルデス数計算
scoreboard objectives setdisplay sidebar KillDeathCount