--script
local MainSceen = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Library.lua"))()
local Window = create:Win("EZ Hub")
game:GetService("CoreGui").redui.MainSceen.Visible = false

create:Notifile("", "   Welcome " .. game.Players.LocalPlayer.Name .. " To OP:L", 5)

game:GetService("CoreGui").redui.MainSceen.Visible = true

local Tap1 = Window:Taps("Anti")
local page1 = Tap1:newpage()

page1:Label(" ┇ Function Antis ┇ ")

page1:Toggle("Anti", false,function(dmmsv)
    AutoMission = dmmsv
end)
