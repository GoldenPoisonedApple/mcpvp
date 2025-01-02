## 勝利判定

## チーム戦の場合
# 青チーム勝利
execute if score Red KillDeathCount < Blue KillDeathCount run function main:mode/form/team/victory {team:"Blue"}
execute if score Red KillDeathCount < Blue KillDeathCount run function main:mode/form/team/defeat {team:"Red"}
# 赤チーム勝利
execute if score Red KillDeathCount > Blue KillDeathCount run function main:mode/form/team/victory {team:"Red"}
execute if score Red KillDeathCount > Blue KillDeathCount run function main:mode/form/team/defeat {team:"Blue"}
# 引き分け
execute if score Red KillDeathCount = Blue KillDeathCount run function main:mode/form/team/draw

## 個人戦の場合
scoreboard players set #max KillDeathCount 0
scoreboard players operation #max KillDeathCount > @a KillDeathCount
# 勝利
execute as @a[team=] if score @s KillDeathCount >= #max KillDeathCount run function main:mode/form/person/victory
# 敗北
execute as @a[team=] unless score @s KillDeathCount >= #max KillDeathCount run function main:mode/form/person/defeat

