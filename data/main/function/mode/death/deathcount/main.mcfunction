## チケット消費処理
# チームの場合
execute as @a[team=Red] if score @s Death matches 1.. run scoreboard players remove Red KillDeathCount 1
execute as @a[team=Red] if score @s Death matches 1.. run scoreboard players set @s Death 0
execute as @a[team=Red] if score @s Kill matches 1.. run scoreboard players add Red KillDeathCount 1
execute as @a[team=Red] if score @s Kill matches 1.. run scoreboard players set @s Kill 0
execute as @a[team=Blue] if score @s Death matches 1.. run scoreboard players remove Blue KillDeathCount 1
execute as @a[team=Blue] if score @s Death matches 1.. run scoreboard players set @s Death 0
execute as @a[team=Blue] if score @s Kill matches 1.. run scoreboard players add Blue KillDeathCount 1
execute as @a[team=Blue] if score @s Kill matches 1.. run scoreboard players set @s Kill 0

# 個人の場合
execute as @a[team=] if score @s Death matches 1.. run scoreboard players remove @s KillDeathCount 1
execute as @a[team=] if score @s Death matches 1.. run scoreboard players set @s Death 0
execute as @a[team=] if score @s Kill matches 1.. run scoreboard players add @s KillDeathCount 1
execute as @a[team=] if score @s Kill matches 1.. run scoreboard players set @s Kill 0


## 敗北処理
# なし