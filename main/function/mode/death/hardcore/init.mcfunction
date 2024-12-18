## 引数
# minecraft:mode Death.ticket
# $a
# $b

## 運用
# execute as @a run

## ハードコア制
scoreboard objectives remove Ticket
scoreboard objectives add Ticket dummy "ハードコア残り人数"
scoreboard objectives add Hardcore dummy
# 残基(1)
scoreboard players set @a Hardcore 1
# チケット数を設定 交互にやる事で個人にも対応
$scoreboard players set $(a) Ticket 0
$scoreboard players add $(a) Ticket 1
$scoreboard players set $(b) Ticket 0
$scoreboard players add $(b) Ticket 1
# チケット数を表示
scoreboard objectives setdisplay sidebar Ticket