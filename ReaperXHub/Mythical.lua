-- โหลด Library
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib/RxeperLib.lua"))()

-- สร้าง Window
local win = lib:Win("ReaperX Hub | Map: [ Alpha ]One Piece: Mythical")

-- แจ้งเตือนตัวอย่าง
lib:Notifile("Alert", "This is a test message!", 3)

--===============================
-- 🔹 TAB 1 : MAIN
--===============================
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

local section = tab2:DropdownTab("Extra Settings")
section:Button("Sub Button", function()
    print("Sub button pressed!")
end)

section:Toggle("Sub Toggle", true, function(val)
    print("Sub toggle:", val)
end)

section:Label("Sub Label: Info here")
section:Dropdown("Choose Mode", {"Easy", "Normal", "Hard"}, function(mode)
    print("Selected mode:", mode)
end)

local tab3 = win:Taps("Info")

tab3:Label("👋 Welcome to ReaperX Hub")
tab3:Button("Discord Invite", function()
    setclipboard("https://discord.gg/xxxxxxx") -- เปลี่ยนลิงก์ได้
    print("Copied Discord link!")
end)
tab3:Toggle("Show Tips", true, function(v)
    print("Show Tips:", v)
end)
