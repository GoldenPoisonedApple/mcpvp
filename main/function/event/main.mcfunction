## 引数
# minecraft:setting Event
# $wall
# $night

# startイベント実行
execute if score time Time matches 1 run function main:event/start/main

# wallイベント実行
$function $(wall)
# nightイベント実行
$function $(night)