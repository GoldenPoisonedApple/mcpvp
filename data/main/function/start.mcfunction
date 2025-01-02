# ゲーム開始
scoreboard players set is_finish AliveCount 0 

# サバイバルモード
gamemode survival @a

# 仮で肉配布
clear @a
give @a cooked_beef 64

title @a title [{"text": "開始!", "bold": true}]
title @a subtitle [{"text": "- サバイバルPVP -"}]