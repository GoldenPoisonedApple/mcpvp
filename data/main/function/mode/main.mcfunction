## 引数
# minecraft:setting Mode
# $form
# $death
# $defence_red
# $defence_blue

# カウント 勝敗判定
$function main:mode/death/$(death)/main

# 守備 勝敗判定
$function main:mode/defence/$(defence_red)/main with storage minecraft:defence PosRed
$function main:mode/defence/$(defence_blue)/main with storage minecraft:defence PosBlue

# 時間終了時の勝敗判定
$execute if score time Time matches ..0 run function main:mode/death/$(death)/judge