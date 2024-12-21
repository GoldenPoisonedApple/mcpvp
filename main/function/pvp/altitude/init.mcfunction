# スコアボード設定
scoreboard objectives add Altitude dummy
scoreboard players set #division Altitude 20

# データ取得
execute store result score high Altitude run data get storage minecraft:setting Altitude