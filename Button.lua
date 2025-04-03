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

-- สร้าง ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- สร้าง Frame สำหรับแจ้งเตือน
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.1, 0)
frame.Position = UDim2.new(1, 0, 0.9, 0)  -- เริ่มต้นที่มุมขวานอกจอ
frame.BackgroundTransparency = 0.5  -- พื้นหลังโปร่งใส
frame.BackgroundColor3 = Color3.new(0, 0, 0) -- สีดำ
frame.BorderSizePixel = 4  -- ขอบขาว
frame.BorderColor3 = Color3.new(1, 1, 1) -- ขอบสีขาว
frame.Parent = screenGui

-- สร้าง TextLabel สำหรับข้อความแจ้งเตือน
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "by ไอ่แบงค์!"
textLabel.TextScaled = true
textLabel.TextColor3 = Color3.new(1, 1, 1) -- ข้อความสีขาว
textLabel.Font = Enum.Font.GothamBold
textLabel.Parent = frame

-- ใช้ TweenService เพื่อเพิ่มอนิเมชั่น
local TweenService = game:GetService("TweenService")

-- การตั้งค่าอนิเมชั่นให้ Frame เคลื่อนที่เข้ามาจากข้างนอก
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)
local goal = {Position = UDim2.new(0.7, 0, 0.9, 0)}  -- เคลื่อนที่ไปมุมขวาล่าง
local tween = TweenService:Create(frame, tweenInfo, goal)

-- เริ่มการอนิเมชั่น
tween:Play()

-- ฟังก์ชันให้แจ้งเตือนหายไปหลังจาก 3 วินาที พร้อมอนิเมชั่น
task.wait(3)

-- การตั้งค่าอนิเมชั่นให้ Frame หายไป
local fadeTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
local fadeGoal = {BackgroundTransparency = 1, TextTransparency = 1}  -- ทำให้โปร่งใส
local fadeTween = TweenService:Create(frame, fadeTweenInfo, fadeGoal)

-- เริ่มการอนิเมชั่นที่ทำให้มันหายไป
fadeTween:Play()

fadeTween.Completed:Connect(function()
    screenGui:Destroy()
end)
