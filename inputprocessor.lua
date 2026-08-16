local Defaults = require("defaults")
local Types = 
{
  ["normal"] = function(Input)
	local ParsingString, ResultingTable = "", {}
	local Len = Input:len()
	for i = 1, Len, 1 do
	  local Sub = Input:sub(i, i)
	  if i == Len then
		ParsingString = ParsingString .. Sub
		ResultingTable[#ResultingTable+1] = ParsingString
		ParsingString = nil
	  elseif Sub == " " then
		ResultingTable[#ResultingTable+1] = ParsingString
		ParsingString = ""
	  else
		ParsingString = ParsingString .. Sub
	  end
	end
	if Defaults.DevMode then io.write(Defaults.Dev.InputProcessor.EndOfNormalType) end
	return ResultingTable
  end,
  ["prepare_for_compression_lossless"] = function(Input)
	local ResultingTable = {}
	local WordCount = {}
	local ParsingString = ""
	local Len = Input:len()
	for Index = 1, Len, 1 do
	  local Sub = Input:sub(Index, Index)
	  if i == Len then
		ParsingString = ParsingString .. Sub
		ResultingTable[#ResultingTable+1] = ParsingString
		if not WordCount[ParsingString] then WordCount[ParsingString] = 1
		else WordCount[ParsingString] = WordCount[ParsingString] + 1 end
		ParsingString = nil
	  elseif Sub == " " then
	    ResultingTable[#ResultingTable+1] = ParsingString
		if not WordCount[ParsingString] then WordCount[ParsingString] = 1
		else WordCount[ParsingString] = WordCount[ParsingString] + 1 end
		ParsingString = ""
	  else
	    ParsingString = ParsingString .. Sub
	  end
	end
	return {WordCount = WordCount, ResultingTable = ResultingTable}
  end
}

local Processor = {}

function Processor.Execute(Type, Input)
  if Types[Type] then return Types[Type](Input) end
  if Defaults.DevMode then io.write(Defaults.Dev.InputProcessor.EndOfFunction) end
end
return Processor