# スコアボード初期化
scoreboard objectives add EventNight dummy

# データ取得
execute store result score readyTime EventNight run data get storage minecraft:event Night.readyTime
execute store result score startTime EventNight run data get storage minecraft:event Night.startTime
execute store result score endTime EventNight run data get storage minecraft:event Night.endTime

# フラグ立てておく
scoreboard players set readyFlag EventNight 1
scoreboard players set startFlag EventNight 1
scoreboard players set endFlag EventNight 1