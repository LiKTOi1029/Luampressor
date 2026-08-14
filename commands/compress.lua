local InputProcessor = require("inputprocessor")
local Defaults = require("defaults")
local Compress = {}
function StandardCompression(Input)
  local Date = os.date():gsub("%D", "_")
  local FileExtension = Defaults.SelectedFile:sub(Defaults.SelectedFile:find("%.%a+$"))
  local FileOutput = Defaults.SelectedFile:gsub("%.%a+$", "") .. Defaults.OutputName .. Date .. FileExtension
  local File = io.open(Defaults.SelectedFile, "r")
  return Defaults.Normal.CompressedTheFile
end
function InlineCompression(Input)

end
function Compress.Execute(Input)
  if #Input > 1 then
	return InlineCompression(Input)
  else
	return StandardCompression(Input)
  end
end
return Compress