## 引数
# minecraft:mode Death.ticket
# $a
# $b
# $count

# キルカウント作成
scoreboard objectives add Kill playerKillCount

## キルデス数制
scoreboard objectives add Ticket dummy
scoreboard objectives add KillDeathCount dummy "キルデスカウント"
# チケット数を設定
$execute as @a run scoreboard players set $(a) Ticket 1000
$execute as @a run scoreboard players set $(b) Ticket 1000
# キルデス数計算
$execute as @a run scoreboard players operation $(a) KillDeathCount = $(a) Ticket
$execute as @a run scoreboard players operation $(b) KillDeathCount = $(b) Ticket
$execute as @a run scoreboard players remove $(a) Ticket 1000
$execute as @a run scoreboard players remove $(b) Ticket 1000
# キルデス数計算
scoreboard objectives setdisplay sidebar KillDeathCount