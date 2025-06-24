local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

if CoreGui:FindFirstChild("LoadingScreen") then
    CoreGui:FindFirstChild("LoadingScreen"):Destroy()
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "LoadingScreen"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

-- กล่องหลัก
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 0, 0, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BackgroundTransparency = 0.2
mainFrame.Parent = ScreenGui
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 15)

-- แอนิเมชันขยาย
TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 400, 0, 160)
}):Play()

-- ข้อความ "Loading" (ต่ำลงมา)
local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0.39, 0)
title.BackgroundTransparency = 1
title.Text = "Loading"
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.TextColor3 = Color3.new(1, 1, 1)

-- หลอดโหลดพื้นหลัง
local barBg = Instance.new("Frame", mainFrame)
barBg.Size = UDim2.new(0.8, 0, 0, 6)
barBg.Position = UDim2.new(0.1, 0, 0.58, 0)
barBg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
barBg.BackgroundTransparency = 0.6
barBg.BorderSizePixel = 0
Instance.new("UICorner", barBg).CornerRadius = UDim.new(1, 0)

-- หลอดโหลดจริง (สีขาว)
local bar = Instance.new("Frame", barBg)
bar.Size = UDim2.new(0, 0, 1, 0)
bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bar.BorderSizePixel = 0
Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)

-- ตัวเลข %
local percentLabel = Instance.new("TextLabel", mainFrame)
percentLabel.Size = UDim2.new(1, 0, 0, 30)
percentLabel.Position = UDim2.new(0, 0, 0.68, 0)
percentLabel.BackgroundTransparency = 1
percentLabel.Text = "0%"
percentLabel.Font = Enum.Font.GothamBold
percentLabel.TextSize = 22
percentLabel.TextColor3 = Color3.fromRGB(200, 255, 200)

