local create = loadfile("Libinw_final.lua")()
local Window = create:Win("Bank Hub")

local Tab1 = Window:Taps("ออโต้")
local page1 = Tab1:newpage()

page1:Label(" ฝั่งชั่น การเกิด ")

page1:Button("เซฟจุดเกิด", function()
    local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then
        _G.savedCFrame = hrp.CFrame
        create:Notify("เซฟแล้ว!", 3)
    end
end)

page1:Toggle("ออโต้ เกิดและกดตาย", false, function(state)
    _G.respawndie = state
end, "ถ้าเปิด จะบังคับเกิดใหม่และกดตายอัตโนมัติ")

page1:Dropdown("เลือกผลไม้", {"แอปเปิ้ล","กล้วย","ส้ม"}, function(value)
    print("เลือก:", value)
end, "เลือกได้เพียงผลไม้เดียว")

page1:Dropdown("เลือกสกิล", {"สกิล A","สกิล B","สกิล C"}, function(values)
    print("เลือกหลาย:", table.concat(values,", "))
end, "เลือกได้หลายสกิลพร้อมกัน", true)

page1:Textbox("ตั้งชื่อ", "พิมพ์ชื่อของคุณ", function(text)
    print("ชื่อที่กรอก:", text)
end)

local Tab2 = Window:Taps("ตั้งค่า")
local page2 = Tab2:newpage()

page2:Label(" ตัวอย่างหน้า 2 ")
page2:Button("ทดสอบ", function() 
print("ok") 
end)
