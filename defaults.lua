local Defaults =
{
  WarningPrompt = "/> ",
  ErrorPrompt = "X> ",
  NormalPrompt = " > ",
  CommandsDir = "commands/",
  SelectedFile = false, -- false means no file is selected. String if a file is selected.
  CommandsList = {}, -- Intentionally empty, is filled out by commandgetter.lua
}
Defaults.Errors = 
{
  CommandNotFound = Defaults.ErrorPrompt .. "Command was not found! Please use the help command for commandlist\n",
}


return Defaults