# スタート表示用

# タイトル表示
title @a title [{"text": "開始!", "bold": true}]
title @a subtitle [{"text": "- サバイバルPVP -"}]

# tellrow表示
execute as @a run tellraw @s [{"selector":"@s"}, {"text":"さん\nルールを守れば"}, {"text": "”なんでもあり”", "color": "red"}, {"text":"のサバイバルPVPへようこそ"}]
tellraw @a "---- 以下ルール ----"
# ルール表示
function main:event/start/rule