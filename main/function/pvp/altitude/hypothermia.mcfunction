## 運用
# execute as 対象プレイヤー

# 凍結 : TicksFrozen データタグによって制御され、この値は粉雪の中にいると毎ティック1増加し、最大140まで達する。粉雪から離れると毎ティック2減少する。
# 150から20マス刻みで寒さが増す。よって寒くなるのは190以上かな

# 高さから寒さ計算
scoreboard players operation tmp Altitude = @s Altitude
scoreboard players operation tmp Altitude -= high Altitude
scoreboard players operation tmp Altitude /= #division Altitude

# 寒さ追加
execute store result score coldness Altitude run data get entity @s TicksFrozen
scoreboard players operation coldness Altitude += tmp Altitude
# 寒さ反映
# execute store result entity @s TicksFrozen int 1 run scoreboard players get coldness Altitude
data get entity cat_nyaaaaa TicksFrozen