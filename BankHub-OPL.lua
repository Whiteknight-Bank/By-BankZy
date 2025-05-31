 local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib.lua/Boltlib.lua"))()
local Window = Library:Window("Bank Hub")

local page1 = Window:Taps("Main")
page1:Toggle("Auto Click", function(state)
    print("Auto Click: ", state)
end)

page1:Button("Print Hello", function()
    print("Hello World")
end)

local page2 = Window:Taps("Settings")
page2:Toggle("Dark Mode", function(state)
    print("Dark Mode: ", state)
end)

page2:Button("Close Game", function()
    game:Shutdown()
end)
