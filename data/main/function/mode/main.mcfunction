## 引数
# minecraft:setting Mode
# $form
# $death
# $defence_red
# $defence_blue

# 生存時間
scoreboard players add @a AliveTime 1
execute as @a if score @s Death matches 1.. run scoreboard players set @s AliveTime 0

# カウント 勝敗判定
$function main:mode/death/$(death)/main

# 守備 勝敗判定
$function main:mode/defence/$(defence_red)/main with storage minecraft:defence PosRed
$function main:mode/defence/$(defence_blue)/main with storage minecraft:defence PosBlue

# 時間終了時の勝敗判定
$execute if score time Time matches ..0 run function main:mode/death/$(death)/judge