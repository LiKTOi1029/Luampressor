local Defaults = require("defaults")
local Command = {}
function Command.Execute(Input)
  return Defaults.NormalPrompt .. Defaults.SelectedFile .. " is currently selected\n"
end
return Command