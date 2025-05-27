local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Libinw.lua"))()
local Window = create:Win("Test Hub")
create:Notifile("", "Welcome "..game.Players.LocalPlayer.Name, 5)

local Tap1 = Window:Taps("Autos")
local page1 = Tap1:newpage()

page1:Label(" ┇ Function Autos ┇ ")
page1:Toggle("Auto Claim Mission", false, function(v)
    AutoMission = v
end)
