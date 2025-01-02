
# 全員の高度取得
execute as @a store result score @s Altitude run data get entity @s Pos[1]

# 高度が高高度を超えた場合
# 高山病
execute as @a if score @s Altitude >= high Altitude run function main:pvp/altitude/hypothermia

# 凍らせる
execute as @a if score @s Altitude >= high Altitude run function main:pvp/altitude/freeze