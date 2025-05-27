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
page2:Toggle("Auto Farm", false, function(state)
    AutoFarm = state
end)

local Tab3 = Window:Taps("Players")
local page3 = Tab3:newpage()

page3:Section("Player")
page3:Dropdown("Select Player", {"Option 1", "Option 2", "Option 3"}, function(selected)
        create:Notifile("Dropdown", "คุณเลือก: " .. selected, 3)
end)

page3:Button("Click to Tp", function()
    create:Notifile("", "คุณกดปุ่มเรียบร้อยแล้ว!", 3)
end)

page3:Toggle("Behind", false, function(state)
    AutoFarm = state
end)
