
## デスカウント監視 ごり押し 並列処理だと良くない
# チーム
execute as @a[team=Red] if score @s Death matches 1.. run scoreboard players remove Red Ticket 1
execute as @a[team=Red] if score @s Death matches 1.. run scoreboard players set @s Death 0
execute as @a[team=Blue] if score @s Death matches 1.. run scoreboard players remove Blue Ticket 1
execute as @a[team=Blue] if score @s Death matches 1.. run scoreboard players set @s Death 0
# 個人
execute as @a if score @s Death matches 1.. run scoreboard players remove @s Ticket 1
execute as @a if score @s Death matches 1.. run scoreboard players set @s Death 0


## キルカウント監視 ごり押し 並列処理だと良くない
# キルデス数制以外はスコアボード定義がされてないから動かないはず...
# チーム
execute as @a[team=Red] if score @s Kill matches 1.. run scoreboard players add Red Ticket 1
execute as @a[team=Red] if score @s Kill matches 1.. run scoreboard players set @s Kill 0
execute as @a[team=Blue] if score @s Kill matches 1.. run scoreboard players add Blue Ticket 1
execute as @a[team=Blue] if score @s Kill matches 1.. run scoreboard players set @s Kill 0
# 個人
execute as @a if score @s Kill matches 1.. run scoreboard players add @s Ticket 1
execute as @a if score @s Kill matches 1.. run scoreboard players set @s Kill 0


