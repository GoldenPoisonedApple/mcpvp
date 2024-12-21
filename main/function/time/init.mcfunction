# 時間設定初期化

# スコアボード
scoreboard objectives add Time dummy "時間"
# 定数
scoreboard players set #tick_min Time 1200
scoreboard players set #tick_sec Time 60
scoreboard players set #time_tick Time 20

# ゲーム時間反映
execute store result score time Time run data get storage setting GameTime
scoreboard players operation time Time *= #tick_min Time
execute store result score time_min Time run data get storage setting GameTime
scoreboard players set time_sec Time 0

# 始まりの時間計算
scoreboard players operation first_time Time = time Time
scoreboard players remove first_time Time 1

# ボスバー
bossbar add time "時間"
bossbar set time color white
bossbar set time style progress
bossbar set time visible true
# ボスバー反映
execute store result bossbar minecraft:time max run scoreboard players get time Time
execute store result bossbar minecraft:time value run scoreboard players get time Time
# ボスバー表示
bossbar set minecraft:time name [{"text":"残り "},{"score":{"name":"time_min","objective":"Time"}},{"text":"分"},{"score":{"name":"time_sec","objective":"Time"}},{"text":"秒"}]
bossbar set minecraft:time players @a

