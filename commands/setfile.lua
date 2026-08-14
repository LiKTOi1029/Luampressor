local Defaults = require("defaults")
local Command = {}
function Command.Execute(Choice)
  local FileName = Choice[2]
  if Defaults.DevMode then io.write(Defaults.Dev.SetFile.PeekElements)
    for i, v in ipairs(Choice) do
	  io.write(Defaults.DevPrompt, v, "\n")
	end
	io.write(Defaults.Dev.SetFile.ElementsPeeked)
  end
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