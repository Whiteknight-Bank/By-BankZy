-- สร้าง ScreenGui และองค์ประกอบ UI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- สร้าง KeyFrame (หน้ากรอกคีย์)
local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0.4, 0, 0.3, 0)
keyFrame.Position = UDim2.new(0.3, 0, -0.4, 0)  -- ตั้งตำแหน่งให้เริ่มต้นอยู่นอกหน้าจอ
keyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- สีดำ
keyFrame.BorderSizePixel = 2
keyFrame.BorderColor3 = Color3.fromRGB(255, 255, 255) -- ขอบสีขาว
keyFrame.Parent = screenGui

-- สร้าง KeyInput (TextBox สำหรับใส่คีย์)
local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.8, 0, 0.3, 0)
keyInput.Position = UDim2.new(0.1, 0, 0.2, 0)
keyInput.PlaceholderText = "ใส่คีย์ที่นี่"
keyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- สีเทาเข้ม
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255) -- ตัวอักษรสีขาว
keyInput.BorderSizePixel = 2
keyInput.BorderColor3 = Color3.fromRGB(255, 255, 255) -- ขอบสีขาว
keyInput.Parent = keyFrame

-- สร้าง SubmitButton (ปุ่มยืนยัน)
local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0.8, 0, 0.3, 0)
submitButton.Position = UDim2.new(0.1, 0, 0.6, 0)
submitButton.Text = "ยืนยัน"
submitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- ปุ่มสีขาว
submitButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- ตัวอักษรสีดำ
submitButton.BorderSizePixel = 2
submitButton.BorderColor3 = Color3.fromRGB(0, 0, 0) -- ขอบสีดำ
submitButton.Parent = keyFrame

-- สร้าง MainMenu (เมนูหลัก)
local mainMenu = Instance.new("Frame")
mainMenu.Size = UDim2.new(0.5, 0, 0.5, 0)
mainMenu.Position = UDim2.new(0.25, 0, 0.25, 0)
mainMenu.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- สีดำ
mainMenu.BorderSizePixel = 2
mainMenu.BorderColor3 = Color3.fromRGB(255, 255, 255) -- ขอบสีขาว
mainMenu.Visible = false
mainMenu.Parent = screenGui

-- ตัวแปรตั้งค่า
local correctKey = "MySecretKey" -- กำหนดคีย์ที่ถูกต้อง

-- ฟังก์ชันตรวจสอบคีย์
local function checkKey()
    if keyInput.Text == correctKey then
        -- ทำการซ่อน KeyFrame และแสดง MainMenu
        keyFrame:TweenPosition(UDim2.new(0.3, 0, -0.4, 0), "Out", "Quad", 0.5, true) -- อนิเมชั่นเลื่อนออก
        wait(0.5)
        keyFrame:Destroy() -- ทำลาย KeyFrame
        mainMenu.Visible = true
        mainMenu:TweenPosition(UDim2.new(0.25, 0, 0.25, 0), "Out", "Quad", 0.5, true) -- อนิเมชั่นเลื่อนเข้า
    else
        game.Players.LocalPlayer:Kick("คุณใส่คีย์ผิด!") -- เตะผู้เล่นออกจากเกม
    end
end

-- เชื่อมฟังก์ชันกับปุ่ม
submitButton.MouseButton1Click:Connect(checkKey)

-- ทำให้ KeyFrame เลื่อนเข้ามาเมื่อเริ่มเกม
keyFrame:TweenPosition(UDim2.new(0.3, 0, 0.4, 0), "Out", "Quad", 0.5, true)