-- โหลดและอนิเมชันจุด . . .
task.spawn(function()
	wait(0.4) -- รอ Tween ขยายก่อน

	local dots = { "", ".", ". .", ". . ." }
	local dotIndex = 1
	local updateLoading = true

	-- วน . . .
	task.spawn(function()
		while updateLoading do
			title.Text = "ReaperX Hub Loading" .. dots[dotIndex]
			dotIndex = dotIndex % #dots + 1
			wait(0.4)
		end
	end)

	for i = 1, 100 do
		bar.Size = UDim2.new(i / 100, 0, 1, 0)
		percentLabel.Text = i .. "%"
		wait(0.02)
	end

	updateLoading = false
	wait(0.5)
	ScreenGui:Destroy()

local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib/Libinw.lua"))()
local Window = create:Win("ReaperX Hub | One Piece Millenium")

create:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to ReaperX Hub", 5)

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBox1"] = {"Common Box"};
Cache.DevConfig["ListOfBox2"] = {"Uncommon Box"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"};
Cache.DevConfig["ListOfDropCompass"] = {"Compass"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};

local Wapon = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
    end

local playerNames = {}
for _, player in ipairs(game.Players:GetPlayers()) do
    table.insert(playerNames, player.Name)
    end

local Tab1 = Window:Taps("Auto")
local page1 = Tab1:newpage()

page1:Label("┇ Function Auto ┇")    
page1:Toggle("Notifile Shank", false, function(shk)
    _G.shank = shk
end)	

page1:Toggle("Bring Fruit & Book", false, function(brdf)
    _G.bringdf = brdf
end)	

page1:Toggle("Notifile White Bread", false, function(whbd)
    _G.whitebread = whbd
end)	

page1:Button("Teleport All Chest" , function()
       local player = game.Players.LocalPlayer
local teleportDelay = 1 -- หน่วงเวลาก่อนวาร์ปจุดถัดไป

local teleportPositions = {
    Vector3.new(2927, 96, -1510),
    Vector3.new(-789, 54, -3410),
    Vector3.new(979, 64, -2208),
    Vector3.new(-988, 160, -3274),
    Vector3.new(-1061, 54, -3626),
    Vector3.new(3157, 77, -1238),
    Vector3.new(-845, 65, -825),
    Vector3.new(-1194, 65, 1083),
    Vector3.new(-2597, 118, -1978),
    Vector3.new(1158, 56, 424),
    Vector3.new(-2643, 58, -1920),
    Vector3.new(2929, 98, -1510),
    Vector3.new(829, 59, -286),
    Vector3.new(1347, 151, 95),
    Vector3.new(-877, 58, -1265),
    Vector3.new(2783, 77, -1304),
    Vector3.new(-815, 61, -1385),
    Vector3.new(717, 61, 130),
    Vector3.new(-2399, 79, -1914),
    Vector3.new(-1056, 67, 886),
    Vector3.new(-1073, 62, -1266),
}

spawn(function()
    local character = player.Character or workspace:FindFirstChild(player.Name)
    if not character then return end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end

    for _, pos in ipairs(teleportPositions) do
        local targetCFrame = CFrame.new(pos.X, pos.Y + 3, pos.Z)
        humanoidRootPart.CFrame = targetCFrame
        wait(teleportDelay)
    end
create:Notifile("", "Done!!!", 3)
end)
end)

local Tab2 = Window:Taps("Farm")
local page2 = Tab2:newpage()

page2:Label("┇ Function Item ┇")    
		
local selectedWeapon = nil

page2:Dropdown("Select Weapon:", Wapon, function(wapn)
    selectedWeapon = wapn
end)

page2:Button("Refresh Weapon", function()
    table.clear(Wapon)
    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Wapon, v.Name)
        end
    end
				
wait(0.3)
create:Notifile("", "Dropdown Refresh!", 2)
end)
		
page2:Toggle("Auto Click", false, function(lcik)
    _G.autoclick = lcik
end)

spawn(function() 
game:GetService("RunService").RenderStepped:Connect(function() 
pcall(function() 
if _G.autoclick then 
game:GetService'VirtualUser':CaptureController() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end 
end) 
end) 
end)

page2:Toggle("Auto Equip", false, function(aeq)
    _G.autoequip = aeq
end)

spawn(function()
    while wait(0.1) do
        pcall(function()
            if not _G.autoequip or _G.forceHold then return end  -- ❗️บล็อกตอนมีการใช้จาก farm

            local player = game.Players.LocalPlayer
            local character = player.Character
            local backpack = player:FindFirstChild("Backpack")
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")

            if not character or not backpack or not humanoid then return end

            local tool = backpack:FindFirstChild(selectedWeapon)
            if tool and not character:FindFirstChild(tool.Name) then
                humanoid:EquipTool(tool)
                task.wait(0.05)

                if character:FindFirstChild(tool.Name) then
                    tool:Activate()
                end
            end

            if humanoid.Health <= 0 then
                humanoid:UnequipTools()
            end
        end)
    end
end)

page2:Label("┇ Function Farm ┇")

local SelectedEnemy = ""
local SelectedBoss = ""

page2:Dropdown("Select Enemys:", {
"Mountain Bandit", 
"Buggy Pirate",
"Desert Bandit",
"Ice Monster",
"Haki Monkey", 
"Logia Bandit", 
"Ito Bandit",
"Vice-Admiral",
"Skypiean",
"Revolutionary Troop"
}, function(pcns) 
    SelectedEnemy = pcns 
end)

page2:Dropdown("Select Boss:", {
"Buggy The Clown", 
"Crocodile",
"Bara Bandit",
"Yeti",
"Enel"
}, function(pbos) 
    SelectedBoss = pbos
end)

page2:Toggle("Auto Farm", false, function(befrm)
    _G.farmNpc = befrm
end)				

page2:Toggle("Auto Claim Quest Board", false, function(clmq)
    _G.claimQuest = clmq
end)	

page2:Toggle("Auto Buso", false, function(buso)
    _G.autobuso = buso
end)

local Tab2 = Window:Taps("Players")
local page2 = Tab2:newpage()

page2:Label("┇ Player ┇")
page2:Dropdown("Select Player:", playerNames, function(name)
    selectedPlayer = name
end)

page2:Button("Refresh Player", function()
    table.clear(playerNames)
    for _, player in ipairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end

wait(0.3)
create:Notifile("", "Dropdown Refresh!", 2)
end)

page2:Button("Click to Tp", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(selectedPlayer).Character.HumanoidRootPart.CFrame
end)

page2:Toggle("View", false, function(state)
	if selectedPlayer then
		local target = Players:FindFirstChild(selectedPlayer)
		if target and target.Character and target.Character:FindFirstChild("Humanoid") then
			if state then
				Camera.CameraSubject = target.Character.Humanoid
			else
				Camera.CameraSubject = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
			end
		end
	end
end)

local Tab3 = Window:Taps("Island")
local page3 = Tab3:newpage()

local plr = game.Players.LocalPlayer

page3:Label("┇ Teleport Island ┇")
page3:Button("Bandit Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-951, 58, -1154)
end)

page3:Button("Buggy Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2527, 77, -135)
end)

page3:Button("Desert Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(928, 78, 117)
end)

page3:Button("Frossil Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4420, 61, -1539)
end)

page3:Button("Sky Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3880, 2063, 3098)
end)

page3:Button("Snow Mountains Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(1567, 59, -4826)
end)

page3:Button("Revolutionary Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3104, 63, -3830)
end)

page3:Button("Marine Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(2799, 77, -1440)
end)

page3:Button("Fishman Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3999, 88, 430)
end)

page3:Button("Snowy Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1042, 58, -3245)
end)

page3:Button("Monkey Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-949, 63, 716)
end)

page3:Button("Duke Master Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(838, 61, -2133)
end)

page3:Button("Market Seller Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2520, 84, -1991)
end)

local Tab5 = Window:Taps("Misc")
local page5 = Tab5:newpage()

page5:Label("┇ Function Sever ┇")
page5:Button("Rejoin Server", function()
create:Notifile("", "Start Rejoin " .. game.Players.LocalPlayer.Name .. " Pls Wait", 3)
wait(3)
game.Players.LocalPlayer:Kick()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

page5:Button("Hop Server", function()
create:Notifile("", "Start Hop Sever " .. game.Players.LocalPlayer.Name .. " Pls Wait", 3)
wait(3)

local PlaceID = game.PlaceId
          local AllIDs = {}
          local foundAnything = ""
          local actualHour = os.date("!*t").hour
          local Deleted = false
          --[[
          local File = pcall(function()
              AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
          end)
          if not File then
              table.insert(AllIDs, actualHour)
              writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
          end
          ]]
          function TPReturner()
              local Site;
              if foundAnything == "" then
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
              else
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
              end
              local ID = ""
              if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                  foundAnything = Site.nextPageCursor
              end
              local num = 0;
              for i,v in pairs(Site.data) do
                  local Possible = true
                  ID = tostring(v.id)
                  if tonumber(v.maxPlayers) > tonumber(v.playing) then
                      for _,Existing in pairs(AllIDs) do
                          if num ~= 0 then
                              if ID == tostring(Existing) then
                                  Possible = false
                              end
                          else
                              if tonumber(actualHour) ~= tonumber(Existing) then
                                  local delFile = pcall(function()
                                      -- delfile("NotSameServers.json")
                                      AllIDs = {}
                                      table.insert(AllIDs, actualHour)
                                  end)
                              end
                          end
                          num = num + 1
                      end
                      if Possible == true then
                          table.insert(AllIDs, ID)
                          wait()
                          pcall(function()
                              -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                              wait()
                              game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                          end)
                          wait(4)
                      end
                  end
              end
          end

          function Teleport()
              while wait() do
                  pcall(function()
                      TPReturner()
                      if foundAnything ~= "" then
                          TPReturner()
                      end
                  end)
              end
          end

          Teleport()

end)
		
page5:Label("┇ Another Functions ┇")
page5:Button("Boost FPS", function()
create:Notifile("", "Pls wait start boost fps & show fps", 3)
wait(2)

local ToDisable = {
 Textures = true,
 VisualEffects = true,
 Parts = true,
 Particles = true,
 Sky = true
}
 
local ToEnable = {
 FullBright = false
}
 
local Stuff = {}
 
for _, v in next, game:GetDescendants() do
 if ToDisable.Parts then
  if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
   v.Material = Enum.Material.SmoothPlastic
   table.insert(Stuff, 1, v)
  end
 end
 
 if ToDisable.Particles then
  if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
   v.Enabled = false
   table.insert(Stuff, 1, v)
  end
 end
 
 if ToDisable.VisualEffects then
  if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
   v.Enabled = false
   table.insert(Stuff, 1, v)
  end
 end
 
 if ToDisable.Textures then
  if v:IsA("Decal") or v:IsA("Texture") then
   v.Texture = ""
   table.insert(Stuff, 1, v)
  end
 end
 
 if ToDisable.Sky then
  if v:IsA("Sky") then
   v.Parent = nil
   table.insert(Stuff, 1, v)
  end
 end
end
 
game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")
 
for i, v in next, ToDisable do
 print(tostring(i)..": "..tostring(v))
end
 
if ToEnable.FullBright then
    local Lighting = game:GetService("Lighting")
 
    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    Lighting.FogEnd = math.huge
    Lighting.FogStart = math.huge
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 5
    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.Outlines = true
				end
-- FPS Counter Script (LocalScript)
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

-- สร้าง GUI
local player = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FPSCounter"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- สร้าง TextLabel แสดง FPS
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(0, 120, 0, 35)                      -- ขนาดใหญ่ขึ้นนิดหน่อย
fpsLabel.Position = UDim2.new(1, -130, 0, 10)                 -- มุมขวาบน
fpsLabel.AnchorPoint = Vector2.new(0, 0)
fpsLabel.BackgroundTransparency = 1                           -- ไม่มีพื้นหลัง
fpsLabel.BorderSizePixel = 0
fpsLabel.TextColor3 = Color3.fromRGB(0, 255, 0)               -- สีเขียว
fpsLabel.TextStrokeTransparency = 0.5                         -- ขอบตัวอักษร
fpsLabel.Font = Enum.Font.SourceSansBold
fpsLabel.TextSize = 22                                        -- ตัวอักษรใหญ่ขึ้น
fpsLabel.Text = "FPS: 0"
fpsLabel.TextXAlignment = Enum.TextXAlignment.Right          -- ชิดขวา
fpsLabel.Parent = screenGui

-- อัปเดต FPS ทุกวินาที
local lastUpdate = tick()
local frameCount = 0

RunService.RenderStepped:Connect(function()
	frameCount += 1
	local currentTime = tick()
	if currentTime - lastUpdate >= 1 then
		local fps = math.floor(frameCount / (currentTime - lastUpdate))
		fpsLabel.Text = "FPS: " .. fps
		lastUpdate = currentTime
		frameCount = 0
	end
end)
end)

local afkConnection

page5:Toggle("Anti AFK", false, function(state)

    if state then
	create:Notifile("", "Protect kick from the server when you afk :)", 3)
        local vu = game:GetService("VirtualUser")
        afkConnection = game:GetService("Players").LocalPlayer.Idled:Connect(function()
            vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
    else
        if afkConnection then
            afkConnection:Disconnect()
            afkConnection = nil
        end
    end
end)
		
page5:Label("┇ Function Button Mobile [ BETA ] ┇")
page5:Button("Button For Mobile", function()
local player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local gui = Instance.new("ScreenGui")
gui.Name = "KeyCircleButtons"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

local keyCodes = {
	Z = Enum.KeyCode.Z,
	X = Enum.KeyCode.X,
	C = Enum.KeyCode.C,
	V = Enum.KeyCode.V,
	R = Enum.KeyCode.R,
	SPACE = Enum.KeyCode.Space,
}

local buttonSize = UDim2.new(0, 50, 0, 50)
local spacing = 15
local startYRight = 100
local activeButtons = {}

-- 🔘 Z/X/C/V — แตะค้าง แล้ว "ปล่อย" ค่อยยิง
local pressFlags = {}
for i, key in ipairs({"Z", "X", "C", "V"}) do
	local button = Instance.new("TextButton")
	button.Name = key .. "Button"
	button.Text = key
	button.Size = buttonSize
	button.Position = UDim2.new(1, -60, 0, startYRight + (i - 1) * (50 + spacing))
	button.AnchorPoint = Vector2.new(0, 0)
	button.BackgroundColor3 = Color3.new(0, 0, 0)
	button.BackgroundTransparency = 0.4
	button.BorderSizePixel = 0
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Font = Enum.Font.GothamBold
	button.TextScaled = true
	button.AutoButtonColor = true
	button.Parent = gui

	Instance.new("UICorner", button).CornerRadius = UDim.new(1, 0)

	button.MouseButton1Down:Connect(function()
		pressFlags[key] = true
		button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	end)

	button.MouseButton1Up:Connect(function()
		if pressFlags[key] then
			VirtualInputManager:SendKeyEvent(true, keyCodes[key], false, game)
			task.wait(0.1)
			VirtualInputManager:SendKeyEvent(false, keyCodes[key], false, game)
			pressFlags[key] = false
		end
		button.BackgroundColor3 = Color3.new(0, 0, 0)
	end)
end

-- 🔘 ปุ่ม Space — ยิงทันที
do
	local key = "SPACE"
	local button = Instance.new("TextButton")
	button.Name = "SpaceButton"
	button.Text = "⎵"
	button.Size = buttonSize
	button.Position = UDim2.new(1, -110, 1, -130)
	button.AnchorPoint = Vector2.new(0, 0)
	button.BackgroundColor3 = Color3.new(0, 0, 0)
	button.BackgroundTransparency = 0.4
	button.BorderSizePixel = 0
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Font = Enum.Font.GothamBlack
	button.TextScaled = true
	button.AutoButtonColor = true
	button.Parent = gui

	Instance.new("UICorner", button).CornerRadius = UDim.new(1, 0)

	button.MouseButton1Click:Connect(function()
		VirtualInputManager:SendKeyEvent(true, keyCodes[key], false, game)
		task.wait(0.1)
		VirtualInputManager:SendKeyEvent(false, keyCodes[key], false, game)
	end)
end

-- 🔘 ปุ่ม R — โหมดรอแตะจอยิง
do
	local key = "R"
	local button = Instance.new("TextButton")
	button.Name = key .. "Button"
	button.Text = key
	button.Size = buttonSize
	button.Position = UDim2.new(0, 10, 1, -60)
	button.AnchorPoint = Vector2.new(0, 0)
	button.BackgroundColor3 = Color3.new(0, 0, 0)
	button.BackgroundTransparency = 0.4
	button.BorderSizePixel = 0
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Font = Enum.Font.GothamBold
	button.TextScaled = true
	button.AutoButtonColor = true
	button.Parent = gui

	Instance.new("UICorner", button).CornerRadius = UDim.new(1, 0)

	activeButtons[key] = false

	button.MouseButton1Click:Connect(function()
		activeButtons[key] = not activeButtons[key]
		button.BackgroundColor3 = activeButtons[key] and Color3.fromRGB(0, 255, 0) or Color3.new(0, 0, 0)
	end)
end

-- 🔘 แตะหน้าจอเพื่อยิง R ถ้าโหมดเปิด
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		if activeButtons["R"] then
			local keyCode = keyCodes["R"]
			VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
			task.wait(0.1)
			VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
			activeButtons["R"] = false
			local btn = gui:FindFirstChild("RButton")
			if btn then
				btn.BackgroundColor3 = Color3.new(0, 0, 0)
			end
		end
	end
end)
			end)
		
  end)
