# 時間を減らす
scoreboard players remove time Time 1

# ボスバー反映
execute store result bossbar minecraft:time value run scoreboard players get time Time

# 計算
scoreboard players operation time_min Time = time Time
scoreboard players operation time_min Time /= #tick_min Time

scoreboard players operation time_sec Time = time Time
scoreboard players operation time_sec Time /= #time_tick Time
scoreboard players operation time_sec Time %= #tick_sec Time


# 表示
# 残り秒数が1桁の場合
execute if score time_sec Time matches ..9 run bossbar set minecraft:time name [{"text":"残り "},{"score":{"name":"time_min","objective":"Time"}},{"text":"分"},{"text":"0"},{"score":{"name":"time_sec","objective":"Time"}},{"text":"秒"}]
# 残り秒数が2桁の場合(通常)
execute if score time_sec Time matches 10.. run bossbar set minecraft:time name [{"text":"残り "},{"score":{"name":"time_min","objective":"Time"}},{"text":"分"},{"score":{"name":"time_sec","objective":"Time"}},{"text":"秒"}]
# 残りの分数が0で描画しない場合
execute if score time_min Time matches 0 run bossbar set minecraft:time name [{"text":"残り "},{"score":{"name":"time_sec","objective":"Time"}},{"text":"秒"}]
