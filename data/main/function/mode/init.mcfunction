## 引数
# minecraft:setting Mode
# $form
# $death

# スコアボード作成
scoreboard objectives add Death deathCount
scoreboard objectives add Kill playerKillCount
scoreboard objectives add AliveCount dummy
scoreboard objectives add TotalDeath deathCount "デス数"
scoreboard objectives add TotalKill playerKillCount "キル数"
scoreboard objectives add AliveTime dummy
# スコアボード表示
scoreboard objectives setdisplay list TotalKill
# 初期化
scoreboard players set @a Death 0
scoreboard players set @a Kill 0
scoreboard players set @a TotalDeath 0
scoreboard players set @a TotalKill 0
# 生存時間は0から始めるとスタートと被るため1から
scoreboard players set @a AliveTime 1
# 人数初期化
scoreboard players set @a AliveCount 1
scoreboard players set rank AliveCount 0
execute as @a run scoreboard players add rank AliveCount 1
# 終了フラグ
scoreboard players set is_finish AliveCount 1

# PVPモードの初期化
# 個人戦 or チーム戦
$execute as @a run function main:mode/form/$(form)/init

# ハードコア or チケット制 or デス数制
$execute as @a run function main:mode/death/$(death)/init with storage minecraft:mode Form
