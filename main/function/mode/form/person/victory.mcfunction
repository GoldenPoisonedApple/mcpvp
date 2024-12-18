## 運用
# excute as 対象プレイヤー

# ゲームモード変更
gamemode spectator @s
# 表示
title @s title {"text":"勝利", "bold": true}
title @s subtitle {"text":"順位 : 1位", "bold": true}

# 戦歴表示
tellraw @s {"text":"勝利", "bold": true}
tellraw @s {"text":"順位 : 1位"}
tellraw @s [{"text": "デス数 : "}, {"score": {"name": "@s", "objective": "TotalDeath"}}, {"text": "回, キル数 : "}, {"score": {"name": "@s", "objective": "TotalKill"}}, {"text": "回"}]
