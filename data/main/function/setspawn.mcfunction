## スポーン位置セット
# チームの場合
execute as @a[team=Red, limit=1] run tp @a[team=Red] @s
execute as @a[team=Blue, limit=1] run tp @a[team=Blue] @s

# 現在の位置にスポーン位置を設定
tellraw @a {"text":"現在の位置にスポーン位置を設定しました","color":"green"}
execute as @a at @a run spawnpoint @s ~ ~ ~