local Defaults = require("defaults")
local Getter = {}
function Getter.Execute()
  local CookedCommands = {}
  local RawCommands = love.filesystem.getDirectoryItems(Defaults.CommandsDir)
  for Index, File in ipairs(RawCommands) do
	local FileTruncated = File:gsub(".lua", "")
	CookedCommands[FileTruncated:upper()] = require(Defaults.CommandsDir..FileTruncated)
	RawCommands[Index] = Defaults.CommandsDir..File
  end
  Defaults.CommandsList = {CommandNames = CookedCommands, CommandPaths = RawCommands,}
  return true
end
return Getter