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

