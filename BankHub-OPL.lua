local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib.lua/Boltlib.lua"))()
local window = create:Window("Bank Hub")

local page1 = window:Taps("Autos")
page1:Toggle("Auto Claim Expertise", function(v) 
 print("ระบบ:", v) 
 end)

page1:Toggle("Auto Bring Devil Fruit", function(v) 
 print("ระบบ:", v) 
 end)

page1:Toggle("Auto Claim Challengs", function(v) 
 print("ระบบ:", v) 
 end)

page1:Toggle("Auto Claim Gift Beri", function(v) 
 print("ระบบ:", v) 
 end)

page1:Toggle("Auto Claim Gift Gems", function(v) 
 print("ระบบ:", v) 
 end)

page1:Toggle("Auto Bring Chest", function(v) 
 print("ระบบ:", v) 
 end)

page1:Toggle("เปิดระบบ", function(v) 
 print("ระบบ:", v) 
 end)


local page2 = window:Taps("Farm")
page2:Button("รีโหลด", function() 
 print("รี") 
 end)

local page3 = window:Taps("Island")
page3:Toggle("เปิดระบบ", function(v) 
 print("ระบบ:", v) 
 end)

local page4 = window:Taps("Players")
page4:Button("รีโหลด", function() 
 print("รี") 
 end)

local page5 = window:Taps("Misc")
page5:Toggle("เปิดระบบ", function(v) 
 print("ระบบ:", v) 
 end)

