local Defaults = require("Defaults")
local Command = {}
function Command.Execute(FileName)
  if love.filesystem.getInfo(Defaults.CommandsDir..Defaults.SelectedFile) then
	Defaults.SelectedFile = FileName
  end
end
return Command