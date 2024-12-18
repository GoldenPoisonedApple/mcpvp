## 運用
# excute as 対象プレイヤー


# ゲームモード変更
gamemode spectator @s
# 表示
title @s title {"text":"離脱", "bold": true}
title @s subtitle [{"text":"残り : ", "bold": true}, {"score": {"name": "rank", "objective": "AliveCount"}, "bold": true}, {"text": "人", "bold": true}]

# 戦歴表示
tellraw @s {"text":"離脱", "bold": true}
tellraw @s [{"text":"残り : "}, {"score": {"name": "rank", "objective": "AliveCount"}}, {"text": "人"}]
tellraw @s [{"text": "デス数 : "}, {"score": {"name": "@s", "objective": "TotalDeath"}}, {"text": "回, キル数 : "}, {"score": {"name": "@s", "objective": "TotalKill"}}, {"text": "回"}]
# 死人に口なし
tellraw @s "お疲れさまでした。死人に口なしの法則より、無言を貫くか、別VCに移動して神視点をお楽しみください"