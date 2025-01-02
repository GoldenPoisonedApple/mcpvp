## 引数
# $team : Red or Blue

#ゲーム終了
scoreboard players set is_finish AliveCount 1

# 表示
$title @a[team=$(team)] title {"text":"勝利!", "bold": true}
$title @a[team=$(team)] subtitle {"text":"敵基地が破壊された", "bold": true}