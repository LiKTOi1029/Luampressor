local Defaults = require("defaults")
local Commands = require("commandsgetter"):Execute()
function love.update(DeltaTime)
  io.write(Defaults.NormalPrompt)
  local Choice = io.read("*line"):upper()
  if Choice == "EXIT" then love.event.quit()
  elseif Defaults.CommandsList.CommandNames[Choice] then
	io.write(Defaults.NormalPrompt, Defaults.CommandsList.CommandNames[Choice](Choice), "\n")
  else io.write(Defaults.Errors.CommandNotFound) end
end