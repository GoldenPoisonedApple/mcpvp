## 運用
# execute as 対象プレイヤー

# 150から10マス刻みで寒さが増す。160～

# 高さから寒さ計算
scoreboard players operation coldness Altitude = @s Altitude
scoreboard players operation coldness Altitude -= high Altitude
scoreboard players operation coldness Altitude /= #division Altitude

# 寒さ反映
# 鈍足1
execute if score coldness Altitude matches 1.. run effect give @s minecraft:slowness 1 0 true
# 空腹1
execute if score coldness Altitude matches 2.. run effect give @s minecraft:hunger 1 0 true
# 採掘速度低下1
execute if score coldness Altitude matches 3.. run effect give @s minecraft:mining_fatigue 1 0 true
# 攻撃力低下1 30秒
execute if score coldness Altitude matches 4.. run effect give @s minecraft:weakness 30 0 true
# めまい1 5秒
execute if score coldness Altitude matches 5.. run effect give @s minecraft:nausea 5 0 true
# 鈍足2
execute if score coldness Altitude matches 6.. run effect give @s minecraft:slowness 1 1 true
# 空腹2
execute if score coldness Altitude matches 7.. run effect give @s minecraft:hunger 1 1 true
# 採掘速度低下2
execute if score coldness Altitude matches 8.. run effect give @s minecraft:mining_fatigue 1 1 true
# 攻撃力低下2 30秒
execute if score coldness Altitude matches 9.. run effect give @s minecraft:weakness 30 1 true
# めまい2 5秒
execute if score coldness Altitude matches 10.. run effect give @s minecraft:nausea 5 1 true
# 鈍足3
execute if score coldness Altitude matches 11.. run effect give @s minecraft:slowness 1 2 true
# 空腹3
execute if score coldness Altitude matches 12.. run effect give @s minecraft:hunger 1 2 true
# 採掘速度低下
execute if score coldness Altitude matches 13.. run effect give @s minecraft:mining_fatigue 1 2 true
# 攻撃力低下3 30秒
execute if score coldness Altitude matches 14.. run effect give @s minecraft:weakness 30 2 true
# めまい3 5秒
execute if score coldness Altitude matches 15.. run effect give @s minecraft:nausea 5 2 true

# ウィザー
execute if score coldness Altitude matches 16.. run effect give @s minecraft:wither 1 0 true


