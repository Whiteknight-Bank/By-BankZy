-- สร้าง ScreenGui และองค์ประกอบ UI local screenGui = Instance.new("ScreenGui") screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local keyFrame = Instance.new("Frame") 
keyFrame.Size = UDim2.new(0.3, 0, 0.2, 0) 
keyFrame.Position = UDim2.new(0.35, 0, 0.4, 0) 
keyFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
keyFrame.Parent = screenGui

local keyInput = Instance.new("TextBox") 
keyInput.Size = UDim2.new(0.8, 0, 0.3, 0) 
keyInput.Position = UDim2.new(0.1, 0, 0.2, 0) 
keyInput.PlaceholderText = "ใส่คีย์ที่นี่" 
keyInput.Parent = keyFrame

local submitButton = Instance.new("TextButton") submitButton.Size = UDim2.new(0.8, 0, 0.3, 0) submitButton.Position = UDim2.new(0.1, 0, 0.6, 0) submitButton.Text = "ยืนยัน" submitButton.Parent = keyFrame
local mainMenu = Instance.new("Frame") mainMenu.Size = UDim2.new(0.5, 0, 0.5, 0) mainMenu.Position = UDim2.new(0.25, 0, 0.25, 0) mainMenu.BackgroundColor3 = Color3.fromRGB(70, 70, 70) mainMenu.Visible = false mainMenu.Parent = screenGui

-- ตัวแปรตั้งค่า 
local correctKey = "7090" 
-- กำหนดคีย์ที่ถูกต้อง

-- รับ UI Elements 
local player = game.Players.LocalPlayer 
local gui = script.Parent 
local keyInput = gui.KeyFrame.KeyBox 
local submitButton = gui.KeyFrame.SubmitButton 
local mainMenu = gui.MainMenu

local function checkKey() 
  if keyInput.Text == correctKey then 
    gui.KeyFrame.Visible = false
    mainMenu.Visible = true
  else player:Kick("คุณใส่คีย์ผิด!")
  end 
end

-- เชื่อมฟังก์ชันกับปุ่ม 
    submitButton.MouseButton1Click:Connect(checkKey)

