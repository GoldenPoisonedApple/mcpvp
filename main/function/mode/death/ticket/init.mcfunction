## 引数
# minecraft:mode Form
# $a
# $b

## 運用
# execute as @a run

## チケット制
scoreboard objectives remove Ticket
scoreboard objectives add Ticket dummy "残りチケット"
# チケット数を設定
$execute store result score $(a) Ticket run data get storage minecraft:mode Ticket.count 1
$execute store result score $(b) Ticket run data get storage minecraft:mode Ticket.count 1
# チケット数を表示
scoreboard objectives setdisplay sidebar Ticket