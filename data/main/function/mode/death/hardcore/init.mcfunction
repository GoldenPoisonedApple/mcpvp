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
# チケット数を設定
$scoreboard players set $(a) Ticket 0
$scoreboard players set $(b) Ticket 0
execute as @a[team=] run scoreboard players set @s Ticket 1
execute as @a[team=Red] run scoreboard players add Red Ticket 1
execute as @a[team=Blue] run scoreboard players add Blue Ticket 1
# チケット数を表示
scoreboard objectives setdisplay sidebar Ticket