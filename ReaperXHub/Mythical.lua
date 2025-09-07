-- โหลด Library
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib/RxeperLib.lua"))()
local win = lib:Win("ReaperX Hub | Map: [ Alpha ]One Piece: Mythical")

lib:Notifile("Alert", "This is a test message!", 3)

local tab1 = win:Taps("Main")

tab1:Label("Status: Waiting...")
tab1:Dropdown("Select Item", {"Apple", "Banana", "Orange"}, function(selected)
    print("You picked:", selected)
end)

tab1:Button("Click Me", function()
    print("Button Clicked!")
end)

tab1:Toggle("Enable Feature", false, function(state)
    print("Toggle is:", state)
end)

local tab2 = win:Taps("Settings")
tab2:Label("Tab Farming")

local section2 = tab2:DropdownTab("Function Farming")
section2:Button("Sub Button", function()
    print("Sub button pressed!")
end)

section2:Toggle("Enable Feature", false, function(state)
    print("Toggle is:", state)
end, "เปิดแล้วจะเปิดใช้งานฟีเจอร์พิเศษ")

section2:Dropdown("Select Item", {"Apple","Banana","Orange"}, function(selected)
    print("Picked:", selected)
end, "เลือกผลไม้ที่คุณชื่นชอบ")

local tab3 = win:Taps("Info")

tab3:Label("👋 Welcome to ReaperX Hub")
tab3:Button("Discord Invite", function()
    setclipboard("https://discord.gg/xxxxxxx") -- เปลี่ยนลิงก์ได้
    print("Copied Discord link!")
end)
tab3:Toggle("Show Tips", true, function(v)
    print("Show Tips:", v)
end)
