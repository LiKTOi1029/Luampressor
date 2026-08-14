local Defaults = require("defaults")
local Getter = {}
function Getter.Execute()
  local CookedCommands = {}
  local RawCommands = love.filesystem.getDirectoryItems(Defaults.CommandsDir)
  for Index, File in ipairs(RawCommands) do
	CookedCommands[Index] = File:gsub(".lua", ""):upper()
	RawCommands[Index] = Defaults.CommandsDir..File
  end
  Defaults.CommandsList = {CommandNames = CookedCommands, CommandPaths = RawCommands,}
  return true
end
return Getter