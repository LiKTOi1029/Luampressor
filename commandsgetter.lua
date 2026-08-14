local Getter = {}
function Getter.Execute()
  local CookedCommands = {}
  local RawCommands = love.filesystem.getDirectoryItems(Defaults.CommandsDir)
  for Index, File in ipairs(RawCommands) do
	CookedCommands[Index] = File:gsub(".lua", ""):upper()
	RawCommands[Index] = Defaults.CommandsDir..File
  end
  return {CommandNames = CookedCommands, CommandPaths = RawCommands,}
end
return Getter