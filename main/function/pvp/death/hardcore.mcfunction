## 引数
# minecraft:mode Death.ticket
# $a
# $b
# $count

## ハードコア制
scoreboard objectives add Ticket dummy "ハードコア"
scoreboard objectives add Hardcore dummy
# 残基(1)
scoreboard players set @a Hardcore 1
# チケット数を設定
$scoreboard players set $(a) Ticket 0
$scoreboard players set $(b) Ticket 0
$execute as @a run scoreboard players add $(a) Ticket 1
$execute as @a run scoreboard players add $(b) Ticket 1
# チケット数を表示
scoreboard objectives setdisplay sidebar Ticket