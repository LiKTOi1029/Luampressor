local Defaults = require("defaults")
local Commands = require("commandsgetter.lua")
function love.update(DeltaTime)
  io.write(" > ")
  local Choice = io.read("*line"):upper()
  if Choice == "EXIT" then love.event.quit()
  elseif Choice end
end