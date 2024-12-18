## 運用
# excute as 対象プレイヤー


#ゲーム終了
scoreboard players set is_finish AliveCount 1

# ゲームモード変更
gamemode spectator @s
# 表示
title @s title {"text":"敗北", "bold": true}
title @s subtitle [{"text":"順位 : ", "bold": true}, {"score": {"name": "rank", "objective": "AliveCount"}, "bold": true}, {"text": "位", "bold": true}]

# 戦歴表示
tellraw @s {"text":"敗北", "bold": true}
tellraw @s [{"text":"順位 : "}, {"score": {"name": "rank", "objective": "AliveCount"}}, {"text": "位"}]
tellraw @s [{"text": "デス数 : "}, {"score": {"name": "@s", "objective": "TotalDeath"}}, {"text": "回, キル数 : "}, {"score": {"name": "@s", "objective": "TotalKill"}}, {"text": "回"}]
# 死人に口なし
tellraw @s "お疲れさまでした。死人に口なしの法則より、無言を貫くか、別VCに移動して神視点をお楽しみください"