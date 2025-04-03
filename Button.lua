local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Parent = gui
button.Size = UDim2.new(0, 60, 0, 60) -- ปรับขนาดให้เป็นวงกลม
button.Position = UDim2.new(1, -90, 0, -10) -- มุมขวาบน
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BackgroundTransparency = 0.5 -- โปร่งใส 50%
button.BorderSizePixel = 2
button.BorderColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "Drop" -- ใช้ไอคอนถังขยะ
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 25
button.AutoButtonColor = false
button.ClipsDescendants = true

-- ทำให้เป็นวงกลม
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(1, 0) -- ทำให้เป็นวงกลม
uiCorner.Parent = button

-- เอฟเฟกต์เมื่อชี้เมาส์
button.MouseEnter:Connect(function()
    button.BackgroundTransparency = 0.2 -- ลดความโปร่งใส
end)

button.MouseLeave:Connect(function()
    button.BackgroundTransparency = 0.5 -- คืนค่าเดิม
end)

-- ฟังก์ชันทิ้งของที่ถือในมือ
button.MouseButton1Click:Connect(function()
    local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
    if tool then  -- ตรวจสอบว่ามีเครื่องมืออยู่หรือไม่
        tool.Parent = game.Workspace
    end
end)
