## 引数
# $team : Red or Blue

# ゲームモード変更
$gamemode spectator @a[team=$(team)]
# 表示
$title @a[team=$(team)] title {"text":"敗北", "bold": true}

