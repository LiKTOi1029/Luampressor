local InputProcessor = require("inputprocessor")
local Defaults = require("defaults")
local Compress = {}
function StandardCompression(Input)
  local Date = os.date():gsub("%D", "_")
  local FileExtension = Defaults.SelectedFile:sub(Defaults.SelectedFile:find("%.%a+$"))
  local FileOutput = Defaults.SelectedFile:gsub("%.%a+$", "") .. Defaults.OutputName .. Date .. FileExtension
  local File = io.open(Defaults.SelectedFile, "r")
  local Data = File:read("*all")
  if Data and Defaults.DevMode then io.write(Defaults.Dev.Compress.SelectedFileExtracted) end
  if not Data then io.write(Defaults.Errors.Compress) end
  File:close()
  local DataTable = InputProcessor.Execute("prepare_for_compression_lossless", Data)
  if Defaults.DevMode then io.write(Defaults.Dev.Compress.WordCountPair)
	for Word, Count in pairs(DataTable.WordCount) do
	  io.write(Defaults.DevPrompt, Word, " : ", Count, "\n")
	end
  end
  
  return Defaults.Normal.CompressedTheFile
end
function InlineCompression(Input)
  return Defaults.Normal.NotImplemented
end
function Compress.Execute(Input)
  if #Input > 1 then
	return InlineCompression(Input)
  else
	return StandardCompression(Input)
  end
end
return Compress