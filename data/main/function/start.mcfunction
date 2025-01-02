# ゲーム開始
scoreboard players set is_finish AliveCount 0 

# 仮で肉配布
clear @a
give @a cooked_beef 128

title @a title [{"text": "開始!", "bold": true}]
title @a subtitle [{"text": "- サバイバルPVP -"}]