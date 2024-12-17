# 夜フェーズ処理
# この量なら1ファイルでいいかなと許容

# ready 夕方にする
execute if score readyTime EventNight = time_min Time if score readyFlag EventNight matches 1 run title @a title [{"text":"夜が近そうだ...","color":"dark_blue"}]
execute if score readyTime EventNight = time_min Time if score readyFlag EventNight matches 1 run time set 12500t
# フラグ折る
execute if score readyTime EventNight = time_min Time if score readyFlag EventNight matches 1 run scoreboard players set readyFlag EventNight 0

# start 夜にする
execute if score startTime EventNight = time_min Time if score startFlag EventNight matches 1 run title @a title [{"text":"夜戦開始","color":"dark_blue"}]
execute if score startTime EventNight = time_min Time if score startFlag EventNight matches 1 run time set midnight
# フラグ折る
execute if score startTime EventNight = time_min Time if score startFlag EventNight matches 1 run scoreboard players set startFlag EventNight 0

# end 明け方にする
execute if score endTime EventNight = time_min Time if score endFlag EventNight matches 1 run title @a title [{"text":"夜が明けた...","color":"#ff9100"}]
execute if score endTime EventNight = time_min Time if score endFlag EventNight matches 1 run time set 0t
execute if score endTime EventNight = time_min Time if score endFlag EventNight matches 1 run schedule function main:event/night/dawn 10s
# フラグ折る
execute if score endTime EventNight = time_min Time if score endFlag EventNight matches 1 run scoreboard players set endFlag EventNight 0