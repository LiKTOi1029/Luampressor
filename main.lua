local Defaults = require("Defaults")
function love.update(DeltaTime)
  io.write(" > ")
  local Choice = io.read("*line"):upper()
  if Choice == "EXIT" then love.event.quit()
  elseif Choice end
end