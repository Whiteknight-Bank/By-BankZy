local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib.lua/Boltlib.lua"))()
local window = create:Window("Bank Hub")

local page1 = window:Taps("ระบบ")
page1:Toggle("เปิดระบบ", function(v) 
print("ระบบ:", v) 
end)

local page2 = window:Taps("ตั้งค่า")
page2:Button("รีโหลด", function() 
print("รี") 
end)
