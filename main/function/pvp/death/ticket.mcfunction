## 引数
# minecraft:mode Death.ticket
# $a
# $b
# $count

## チケット制
scoreboard objectives add Ticket dummy "残りチケット"
# チケット数を設定
$scoreboard players set $(a) Ticket $(count)
$scoreboard players set $(b) Ticket $(count)
# チケット数を表示
scoreboard objectives setdisplay sidebar Ticket