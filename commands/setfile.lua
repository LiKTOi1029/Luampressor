local Defaults = require("defaults")
local Command = {}
function Command.Execute(Choice)
  local FileName = Choice[2]
  local File = io.open(FileName, "r")
  if not File then
	return Defaults.Errors.SelectedFileNotFound
  else
	Defaults.SelectedFile = FileName
	File:close()
  end
  return Defaults.Normal.SelectedTheFile
end
return Command