local Defaults =
{
  WarningPrompt = "/> ",
  ErrorPrompt = "X> ",
  NormalPrompt = " > ",
  CommandsDir = "commands/",
  SelectedFile = false, -- false means no file is selected. String if a file is selected.
  OutputName = "_Output",
  CommandsList = {}, -- Intentionally empty, is filled out by commandgetter.lua
  DevMode = true,
  DevPrompt = "D> ",
}
Defaults.Normal = 
{
  SelectedTheFile = Defaults.NormalPrompt .. "File selected!\n",
  CompressedTheFile = Defaults.NormalPrompt .. "Compressed file!\n",
  NotImplemented = Defaults.NormalPrompt .. "Not implemented :(\n"
}
Defaults.Dev = 
{
  SetFile = 
  {
	PeekElements = Defaults.DevPrompt .. "From " .. Defaults.CommandsDir .. "setfile.lua:\n",
	ElementsPeeked = Defaults.DevPrompt .. "Finished peeking setfile input\n",
  },
  Main = 
  {
	PeekProcessedInput = Defaults.DevPrompt .. "Input processed into the following:\n",
	ProcessedInputPeeked = Defaults.DevPrompt .. "Finished peeking full input\n",
  },
  InputProcessor = 
  {
	EndOfFunction = Defaults.DevPrompt .. "This code reached the end of the InputProcessor without\n" .. Defaults.DevPrompt .. "finding any matching tablifiers. Most likely something went wrong\n",
	EndOfNormalType = Defaults.DevPrompt .. "The normal type has been executed in InputProcessor\n",
  },
  Compress = 
  {
	SelectedFileExtracted = Defaults.DevPrompt .. "The selected file has been extracted, closing file now\n" .. Defaults.DevPrompt .. "compression begins\n"
  },
}
Defaults.Errors = 
{
  CommandNotFound = Defaults.ErrorPrompt .. "Command was not found! Please use the help command for commandlist\n",
  SelectedFileNotFound = Defaults.ErrorPrompt .. "Inputted filename was not found\n" .. Defaults.ErrorPrompt .. "Try inputting the full path. If that doesn't work, try using the 'contacts' command\n",
}


return Defaults