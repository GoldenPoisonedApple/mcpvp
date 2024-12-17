## 引数
# minecraft:mode Death.ticket
# $a
# $b
# $count

## キルデス数制
scoreboard objectives add Ticket dummy
scoreboard objectives add KillDeathCount dummy "キルデスカウント"
# チケット数を設定
$scoreboard players set $(a) Ticket 1000
$scoreboard players set $(b) Ticket 1000
# キルデス数計算
$scoreboard players operation $(a) KillDeathCount = $(a) Ticket
$scoreboard players operation $(b) KillDeathCount = $(b) Ticket
$scoreboard players remove $(a) Ticket 1000
$scoreboard players remove $(b) Ticket 1000
# キルデス数計算
scoreboard objectives setdisplay sidebar KillDeathCount