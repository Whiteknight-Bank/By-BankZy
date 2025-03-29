-- Creat ScreenGui และ UI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Creat KeyFrame (Enter the key.)
local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0.4, 0, 0.3, 0)
keyFrame.Position = UDim2.new(0.3, 0, -0.4, 0)
keyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
keyFrame.BorderSizePixel = 0
keyFrame.Visible = true
keyFrame.Parent = screenGui

-- Add rounded edges and shadows.
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0.1, 0)
uiCorner.Parent = keyFrame

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 2
uiStroke.Color = Color3.fromRGB(255, 255, 255)
uiStroke.Parent = keyFrame

-- Creat KeyInput (Input Key.)
local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.8, 0, 0.3, 0)
keyInput.Position = UDim2.new(0.1, 0, 0.2, 0)
keyInput.PlaceholderText = "กรอกคีย์ที่นี่"
keyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.Parent = keyFrame

-- Button (SubmitButton)
local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0.8, 0, 0.3, 0)
submitButton.Position = UDim2.new(0.1, 0, 0.6, 0)
submitButton.Text = "ยืนยัน"
submitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
submitButton.TextColor3 = Color3.fromRGB(0, 0, 0)
submitButton.Parent = keyFrame

-- Have Effect When u Press it.
submitButton.MouseButton1Down:Connect(function()
    submitButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
end)
submitButton.MouseButton1Up:Connect(function()
    submitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end)

-- Text Notification (Animation)
local notification = Instance.new("TextLabel")
notification.Size = UDim2.new(0.3, 0, 0.05, 0)
notification.Position = UDim2.new(0.7, 0, 1.1, 0)
notification.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
notification.TextColor3 = Color3.fromRGB(255, 255, 255)
notification.Text = ""
notification.Visible = false
notification.Parent = screenGui

local notificationCorner = Instance.new("UICorner")
notificationCorner.CornerRadius = UDim.new(0.2, 0)
notificationCorner.Parent = notification

-- Currect key
local correctKey = "7090"

-- Notification (Animation)
local function showNotification(message)
    notification.Text = message
    notification.Visible = true
    notification:TweenPosition(UDim2.new(0.7, 0, 0.9, 0), "Out", "Quad", 0.5, true) -- เลื่อนขึ้น
    wait(2)
    notification:TweenPosition(UDim2.new(0.7, 0, 1.1, 0), "Out", "Quad", 0.5, true) -- เลื่อนลง
    wait(0.5)
    notification.Visible = false
end

-- ฟังก์ชันตรวจสอบคีย์
local function checkKey()
    if keyInput.Text == correctKey then
        keyFrame:TweenPosition(UDim2.new(0.3, 0, -0.4, 0), "Out", "Quad", 0.5, true) -- เมนูเลื่อนออก
        wait(0.5)
        keyFrame:Destroy() -- destroy menu key
        print("Script that requires key intection.")
    else
        showNotification("❌ คีย์ผิด กรุณาลองใหม่!")
    end
end

-- เชื่อมปุ่มกับฟังก์ชัน
submitButton.MouseButton1Click:Connect(checkKey)

-- ทำให้ KeyFrame เลื่อนลงมาตอนเริ่มเกม
keyFrame:TweenPosition(UDim2.new(0.3, 0, 0.4, 0), "Out", "Quad", 0.5, true)
