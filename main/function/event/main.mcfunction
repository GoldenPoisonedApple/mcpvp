## 引数
# minecraft:setting Event
# $wall
# $night

# startイベント実行
execute if score time Time = first_time Time run function main:event/start

# wallイベント実行
$function $(wall)
# nightイベント実行
$function $(night)