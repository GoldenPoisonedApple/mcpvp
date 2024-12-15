## 引数
# $direction: 方向 "x", "y"
# $range : 範囲 int

# 壁敷設初期設定
$scoreboard players set tmp Wall $(range)

$scoreboard players operation install_$(direction) Wall -= tmp Wall