local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib.lua/Boltlib.lua"))()
local win = lib:CreateWindow("💎 Bank Hub 💎")

local page = window:Taps("Main")
page:Toggle("Auto Claim Expertise", function(state)
    print("Toggle:", state)
end)

page:Button("Button", function()
    print("ปุ่มถูกกด")
end)
