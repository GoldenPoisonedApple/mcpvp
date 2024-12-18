## 引数
# minecraft:setting Mode
# $form
# $death

# カウント 勝敗判定
$execute if score is_finish AliveCount matches 0 run function main:mode/death/$(death)/main

# 時間終了時の勝敗判定
$execute if score time Time matches ..0 run function main:mode/death/$(death)/judge
