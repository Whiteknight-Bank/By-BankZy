--script
local Window = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Library.lua"))()
create:Win("InW Hub : For Map OPL: Anarchy / No Update Now.")
game:GetService("CoreGui").redui.MainSceen.Visible = false

create:Notifile("", "   Welcome " .. game.Players.LocalPlayer.Name .. " To OP:L", 5)

game:GetService("CoreGui").redui.MainSceen.Visible = true

local Tap1 = Window:Taps("Autos")
local page1 = Tap1:newpage()

page1:Label(" ┇ Function Autos ┇ ")

page1:Toggle("Auto Claim Mission", false,function(dmmsv)
    AutoMission = dmmsv
end)
