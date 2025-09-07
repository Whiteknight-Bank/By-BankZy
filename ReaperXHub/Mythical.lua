local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib/RxeperXLib.lua"))()
local win = lib:Win("ReaperX Hub")

lib:Notifile("Alert", "This is a test message!", 3)

local tab1 = win:Taps("Main")
local tab2 = win:Taps("Settings")

tab1:Button("Click Me", function()
    print("Button Clicked!")
end)

tab1:Toggle("Enable Feature", false, function(state)
    print("Toggle is:", state)
end)

tab1:Dropdown("Select Item", {"Apple", "Banana", "Orange"}, function(selected)
    print("You picked:", selected)
end)

tab1:Label("Status: Waiting...")

local section = tab2:DropdownTab("Extra Settings")

section:Button("Sub Button", function()
    print("Sub button pressed!")
end)

section:Toggle("Sub Toggle", true, function(val)
    print("Sub toggle:", val)
end)

local section = tab2:DropdownTab("Extra Settings")

section:Button("Sub Button", function()
    print("Sub button pressed!")
end)

section:Toggle("Sub Toggle", true, function(val)
    print("Sub toggle:", val)
end)
