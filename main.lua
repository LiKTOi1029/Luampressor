local Defaults = require("defaults")
local Commands = require("commandsgetter"):Execute()
local InputProcessor = require("inputprocessor")

function love.update(DeltaTime)
  io.write(Defaults.NormalPrompt)
  local Choice = InputProcessor.Execute("normal", io.read("*line"):upper())
  if Choice[1] == "EXIT" then love.event.quit()
  elseif Defaults.CommandsList.CommandNames[Choice[1]] then
	io.write(Defaults.CommandsList.CommandNames[Choice[1]].Execute(Choice), "\n")
  else io.write(Defaults.Errors.CommandNotFound) end
end