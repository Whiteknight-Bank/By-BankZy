local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Libinw.lua"))()
local Window = create:Win("InW Hub : For Map OPL")

create:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to OP:L", 5)

-- สร้างแท็บชื่อ Autos
local Tab1 = Window:Taps("Autos")
local page1 = Tab1:newpage()

page1:Label("┇ Function Autos ┇")
page1:Section("Mission Control")

page1:Toggle("Auto Claim Mission", false, function(state)
    AutoMission = state
end)

-- เพิ่มอีกแท็บ
local Tab2 = Window:Taps("Farming")
local page2 = Tab2:newpage()

page2:Section("Farming Area")
page2:Label("เริ่มฟาร์มอัตโนมัติ")

page2:Toggle("Auto Farm", false, function(state)
    AutoFarm = state
end)
