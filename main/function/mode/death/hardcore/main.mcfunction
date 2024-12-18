## チケット消費処理
# チーム分消費
execute as @a[team=Red] if score @s Death matches 1.. run scoreboard players remove Red Ticket 1
execute as @a[team=Blue] if score @s Death matches 1.. run scoreboard players remove Blue Ticket 1

# 個人分
execute as @a if score @s Death matches 1.. run scoreboard players set @s Hardcore 0
execute as @a if score @s Death matches 1.. run scoreboard players set @s AliveCount 0
# 離脱
execute as @a if score @s Death matches 1.. run function main:mode/form/person/breakaway
execute as @a if score @s Death matches 1.. run scoreboard players reset @s Ticket
execute as @a if score @s Death matches 1.. run scoreboard players set @s Death 0


## 敗北処理
# チーム分
execute if entity @a[team=Red] if score Red Ticket matches ..0 run function main:mode/form/team/defeat {team:"Red"}
execute if entity @a[team=Blue] if score Blue Ticket matches ..0 run function main:mode/form/team/defeat {team:"Blue"}


## 勝利処理
# チームの場合
execute if entity @a[team=Red] if score Blue Ticket matches ..0 run function main:mode/form/team/victory {team:"Red"}
execute if entity @a[team=Blue] if score Red Ticket matches ..0 run function main:mode/form/team/victory {team:"Blue"}

# 人数カウント
scoreboard players set rank AliveCount 0
execute as @a if score @s AliveCount matches 1 run scoreboard players add rank AliveCount 1
