local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Libinw.lua"))()
local Window = create:Win("NG Hub Premium : For Map OPL")

create:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to OP:L", 5)

-- สร้างแท็บชื่อ Autos
local Tab1 = Window:Taps("Autos")
local page1 = Tab1:newpage()

page1:Label("┇ Function Autos ┇")
page1:Toggle("Auto Claim Mission", false, function(state)
    AutoMission = state
end)

-- เพิ่มอีกแท็บ
local Tab2 = Window:Taps("Farming")
local page2 = Tab2:newpage()

page2:Label("┇ Function Farming ┇")
page2:Toggle("Auto Farm", false, function(state)
    AutoMission = state
end)

local Tab3 = Window:Taps("Players")
local page3 = Tab3:newpage()

page3:Section("Player")
page3:Dropdown("Select Player", {"Option 1", "Option 2", "Option 3"}, function(selected)
        create:Notifile("Dropdown", "คุณเลือก: " .. selected, 3)
end)

page3:Button("Click to Tp", function()
    create:Notifile("", "Clicked", 2)
end)

page3:Toggle("Behind", false, function(state)
    AutoFarm = state
end)

local Tab4 = Window:Taps("Island")
local page4 = Tab4:newpage()

page4:Label("┇ Function Teleport ┇")
page4:Button("Click to Tp", false, function()
    create:Notifile("", "Clicked!", 2)
end)

local Tab5 = Window:Taps("Misc")
local page5 = Tab5:newpage()

page5:Label("┇ Function Anti ┇")
page5:Toggle("Anti Dmg Water", false, function(state)
    AutoMission = state
end)
