local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Libinw.lua"))()
local Window = create:Win("NG Hub : For Map OPL")

create:Notifile("", "   Welcome " .. game.Players.LocalPlayer.Name .. " To OP:L", 5)

local Tap1 = Window:Taps("Autos")
local page1 = Tap1:newpage()

page1:Section("ฟังก์ชันอัตโนมัติ")

page1:Toggle("Auto Claim Mission", false, function(state)
    AutoMission = state
end)

spawn(function()
    while task.wait(1) do
        if AutoMission then
            pcall(function()
                workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
            end)
        end
    end
end)
