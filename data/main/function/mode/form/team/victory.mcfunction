## 引数
# $team : Red or Blue

#ゲーム終了
scoreboard players set is_finish AliveCount 1

# 表示
$title @a[team=$(team)] title {"text":"勝利!", "bold": true}