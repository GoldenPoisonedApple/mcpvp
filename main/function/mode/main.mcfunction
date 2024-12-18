## 引数
# minecraft:setting Mode
# $form
# $death

# カウント 勝敗判定
$execute if score is_finish AliveCount matches 0 run function main:mode/death/$(death)/main


