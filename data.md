### minecraft:setting
- GameTime : minute
- Area -> [area/init.mcfunction]
  - x : double
  - y : double
  - z : double
  - range : int
- Wall -> [area/wall/init.mcfunction] [area/wall/main.mcfunction]
  - direction : x or z
- Event -> [event/main.mcfunction]
  - night : "function main:event/night/main" or ""

### minecraft:wall
- Install -> [area/wall/fill.mcfunction]
  - x : int
  - z : int
  - y : int (fillの高さ)
  - block : string
  - load_x
  - load_y

### minecraft:event
- Night
  - readyTime : minute
  - startTime : minute
  - endTime : minute
