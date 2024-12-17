## 引数
# minecraft:setting Mode
# $form
# $death

# スコアボード作成
scoreboard objectives add Death deathCount
scoreboard objectives add Kill playerKillCount

# PVPモードの初期化
# 個人戦 or チーム戦
$$(form)

# ハードコア or チケット制 or デス数制
$$(death) with storage minecraft:mode Death.ticket


