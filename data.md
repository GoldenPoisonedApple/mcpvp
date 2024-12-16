### minecraft:setting
- GameTime : minute
- Area -> [area/init.mcfunction]
  - x : double
  - y : double
  - z : double
  - range : int
- Wall -> [area/wall/init.mcfunction] [area/wall/main.mcfunction]
  - direction : x or z
### minecraft:wall
- Install -> [area/wall/fill.mcfunction]
  - x : int
  - z : int
  - y : int (fillの高さ)
  - block : string
  - load_x
  - load_y