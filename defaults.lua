local Defaults =
{
  WarningPrompt = "/> ",
  ErrorPrompt = "X> ",
  NormalPrompt = " > ",
  CommandsDir = "commands/",
  SelectedFile = false, -- false means no file is selected. String if a file is selected.
  CommandsList = {}, -- Intentionally empty, is filled out by commandgetter.lua
  DevMode = true,
}
Defaults.Errors = 
{
  CommandNotFound = Defaults.ErrorPrompt .. "Command was not found! Please use the help command for commandlist\n",
  SelectedFileNotFound = Defaults.ErrorPrompt .. "Inputted filename was not found\n" .. Defaults.ErrorPrompt .. "Try inputting the full path. If that doesn't work, try using the 'contacts' command\n"
}


return Defaults