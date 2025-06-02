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
			title.Text = "Bank Hub Loading" .. dots[dotIndex]
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

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UpdatePopupCenter"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame (กลางจอจริง ๆ แนวตั้ง+แนวนอน)
local mainFrame = Instance.new("Frame")
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Size = UDim2.new(0, 500, 0, 50)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BackgroundTransparency = 0.3
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui

-- ปุ่มลูกศรซ้าย
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 40, 0, 50)
toggleButton.Position = UDim2.new(0, 0, 0, 0)
toggleButton.BackgroundTransparency = 1
toggleButton.Text = "▼"
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 22
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Parent = mainFrame

-- ปุ่มปิดขวา
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 0, 50)
closeButton.AnchorPoint = Vector2.new(1, 0)
closeButton.Position = UDim2.new(1, 0, 0, 0)
closeButton.BackgroundTransparency = 1
closeButton.Text = "✖"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 22
closeButton.TextColor3 = Color3.fromRGB(255, 100, 100)
closeButton.Parent = mainFrame

-- หัวข้อ NEW UPDATE (กลางบน)
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -100, 0, 50)
titleLabel.Position = UDim2.new(0, 50, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "NEW UPDATE"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.Font = Enum.Font.GothamBlack
titleLabel.TextSize = 22
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.TextYAlignment = Enum.TextYAlignment.Center
titleLabel.Parent = mainFrame

-- เนื้อหา
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, 0, 0, 160)
contentFrame.Position = UDim2.new(0, 0, 0, 50)
contentFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
contentFrame.BackgroundTransparency = 0.4
contentFrame.BorderSizePixel = 0
contentFrame.Parent = mainFrame

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -30, 1, -30)
label.Position = UDim2.new(0, 15, 0, 15)
label.BackgroundTransparency = 1
label.Text = "- แก้สคริปทั้งหมดให้เข้ากับแมพ \n- แก้ Function Storage ใช้งานได้ \n- เพิ่ม Auto Get Haki\n- ปรับ Auto Fishing ให้ใช้งานดีขึ้น ปิ้งและขายปลาขณะตกปลา\n- แก้ Bring Player และ Lock Aim Player ใช้ได้งานได้แล้ว"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextWrapped = true
label.Font = Enum.Font.Gotham
label.TextSize = 16
label.TextXAlignment = Enum.TextXAlignment.Left
label.TextYAlignment = Enum.TextYAlignment.Top
label.Parent = contentFrame

-- Animation
local expandedSize = UDim2.new(0, 500, 0, 210)
local collapsedSize = UDim2.new(0, 500, 0, 50)
local isOpen = false

-- ปุ่มลูกศร: เปิด/ปิดกล่อง
toggleButton.MouseButton1Click:Connect(function()
	isOpen = not isOpen
	local newSize = isOpen and expandedSize or collapsedSize
	toggleButton.Text = isOpen and "▲" or "▼"

	TweenService:Create(mainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = newSize
	}):Play()
end)

-- ปุ่มปิดทั้งหมด
closeButton.MouseButton1Click:Connect(function()
	mainFrame.Visible = false
end)
		
local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Ui_Lib/Libinw.lua"))()
local Window = create:Win("Bank Hub : For Map One Piece: Legendary")

create:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to OPL:Anarchy", 5)

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBox1"] = {"Common Box"};
Cache.DevConfig["ListOfBox2"] = {"Uncommon Box"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"};
Cache.DevConfig["ListOfDropCompass"] = {"Compass"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};

local rareFruits = {
    "Vampire Fruit", "Quake Fruit", "Phoenix Fruit", "Dark Fruit",
    "Ope Fruit", "Venom Fruit", "Candy Fruit", "Hollow Fruit",
    "Chilly Fruit", "Gas Fruit", "Flare Fruit", "Light Fruit",
    "Smoke Fruit", "Sand Fruit", "Rumble Fruit", "Magma Fruit",
    "Snow Fruit", "Gravity Fruit", "Plasma Fruit"
		}

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local SafeZoneLightFarm = Instance.new("Part",game.Workspace)
    SafeZoneLightFarm.Name = "SafeZoneLightPart2"
    SafeZoneLightFarm.Size = Vector3.new(30,2,30)
    SafeZoneLightFarm.Position = Vector3.new(3750, 3623, -615)
    SafeZoneLightFarm.Anchored = true

local b1 = Instance.new("Part",game.Workspace)
        b1.Name = "SafeZoneLightPart1"
        b1.Position = Vector3.new(-169, 630, -54)
        b1.Size = Vector3.new(5, 0.1, 5)
        b1.Anchored = true

local SafeZoneUnderSea = Instance.new("Part",game.Workspace)
    SafeZoneUnderSea.Name = "SafeZoneUnderSeaPart"
    SafeZoneUnderSea.Size = Vector3.new(200,3,200)
    SafeZoneUnderSea.Position = Vector3.new((math.random(-5000, 5000)), -491, (math.random(-5000, 5000)))
    SafeZoneUnderSea.Anchored = true

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

spawn(function() -- autofarm velocity
    while wait(0) do
        pcall(function()
            if AutoFish or AutoPack or _G.behindfarm or _G.rumblefarm then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            elseif  AutoFish == false or AutoPack == false or _G.behindfarm == false or _G.rumblefarm == false then
                --if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                --end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.behindfarm or _G.lightfarm or quakefarm then
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end

            end
        end)
    end
end)

function CheckHobbied()
    if not (_G.BringAllPlayer and _G.skillx and _G.autohobbied) then return end

    local me = game.Players.LocalPlayer
    local powers = workspace:FindFirstChild(me.Name) and workspace[me.Name]:FindFirstChild("Powers")
    local hobbied = powers and powers:FindFirstChild("Hobbied")

    if not hobbied then return end

    local allIn = true
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= me and not hobbied:FindFirstChild(player.Name) then
            allIn = false
            break
        end
    end

    if allIn then
        _G.BringAllPlayer = false
        _G.skillx = false
    end
		end
-- ฟังก์ชัน: หาผู้เล่นทุกคนที่อยู่ใน Workspace
local function getAllPlayerModelsInWorkspace()
	local players = {}
	for _, v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Model") and game.Players:FindFirstChild(v.Name) then
			table.insert(players, v)
		end
	end
	return players
		end

-- ดึงชื่อผู้เล่นทุกคน (ยกเว้นตัวเอง)
local function getPlayerNames()
	local names = {}
	for _, player in ipairs(Players:GetPlayers()) do
			table.insert(names, player.Name)
	end
	return names
end

--hook
local mta = getrawmetatable(game)
local namecall = mta.__namecall
local setreadonly = setreadonly or make_writable


setreadonly(mta, false)

mta.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local arguments = args
    local a = {}
    for i = 1, #arguments - 1 do
        a[i] = arguments[i]
    end
    local method = getnamecallmethod() 

    if method == 'FireServer' or method == "InvokeServer" then
        if self.Name == 'Drown' and _G.nodmgwater then
            if args[1] then
                return nil
            end
        end
    end
    
    return namecall(self, ...)    
end)

local attackremote = {}    

local a
a=hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
            attackremote[self.Name] = args[1]
            return a(self,unpack(args))
        elseif self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            attackremote[self.Name] = ""
        end
    end
      return a(self,...)
end)

aaxc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and _G.skillmax then
            args[6] = 100
            return aaxc(self, unpack(args))
        end
    end
    return aaxc(self, ...)
end)

local remotes = {}
    local azc
    azc=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RemoteEvent" and args[3] == "StopCharging" then
                remotes[self.Name] = args[1]
                return azc(self,unpack(args))
            end
        end
          return azc(self,...)
    end)
    
    function serializeTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0
 
    local tmp = string.rep("", depth)
 
    if name then tmp = tmp end
 
    if type(val) == "table" then
        tmp = tmp .. (not skipnewlines and "" or "")
 
        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. (not skipnewlines and "" or "")
        end
 
        tmp = tmp .. string.rep("", depth) 
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    elseif type(val) == "function" then
        tmp = tmp  .. "func: " .. debug.getinfo(val).name
    else
        tmp = tmp .. tostring(val)
    end
 
    return tmp
end

local Wapon = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.autodash then
	for i,v in pairs(game:GetService("Workspace")[selectedPlayer]:GetChildren()) do
if string.find(v.Name, "ShaveServer") then
v:Destroy()
end
	end
            end
        end)
    end
end)

-- สร้างแท็บชื่อ Autos
local Tab1 = Window:Taps("Autos")
local page1 = Tab1:newpage()

page1:Label("┇ Function Autos ┇")
page1:Toggle("Auto Claim Mission", false, function(dmmsv)
        AutoMission = dmmsv
end)

spawn(function()
    while wait() do 
        if AutoMission then 
            pcall(function() 
                workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
            end) 
        end 
    end 
end)

page1:Toggle("Auto Bring Devil Fruit", false, function(bdf)
BringDF = bdf
end)

spawn(function()
    while wait() do
        if BringDF then
            pcall(function()
                for i,v in pairs(game.Workspace.Trees.Tree.Model:GetChildren()) do 
                    if v.ClassName == "Tool" then 
                        fireclickdetector(v.Main.ClickDetector)
                    end
                end
            end)
        end
    end
 end)

page1:Toggle("Auto Package", false, function(apke)
    AutoPack = apke
end)
spawn(function()
    while wait() do
        pcall(function()
         if AutoPack then
            wait(0.6)
                game.workspace:WaitForChild("Merchants"):WaitForChild("QuestFishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
            wait(0.001)
             local playernameuser = game.Players.LocalPlayer.Name
            if  game.Players.LocalPlayer.Backpack:FindFirstChild("Package") or game.Players.LocalPlayer.Character:FindFirstChild("Package") or game.workspace.playernameuser:FindFirstChild("Package") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.AffinityMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat1Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat2Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat3Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat4Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.DrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.BetterDrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.ExpertiseMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SniperMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1549, 264, 2136)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SwordMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.KrizmaMerch.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FishMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FlailMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.EmoteMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2610, 254, 1114)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 218, 567)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
            end
        end
        end)
    end
end)

page1:Toggle("Auto Fishing & Cooking", false, function(fsh)
    AutoFish = fsh
end)

spawn(function() 
    while wait(0) do
        pcall(function()
            if AutoFish then
                wait(0.5)
                local CharacterName = game.Players.LocalPlayer.Character
                local position = CharacterName.HumanoidRootPart.CFrame * CFrame.new(0, 0, -15)
                local char = CharacterName.HumanoidRootPart
                char.CFrame = CFrame.new(-20000, 218, 20000)
        
                local b1 = Instance.new("Part")
                b1.Shape = "Block"
                b1.Material = "Neon"
                b1.BrickColor = BrickColor.new("Hot Pink")
                b1.Anchored = true
                b1.Parent = game.Workspace
                b1.CFrame = CFrame.new(-20000, 213, 20000)
                b1.Size = Vector3.new(5, 0.1, 5)
                wait(0.5)
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if string.find(v.Name, "Rod") then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                            end
                        end
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for _, x in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if string.find(x.Name, "Rod") then
                                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                    if v:FindFirstChild("Bobber") then
                                        if v.Bobber.Effect.Enabled == true then
                                            wait(0.6)
                                            local args = {
                                                [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        end
                                    elseif v.Name == "Cast" and not v:FindFirstChild("Bobber") then
                                        wait(0.6)
                                        local args = {
                                            [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                        }
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
                                    end
                                end
                            end
                        end
                    end
                end       
            end
        end)
    end
end)

page1:Toggle("Auto Claim Challanges", false, function(chllge)
_G.autoclaim = chllge
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Daily1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily4"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Weekly1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Weekly2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Weekly3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Monthly1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Monthly2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Challenge1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge4"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge5"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge6"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge7"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge8"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge9"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge10"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge11"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge12"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge13"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge14"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

page1:Toggle("Auto Claim Gift (Beri)", false, function(bri)
_G.berigift = bri
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.berigift then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardHourly
    Event:FireServer(A_1)
            end
        end)
    end
end)

page1:Toggle("Auto Claim Gift (Gems)", false, function(gxm)
_G.gemsgift = gxm
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.gemsgift then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardDaily
    Event:FireServer(A_1)
            end
        end)
    end
end)

page1:Label("┇ Function Haki ┇")
page1:Toggle("Auto Farm Haki (Very Ping)", false, function(hki)
    AutoHaki = hki
end)

game:GetService('RunService').RenderStepped:connect(function()
    if AutoHaki then
        for i = 1, 5 do
            local args = {
                [1] = "On",
                [2] = 1
            }
            task.wait(0.1)
            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
        end
    end
end)

page1:Toggle("Auto Get Haki", false, function(gthi)
    getgenv().haki = gthi
while getgenv().haki do
            wait()
            pcall(function()
                workspace:WaitForChild("Merchants")
                    :WaitForChild("QuestHakiMerchant")
                    :WaitForChild("Clickable")
                    :WaitForChild("Retum")
                    :FireServer()
                wait(2)
            end)
	end
end)


page1:Section("↑ Warning: You Maybe Kicked Out Of The Map ↑")

local Tab2 = Window:Taps("Farming")
local page2 = Tab2:newpage()

page2:Label("┇ Function Enemies ┇")
page2:Toggle("Auto Death Mob", false, function(dthh)
    _G.autodie = dthh
end)

spawn(function()
    while wait(2) do
        if _G.autodie then 
	pcall(function()
            for _,v in pairs(workspace.Enemies:GetDescendants()) do
                if v:IsA("Model") and 
		v:FindFirstChild("Humanoid") then
                    v.Humanoid.Health = 0
                end
            end
        end) 
    end
    end
end)

page2:Toggle("Auto Death Kaizu' Boss (50/50%)", false, function(zki)
    _G.autokaizu = zki
end)

spawn(function()
    while wait() do
        if _G.autokaizu then 
	pcall(function()
            for _,v in pairs(workspace.IslandKai:GetDescendants()) do
                if v:IsA("Model") and 
		v:FindFirstChild("Humanoid") then
                    v.Humanoid.Health = 0
                end
            end
        end) 
    end
    end
end)

page2:Label("┇ Function Farming ┇")
page2:Dropdown("Select Weapon:", Wapon, function(wapn)
    Wapon = wapn
end)

page2:Toggle("Auto Farm", false, function(befrm)
    _G.behindFarm = befrm
end)

local MobList = { "Boar", "Crab", "Angry", "Thief", "Gunslinger", "Freddy" }

local function IsMobAllowed(mobName)
    for _, allowedMob in ipairs(MobList) do
        if string.find(mobName, allowedMob) then
            return true
        end
    end
    return false
end

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.behindFarm then
                for _, mob in pairs(game.Workspace.Enemies:GetChildren()) do
                    if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") 
                       and mob.Humanoid.Health > 0 and IsMobAllowed(mob.Name) then
                        while mob.Humanoid.Health > 0 and _G.behindFarm do
                            local mobRoot = mob.HumanoidRootPart
                            local playerRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
                            playerRoot.CFrame = mobRoot.CFrame * CFrame.new(0, 0, 4)
                            local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            if tool then
                                tool:Activate()
                            else
                                game.Players.LocalPlayer.Character.Humanoid:MoveTo(mobRoot.Position)
                            end
                            task.wait(0.1)
                        end
                        break
                    end
                end
            end
        end)
    end
end)

page2:Toggle("Auto Click", false, function(state)
    _G.autoclick = state
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

page2:Toggle("Auto Equip", false, function(state)
    _G.autoequip = state
end)

spawn(function() -- auto equip
    while wait(0) do
        pcall(function()
            if _G.autoequip then
                repeat
                    wait(0.05)
                    game:GetService 'Players'.LocalPlayer.Backpack[Wapon].Parent = game:GetService 'Players'.LocalPlayer.Character
                until game.Players.LocalPlayer.Character.Humanoid.Health == 0 or _G.autoequip == false
                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    game:GetService 'Players'.LocalPlayer.Character:FindFirstChildOfClass 'Humanoid':UnequipTools()
                end
            end
        end)
    end
end)

page2:Label("┇ Function Farm with Cannon Ball ┇")
page2:Toggle("Auto Farm Cannon Ball ( Slow)", false, function(bll)
    _G.autocannonslow = bll
end)

page2:Toggle("Auto Farm Cannon Ball ( Fast )", false, function(bll)
    _G.autocannon = bll
end)

spawn(function() -- autofarm teleport cannon
    while wait(0) do
        pcall(function()
            if _G.autocannonplr then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.Transparency = 0.9
                    	v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,5,-15)
                        if v.Character.Humanoid.Health == 0 then
                            v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                            v.Character.HumanoidRootPart.Transparency = 1
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon or _G.autocannonplr then
                local toolname = "Cannon Ball"
                local Plr = game:GetService("Players").LocalPlayer
                wait(0.75)
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    local tool = Plr.Backpack:FindFirstChild(toolname)
                    Plr.Character.Humanoid:EquipTool(tool)
                    wait(0.75)
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                end
            end
        end)
    end
end)


spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonslow then
                local toolname = "Cannon Ball"
                local Plr = game:GetService("Players").LocalPlayer
                wait(0.5)
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    local tool = Plr.Backpack:FindFirstChild(toolname)
                    Plr.Character.Humanoid:EquipTool(tool)
                end
            end
        end)
    end
end)


spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon or _G.autocannonplr or _G.autocannonslow then
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                if game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall") then
                    game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall").CanCollide = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon or _G.autocannonplr or _G.autocannonslow then
                repeat task.wait(0)
                    for i, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                        if v.Name == "CannonBall" then
                            v.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 2, -15)
                            v.CanCollide = false
                            if not v:FindFirstChild("BodyClip") then
                                local Noclip = Instance.new("BodyVelocity")
                                Noclip.Name = "BodyClip"
                                Noclip.Parent = v
                                Noclip.MaxForce = Vector3.new(100000,100000,100000)
                                Noclip.Velocity = Vector3.new(0,20,0)
                            end
                        end
                    end
                until _G.autocannon == false or _G.autocannonplr == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon and game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") 
            or _G.autocannonplr and game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                task.wait(1)
                for i=1,2 do
                    game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                end
            end
        end)
    end
end)


spawn(function()
    while task.wait(15) do
        pcall(function()
            if _G.autocannon or _G.autocannonplr then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name == "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon  or _G.autocannonplr or _G.autocannonslow then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ~= "Cannon" and v.Name ~= "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autocannon or  _G.autocannonplr  or _G.autocannonslow then
                fireclickdetector(workspace.Island11.CentralBuilding.Doors.Button.Button.ClickDetector)
                task.wait(0)
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end

            end
        end)
    end
end)
spawn(function() -- autofarm cannon
    while wait(0) do
        pcall(function()
            if _G.autocannon or _G.autocannonslow then
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, " Boar")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Crab")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Angry ") 
                    or string.find(v.Name, "Bandit") 
                    or string.find(v.Name, "Thief")
                    or string.find(v.Name, "Crab") 
                    or string.find(v.Name, "Gunner") 
                    or string.find(v.Name, "Bruno") 
                    or string.find(v.Name, "Freddy")  
                    or string.find(v.Name, "Buster") 
                    or string.find(v.Name, "Thug") 
                    or string.find(v.Name, "Gunslinger")
                    or string.find(v.Name, "Cave") 
                    or string.find(v.Name, "Vokun") 
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

page2:Label("┇ Other Farming With Skill DF ┇")
page2:Toggle("Auto Farm Quake (Very Lag)", false, function(qke)
    _G.quakefarm = qke
end)

spawn(function() -- Quake farm npcs
    while wait(0) do
        pcall(function()
            if _G.quakefarm then
                script = game:GetService("Players").LocalPlayer.Character.Powers.Quake;
                VTQ = script.RemoteEvent.RemoteFunction:InvokeServer();
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();

                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                        if v.Humanoid.Health > 0 and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10000000000000000000000 then
                            if v.Name ~= "SetInstances" then
                                -- v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                if v.Humanoid.Health == 0 then
                                    v:Destroy()
                                end

                                wait(0.05)

            local args = {
                [1] = VTQ,
                [2] = "QuakePower4",
                [3] = "StopCharging",
                [4] = Mouse.Target,
                [5] = v.Head.CFrame * CFrame.new(0, 0, 0),
                [6] = 100,
                [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

                            end
                        end
                    end
                end
            end
        end)
    end
end)

page2:Toggle("Auto Farm Light", false, function(lth)
    _G.lightfarm = lth
end)

spawn(function() -- Light farm npcs
    while wait(0) do
        pcall(function()
            if _G.lightfarm then
                script = game:GetService("Players").LocalPlayer.Character.Powers.Light;
                VTC = script.RemoteEvent.RemoteFunction:InvokeServer();
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();

                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                        if v.Humanoid.Health > 0 and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10000000000000000000000 then
                            if v.Name ~= "SetInstances" then
                                -- v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                if v.Humanoid.Health == 0 then
                                    v:Destroy()
                                end

                                wait(0.05)

                                local args = {
                                    [1] = VTC,
                                    [2] = "LightPower2",
                                    [3] = "StopCharging",
                                    [4] = v.Head.CFrame * CFrame.new(0, 0, 0),
                                    [5] = Mouse.Target,
                                    [6] = 100
                                }

                                game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

                            end
                        end
                    end
                end
            end
        end)
    end
end)

page2:Toggle("Auto Farm Rumble (Slow)", false, function(rlb)
    _G.rumblefarm = rlb
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

spawn(function()
    while task.wait() do
        if _G.rumblefarm then
            pcall(function()
                local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                local hrp = character:WaitForChild("HumanoidRootPart")

                local positions = {
                    Vector3.new(-1277, 400, -1696),
                    Vector3.new(-76, 215, -892),
                    Vector3.new(1237, 340, -244),
                    Vector3.new(1237, 340, -244),
                    Vector3.new(-1668, 317, -300),
                    Vector3.new(-1109, 341, 1645),
                    Vector3.new(1079, 445, -3334),
                    Vector3.new(4646, 316, 5191),
                    Vector3.new(2222, 300, -631)
                }

                for _, pos in ipairs(positions) do
                    hrp.CFrame = CFrame.new(pos)
                    task.wait(10)
                end
            end)
        end
    end
end)


spawn(function()
    while task.wait() do
        pcall(function()
            if _G.rumblefarm then
                local player = game.Players.LocalPlayer
                local char = player.Character
                local rumble = char:FindFirstChild("Powers") and char.Powers:FindFirstChild("Rumble")
                if not rumble then return end

                -- ลิสต์คำที่ต้องการกรอง
                local targetKeywords = { "Angry", "Boar", "Crab", "Bandit", "Cave", "Gunslingers", "Thug" ,"Thief", "Freddy" }

                for _, v in pairs(workspace.Enemies:GetChildren()) do  
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name ~= "SetInstances" then  
                        -- ตรวจสอบว่าชื่อตรงกับคีย์เวิร์ดใดในลิสต์ไหม
                        local match = false
                        for _, keyword in ipairs(targetKeywords) do
                            if string.find(v.Name, keyword) then
                                match = true
                                break
                            end
                        end

                        if match then
                            local dist = (char.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude  
                            if dist < 1000 then  
                                -- รีเฟรช VTQ  
                                local VTQ = rumble.RemoteEvent.RemoteFunction:InvokeServer()  

                                v.HumanoidRootPart.CanCollide = false  
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  

                                -- ชาร์จพลัง  
                                rumble.RemoteEvent:FireServer(VTQ, "RumblePower2", "StartCharging")

                                task.wait(0.45)

                                -- ปล่อยพลัง  
                                local args = {
                                    [1] = VTQ,
                                    [2] = "RumblePower2",
                                    [3] = "StopCharging",
                                    [4] = v.HumanoidRootPart.Position,
                                    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Base"):WaitForChild("Rocks"):WaitForChild("Rock"),
                                    [6] = 200,
                                    [7] = char.HumanoidRootPart.Position
                                }

                                rumble.RemoteEvent:FireServer(unpack(args))
                                task.wait(0.25)
				rumble.RemoteEvent:FireServer(VTQ, "RumblePower2", "StartCharging")

                                task.wait(0.45)

                                -- ปล่อยพลัง  
                                local args = {
                                    [1] = VTQ,
                                    [2] = "RumblePower2",
                                    [3] = "StopCharging",
                                    [4] = v.HumanoidRootPart.Position,
                                    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Base"):WaitForChild("Rocks"):WaitForChild("Rock"),
                                    [6] = 200,
                                    [7] = char.HumanoidRootPart.Position
                                }

                                rumble.RemoteEvent:FireServer(unpack(args))
                                task.wait(0.25)
                            end
                        end
                    end  
                end  
            end  
        end)
    end
end)

local Tab3 = Window:Taps("Skill")
local page3 = Tab3:newpage()

page3:Label("┇ Spam Skill For Premiums ! ! ! ┇")
page3:Section("Coming Soon . . .")

page3:Toggle("Max Charge Skill (100%)", false, function(smx)
	_G.skillmax = smx
end)

page3:Label("┇ Auto Press Skill DF ┇")

page3:Toggle("Auto Skill Z", false, function(zz)
	_G.skillz = zz
end)

spawn(function()
    while wait() do
        if _G.skillz then
            pcall(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Z, false, game)
task.wait(0.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Z, false, game)
            end)
        end
    end
end)

page3:Toggle("Auto Skill X", false, function(xx)
	_G.skillx = xx
end)

spawn(function()
    while wait() do
        if _G.skillx then
            pcall(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.X, false, game)
task.wait(0.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.X, false, game)
            end)
        end
    end
end)

page3:Toggle("Auto Skill C", false, function(cc)
	_G.skillc = cc
end)

spawn(function()
    while wait() do
        if _G.skillc then
            pcall(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.C, false, game)
task.wait(0.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.C, false, game)
            end)
        end
    end
end)

page3:Toggle("Auto Skill V", false, function(vv)
	_G.skillv = vv
end)

spawn(function()
    while wait() do
        if _G.skillv then
            pcall(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.V, false, game)
task.wait(0.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.V, false, game)
            end)
        end
    end
end)

page3:Toggle("Auto Skill B", false, function(bb)
	_G.skillb = bb
end)

spawn(function()
    while wait() do
        if _G.skillb then
            pcall(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.B, false, game)
task.wait(0.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.B, false, game)
            end)
        end
    end
end)

page3:Toggle("Auto Skill N", false, function(nn)
	_G.skilln = nn
end)

spawn(function()
    while wait() do
        if _G.skilln then
            pcall(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.N, false, game)
task.wait(0.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.N, false, game)
            end)
        end
    end
end)

local Tab4 = Window:Taps("Players")
local page4 = Tab4:newpage()

page4:Label("┇ Farm Fruity ┇")
page4:Toggle("Auto Farm Stats", false, function(stts)
    _G.automixer = stts
end)

spawn(function() -- auto mixer
    while wait() do
        pcall(function()
            if _G.automixer then
                wait(1)
                for i, v in pairs(game:GetService("Workspace").Island8.Kitchen:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end)


spawn(function() -- auto drink mixer
    while wait() do
        pcall(function()
            if _G.automixer then
                wait(1)
                local args = {
                    [1] = "Claim",
                    [2] = "Challenge13"
                }
                game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].ChallengesRemote:FireServer(unpack(args))

                wait(1)
                for a, h in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if h:IsA("Tool") and string.find(h.Name, "Juice") or string.find(h.Name, "Milk") or
                    string.find(h.Name, "Cider") or string.find(h.Name, "Lemonade") or
                    string.find(h.Name, "Smoothie") or string.find(h.Name, "Golden") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(h)
                        game:GetService 'VirtualUser':CaptureController()
                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    end
                end
            end
        end)
    end
end)

spawn(function()--autofruit
    while wait() do
        pcall(function()
            if _G.automixer then
                wait(1.5)
                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
                for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end)
spawn(function()--autofruit
    while wait() do
    pcall(function()
        if _G.automixer then
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local PopperClient = LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
            
            for i, v in next, getgc() do
                if getfenv(v).script == PopperClient and typeof(v) == "function" then
                    for i2, v2 in next, debug.getconstants(v) do
                        if tonumber(v2) == 0.25 then
                            debug.setconstant(v, i2, 0)
                       -- elseif tonumber(v2) == 0 then
                           -- debug.setconstant(v, i2, 0.25)
                        end
                    end
                end
            end
            --Barrels
            wait(0.8)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12, 216, -351)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 216, -378)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-114, 216, -750)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-133, 216, -710)
            wait(0.3)
    
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-204, 224, -206)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1754, 217, -327)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1706, 217, -326)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1754, 216, -217)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1550, 217, -307)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1494, 217, -306)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1493, 217, -290)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1871, 218, 823)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1858, 218, 814)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1882, 219, 838)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1989, 235, 568)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1970, 219, 576)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1989, 218, 561)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1981, 217, 553)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1517, 217, -289)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1186, 217, -285)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1173, 217, -286)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1009, 220, 3342)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2601, 254, 1111)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2618, 254, 1110)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(989, 224, -3337)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 216, 3409)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(882, 218, 3364)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1167, 219, 3228)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(987, 224, -3337)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(987, 224, -3337)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1072, 224, -3429)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1195, 224, -3372)
            wait(0.3)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1238, 224, -3231)
            wait(0.3)
            for i,v in pairs(game.Workspace:GetChildren()) do 
                if v.ClassName == "Tool" then
                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            wait(0.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
            wait(7)
            end
        end)
    end
end)
		
page4:Label("┇ Player ┇")
page4:Dropdown("Select Player:", getPlayerNames(), function(name)
    selectedPlayer = name
end)

page4:Button("Click to Tp", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(selectedPlayer).Character.HumanoidRootPart.CFrame
end)

page4:Toggle("View", false, function(state)
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

page4:Toggle("Auto Bring Player( All )", false, function(plal)
	_G.BringAllPlayer = plal
end)

spawn(function() -- bring Plr
    while wait() do
        if _G.BringAllPlayer then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-15 or getgenv().disbring)
                        if v.Character.Humanoid.Health == 0 then
                        	v.Character.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end
end)

page4:Toggle("Lock Aim Players", false, function(asmt)
	aimsilent = asmt
end)

spawn(function()--aim silent 
    pcall(function()
        while true do wait()
            pcall(function()
                local plr1 = game.Players.LocalPlayer.Character
                local plr2 = game.Players:FindFirstChild(PlayerName1)
                if aimsilent then
                    cacacac = plr2.Character.HumanoidRootPart.CFrame
                end
            end)
        end
    end)
end)

local index = mta.__index
cf = CFrame.new(1, 2, 3)
setreadonly(mta, false)
mta.__index = newcclosure(function(a, b, c)
    if tostring(b):lower() == 'hit' and aimsilent then
        return cacacac
    end
    return index(a, b, c)
end)

page4:Label("┇ Shop ┇")
page4:Dropdown("Select Drink:", Cache.DevConfig["ListOfDrink"], function(knrd)
    selectedDrinks = knrd
end)

page4:Toggle("Auto Buy Drinks", false, function(bdy)
	_G.buydrink = bdy
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.buydrink then
local args = {
    [1] = selectedDrinks
}

workspace:WaitForChild("Merchants"):WaitForChild("BetterDrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

            end
        end)
    end
end)

page4:Toggle("Auto Drop Drink", false, function(dops)
	DropDrinks = dops
end)

spawn(function()
    while wait() do
        pcall(function()
            if not DropDrinks then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end)

page4:Toggle("Auto Drinks All", false, function(drks)
	AutoDrinks = drks
end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoDrinks then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

page4:Label("┇ Hobbied Player ┇")
page4:Toggle("Auto Hobby (All)", false, function(ahbb)
	_G.autohobbied = ahbb
end)
page4:Section("↑ ใช้งานไม่ได้ ↑")

page4:Label("┇ Function Kill Players ┇")
page4:Toggle("Auto Kill Cannon Ball", false, function(bplr)
    _G.autocannonplr = bplr
end)
		
plr = game.Players.LocalPlayer

local Tab5 = Window:Taps("Island")
local page5 = Tab5:newpage()

page5:Label("┇ Islands ┇")
page5:Dropdown("Select Islands", {"Grassy", "Kaizu Island", "Snowy Mountains", "Pursuer Island", "Bar", "Cliffs", "Windmill", "Cave", "Krizma", "Pirate", "Green", "Trees", "Pyramid", "Package", "Snowy", "Mountain", "Marine Ford", "Sand Castle", "Forest", "Evil", "Crescent", "Islands", "Town", "Rocky", "Plam", "Sand", "Sand 2", "Small", "Tiny", "Super Tiny", "Grass", "Atlar"}, function(t)
    getgenv().tpisland = t
end)

page5:Button("Click to Tp" , function()
    if getgenv().tpisland == "Grassy" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(737, 241, 1209)
      elseif getgenv().tpisland == "Kaizu Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
      elseif getgenv().tpisland == "Snowy Mountains"  then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(6501, 408, -1261)
      elseif getgenv().tpisland == "Pursuer Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(4847, 570, -7143)
      elseif getgenv().tpisland == "Bar" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 260, 2188)
      elseif getgenv().tpisland == "Cliffs" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(4598, 217, 4964)
      elseif getgenv().tpisland == "Windmill" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 224, -91)
      elseif getgenv().tpisland == "Cave" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 217, -831)
      elseif getgenv().tpisland == "Krizma" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1109, 341, 1645)
      elseif getgenv().tpisland == "Pirate" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1283, 218, -1348)
      elseif getgenv().tpisland == "Green" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2727, 253, 1041)
      elseif getgenv().tpisland == "Trees" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1068, 217, 3351)
      elseif getgenv().tpisland == "Pyramid" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(118, 216, 4773)
      elseif getgenv().tpisland == "Package" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1668, 217, -300)
      elseif getgenv().tpisland == "Snowy" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1896, 222, 3385)
      elseif getgenv().tpisland == "Mountain" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(2052, 488, -701)
      elseif getgenv().tpisland == "Marine Ford" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3164, 296, -3780)
      elseif getgenv().tpisland == "Sand Castle" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1020, 224, -3277)
      elseif getgenv().tpisland == "Forest" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5781, 216, 114)
      elseif getgenv().tpisland == "Evil" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5169, 523, -7803)
      elseif getgenv().tpisland == "Crescent" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(3193, 357, 1670)
      elseif getgenv().tpisland == "Islands" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4319, 245, 5252)
      elseif getgenv().tpisland == "Town" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1818, 218, 755)
      elseif getgenv().tpisland == "Rocky" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 229, 2149)
      elseif getgenv().tpisland == "Palm" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(766, 216, -1374)
      elseif getgenv().tpisland == "Sand" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2747, 216, -942)
      elseif getgenv().tpisland == "Sand 2" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(162, 216, -2265)
      elseif getgenv().tpisland == "Small" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1237, 240, -244)
      elseif getgenv().tpisland == "Tiny" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1235, 223, 623)
      elseif getgenv().tpisland == "Super Tiny" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4007, 216, -2190)
      elseif getgenv().tpisland == "Grass" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(2096, 217, -1884)
      elseif getgenv().tpisland == "Atlar" then
        plr.Character.HumanoidRootPart.CFrame = game.workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 5, 0)
                end
end)

page5:Label("┇ SAFE ZONE ┇")
page5:Dropdown("Select SafeZone", {"Safe Zone (Sky)", "Safe Zone (UnderSea)", "Safe Zone Light Affinities 1.0", "Safe Zone Light Affinities 2.0"}, function(s)
    getgenv().tpsafezone = s
end)

page5:Button("Click to Tp" , function()
        if getgenv().tpsafezone == "Safe Zone (UnderSea)" then
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
        wait(0.15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneUnderSeaPart"].CFrame * CFrame.new(0, 5, 0)
    elseif getgenv().tpsafezone == "Safe Zone (Sky)" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
    elseif getgenv().tpsafezone == "Safe Zone Light Affinities 1.0" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart1"].CFrame * CFrame.new(0, 5, 0)
	elseif getgenv().tpsafezone == "Safe Zone Light Affinities 2.0" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart2"].CFrame * CFrame.new(0, 5, 0)
        end
    end)

page5:Label("┇ NPCs ┇")
page5:Dropdown("Select NPCs", {"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Heavy Weapon", "Sword", "Sniper", "Emote", "Affinity","Fish", "Expertise", "Friend"}, function(n)
    getgenv().tpmerchant = n
end)

page5:Button("Click to Tp" , function()
        if getgenv().tpmerchant == "Rayleigh" then
            local emoi = game:GetService("Workspace").Merchants.QuestHakiMerchant.Clickable.Available.Value
            if emoi == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.QuestHakiMerchant.HumanoidRootPart.CFrame
            else
                create:Notifile("OP:L", "Rayleigh did not spawn.!", 5)
            end
        elseif getgenv().tpmerchant == "Better Drink" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1493, 260, 2171)
        elseif getgenv().tpmerchant == "Drink" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1282, 218, -1368)
        elseif getgenv().tpmerchant == "Flail" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1110, 217, 3369)
        elseif getgenv().tpmerchant == "QuestFish" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1702, 216, -325)
        elseif getgenv().tpmerchant == "Krizma" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1072, 361, 1669)
	elseif getgenv().tpmerchant == "Heavy Weapon" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2610, 258, 1110)
        elseif getgenv().tpmerchant == "Sword" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1005, 224, -3339)
        elseif getgenv().tpmerchant == "Sniper" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1843, 222, 3416)
        elseif getgenv().tpmerchant == "Emote" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 265, 2165)
        elseif getgenv().tpmerchant == "Affinity" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(113, 278, 4952)
        elseif getgenv().tpmerchant == "Fish" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1983, 218, 566)
	elseif getgenv().tpmerchant == "Friend" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1242, 229, -3243)
        elseif getgenv().tpmerchant == "Expertise" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(903, 270, 1219)
        end
    end)

local Tab6 = Window:Taps("Anti DF")
local page6 = Tab6:newpage()

page6:Label("┇ Function Anti Devil Fruit ┇")
page6:Toggle("Anti Dark&Venom Pool", false, function(ndmg)
    _G.antivedark = ndmg
end)

spawn(function()
    while wait() do
        if _G.antivedark then
            local success, err = pcall(function()
                local ResourceHolder = game.Workspace:FindFirstChild("ResourceHolder")

                if ResourceHolder then
                    for _, player in pairs(game.Players:GetPlayers()) do
                        local resourceFolderName = "Resources_" .. tostring(player.UserId)
                        local playerResourceFolder = ResourceHolder:FindFirstChild(resourceFolderName)

                        if playerResourceFolder then
                            local magmaPool = playerResourceFolder:FindFirstChild("MagmaPool")

                            if magmaPool then
                                for _, item in pairs(magmaPool:GetDescendants()) do
                                    if item:IsA("Instance") and item.Name == "TouchInterest" then
                                        item:Destroy()
                                    end
				end
				end
                        end
		end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.antity then
            local resourceHolder = workspace:FindFirstChild("UserData")
            if resourceHolder then
                for _, player in ipairs(game.Players:GetPlayers()) do
                    local folderName = "User_" .. tostring(player.UserId)
                    local userFolder = resourceHolder:FindFirstChild(folderName)

                    if userFolder then
                        local success, err = pcall(function()
                            local specials = userFolder:FindFirstChild("Specials")
                            if specials then
                                local venom = specials:FindFirstChild("Venom")
                                if venom then
                                    local venomPool = venom:FindFirstChild("VenomPool")
                                    if venomPool then
                                        local touchInterest = venomPool:FindFirstChild("TouchInterest")
                                        if touchInterest then
                                            touchInterest:Destroy()
                                        end
                                    end
                                end
                            end
                        end)
                    end
		end
            end
        end
    end
end)

page6:Toggle("Anti Love", false, function(lve)
    _G.antilove = lve
end)

spawn(function()
	while wait() do
		if _G.antilove then
			pcall(function()
				local models = getAllPlayerModelsInWorkspace()

				for _, model in pairs(models) do
					local powers = model:FindFirstChild("Powers")
					if powers then
						local love = powers:FindFirstChild("Love")
						if love then
							local projectiles = love:FindFirstChild("Projectiles")
							if projectiles then

								-- 💘 LoveHeartTrimFill > TouchInterest
								local heartTrim = projectiles:FindFirstChild("LoveHeartTrim")
								if heartTrim then
									local fill = heartTrim:FindFirstChild("LoveHeartTrimFill")
									if fill then
										local touch = fill:FindFirstChild("TouchInterest")
										if touch then
											touch:Destroy()
											print("[ลบแล้ว] TouchInterest: LoveHeartTrimFill ของ", model.Name)
										end
									end
								end

								-- 🏹 LoveArrow > Tip > TouchInterest
								local arrow = projectiles:FindFirstChild("LoveArrow")
								if arrow then
									local tip = arrow:FindFirstChild("Tip")
									if tip then
										local touch = tip:FindFirstChild("TouchInterest")
										if touch then
											touch:Destroy()
											print("[ลบแล้ว] TouchInterest: Tip ของ", model.Name)
										end
									end
								end

							end
						end
					end
				end
			end)
		end
	end
end)
  
local Tab7 = Window:Taps("Quest Sam")
local page7 = Tab7:newpage()

page7:Label("┇ Function Quest Sam ┇")

page7:Toggle("Auto Find", false, function(comp)
    AutoComp = comp
end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoComp then return end;
            local Compass = game.Players.LocalPlayer.Backpack:FindFirstChild("Compass");
            local Compass2 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
	    local Compass3 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
            if Compass or Compass2 or Compass3 then
                local OldPostiton = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                Compass.Parent = game.Players.LocalPlayer.Character;
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Compass.Poser.Value);
                Compass:Activate();
                wait(0.2);
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(OldPostiton);
            end
        end)
    end
end)

page7:Toggle("Auto Claim Compass", false, function(clmp)
    AutoClaimComp = clmp
end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoClaimComp then return end;
            game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10");
            game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10");
        end)
    end
end)

page7:Button("Check You Compass", function()
create:Notifile("", "You Have " .. workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.CompassTokens.Value .. " Compass", 5)
end)

page7:Label("Check Rare Who Got it On Sever")
page7:Toggle("Check Rare Fruity", false, function(chre)
    _G.checkrare = chre
end)

local Players = game:GetService("Players")

spawn(function()
	while wait(3) do
		if _G.checkrare then
			pcall(function()
				local players = Players:GetPlayers()

				for i = 1, #players do
					local player = players[i]

					-- เช็คใน Backpack
					if player:FindFirstChild("Backpack") then
						local backpackItems = player.Backpack:GetChildren()
						for j = 1, #backpackItems do
							local item = backpackItems[j]
							for k = 1, #rareFruits do
								if item.Name == rareFruits[k] then
									local msg = "พบ " .. item.Name .. " ใน Backpack ของ " .. player.Name
									print(msg)
									create:Notifile("", msg, 5)
								end
							end
						end
					end

					-- เช็คใน workspace.Character
					local character = workspace:FindFirstChild(player.Name)
					if character then
						local characterItems = character:GetChildren()
						for j = 1, #characterItems do
							local item = characterItems[j]
							for k = 1, #rareFruits do
								if item.Name == rareFruits[k] then
									local msg = "พบ " .. item.Name .. " ใน Character ของ " .. player.Name
									print(msg)
									create:Notifile("", msg, 5)
								end
							end
						end
					end
				end
			end)
		end
	end
end)

page7:Toggle("Check Rare Box", false, function(chbx)
    _G.checkbox = chbx
end)

local Players = game:GetService("Players")

-- รายการกล่องที่ต้องการเช็ค
local targetBoxes = {
	"Rare Box",
	"Ultra Rare Box"
}

spawn(function()
	while wait(5) do
		if _G.checkbox then
			pcall(function()
				local players = Players:GetPlayers()

				for i = 1, #players do
					local player = players[i]

					-- เช็คใน Backpack
					if player:FindFirstChild("Backpack") then
						local backpackItems = player.Backpack:GetChildren()
						for j = 1, #backpackItems do
							local item = backpackItems[j]
							for k = 1, #targetBoxes do
								if item.Name == targetBoxes[k] then
									local msb = "พบ " .. item.Name .. " ใน Backpack ของ " .. player.Name
									print(msb)
									create:Notifile("", msb, 5)
								end
							end
						end
					end

					-- เช็คใน Character
					local character = workspace:FindFirstChild(player.Name)
					if character then
						local characterItems = character:GetChildren()
						for j = 1, #characterItems do
							local item = characterItems[j]
							for k = 1, #targetBoxes do
								if item.Name == targetBoxes[k] then
									local msb = "พบ " .. item.Name .. " ใน Character ของ " .. player.Name
									print(msg)
									create:Notifile("", msb, 5)
								end
							end
						end
					end
				end
			end)
		end
	end
end)

local Cache = {
    Player = { Inputfruitlist = {}, Inputfruitname = "" },
    Boolean = { StorageUsingGroup = {}, StorageKeepShiny = false }
}

local function CheckStorage(Number)
    local storageFrame = game.Players.LocalPlayer.PlayerGui.Storage.Frame["StoredDF" .. Number]
    return storageFrame and storageFrame.Button.Text == "Store" and storageFrame.Visible
end

local function StoreFruit(Index, Fruit)
    local storagePath = game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].StoredDFRequest
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
    Fruit.Parent = game.Players.LocalPlayer.Character
    storagePath:FireServer("StoredDF" .. Index)
end

local function HandleFruits()
    for Index, IsActive in pairs(Cache.Boolean.StorageUsingGroup) do
        if IsActive and CheckStorage(Index) then
            for _, Fruit in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if Fruit:IsA("Tool") then
                    for _, FruitName in pairs(Cache.Player.Inputfruitlist) do
                        if string.match(string.lower(Fruit.Name), string.lower(FruitName)) or 
                           (Cache.Boolean.StorageKeepShiny and Fruit:FindFirstChild("Main") and Fruit.Main:FindFirstChild("AuraAttachment")) then
                            StoreFruit(Index, Fruit)
                            break
                        end
                    end
                end
            end
        end
    end
end

page7:Label("Function Storage")
page7:Button("Add Rare Fruitlist To Storage", function()
table.insert(Cache.Player.Inputfruitlist, Cache.Player.Inputfruitname)
end)

for Index = 1, 12 do
page7:Toggle("Auto Storage No. " .. Index, false, function(value)
    Cache.Boolean.StorageUsingGroup[Index] = value
end)
		end

spawn(function()
    while wait(1) do
        pcall(HandleFruits)
    end
end)

page7:Label("┇ Function Steal Fruity ┇")
page7:Toggle("Auto Steal Rare Fruit ( สำหรับผู้เล่นกาก )", false, function(cnns)
    _G.cannonsteal = cnns
end)

page7:Toggle("Auto Quake Steal Rare Fruit ( สำหรับผู้เล่นเลือดเยอะ )", false, function(drpc)
    AutoDropComp = drpc
end)
page7:Label("↑ Use Quake to Steal Fruit ↑")

local Tab8 = Window:Taps("Misc")
local page8 = Tab8:newpage()

page8:Label("┇ Function Sever ┇")
page8:Button("Rejoin Server", function()
create:Notifile("", "Start Rejoin " .. game.Players.LocalPlayer.Name .. " Pls Wait", 3)
wait(3)
		   game.Players.LocalPlayer:Kick()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

page8:Button("Hop Server", function()
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

page8:Label("┇ Function Anti ┇")
page8:Button("Anti Lag", function()
create:Notifile("", "Pls Wait Start Anti Lag & Show FPS", 3)
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

page8:Toggle("Anti AFK", false, function(state)

    if state then
	create:Notifile("", "Protect Kick AFK " .. game.Players.LocalPlayer.Name .. " Can AFK Now :)", 3)
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

page8:Label("┇ Function Unbox ┇")

page8:Toggle("Auto Unbox Common", false, function(bxcm)
    UnboxCM = bxcm
end)

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxCM then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox1"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

page8:Toggle("Auto Unbox Uncommon", false, function(bxun)
    UnboxUn = bxun
end)

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxUn then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox2"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

page8:Toggle("Auto Unbox Rare&Ultra", false, function(bxrl)
    UnboxRUL = bxrl
end)

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxRUL then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox3"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

page8:Label("┇ Function Auto Affinities 2.0 ( Beri ) ┇")

local isRunning1 = false
local task1Thread

page8:Toggle("Auto Reroll Affinity 2.0 (Left/ซ้าย)", false, function(rol)
    isRunning1 = rol

    if isRunning1 then
        task1Thread = task.spawn(function()
            while isRunning1 do
                task.wait(8)

                local player = game.Players.LocalPlayer
                local playerId = player.UserId
                local userDataName = game.Workspace.UserData:FindFirstChild("User_" .. playerId)
                if not userDataName then continue end

                -- DFT1
                local AffMelee1 = userDataName.Data.DFT1Melee.Value
                local AffSniper1 = userDataName.Data.DFT1Sniper.Value
                local AffDefense1 = userDataName.Data.DFT1Defense.Value
                local AffSword1 = userDataName.Data.DFT1Sword.Value

                -- Stop if all are 2
                if AffSniper1 == 2 and AffSword1 == 2 and AffMelee1 == 2 and AffDefense1 == 2 then
                    isRunning1 = false
                    break
                end

                local args1 = {
                    [1] = "DFT1",
                    [2] = false, -- defense
                    [3] = false, -- melee
                    [4] = false, -- sniper
                    [5] = false, -- sword
                    [6] = "Cash"
                }

                if AffDefense1 == 2 then args1[2] = 0/0 end
                if AffMelee1 == 2 then args1[3] = 0/0 end
                if AffSniper1 == 2 then args1[4] = 0/0 end
                if AffSword1 == 2 then args1[5] = 0/0 end

                local merchant = workspace:FindFirstChild("Merchants")
                if merchant then
                    local affinityMerchant = merchant:FindFirstChild("AffinityMerchant")
                    if affinityMerchant then
                        local clickable = affinityMerchant:FindFirstChild("Clickable")
                        if clickable then
                            local retum = clickable:FindFirstChild("Retum")
                            if retum then
                                retum:FireServer(unpack(args1))
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local isRunning2 = false
local task2Thread

page8:Toggle("Auto Reroll Affinity 2.0 (Right/ขวา)", false, function(roll)
    isRunning2 = roll

    if isRunning2 then
        task2Thread = task.spawn(function()
            while isRunning2 do
                task.wait(8)

                local player = game.Players.LocalPlayer
                local playerId = player.UserId
                local userDataName = game.Workspace.UserData:FindFirstChild("User_" .. playerId)
                if not userDataName then continue end

                -- DFT2
                local AffMelee2 = userDataName.Data.DFT2Melee.Value
                local AffSniper2 = userDataName.Data.DFT2Sniper.Value
                local AffDefense2 = userDataName.Data.DFT2Defense.Value
                local AffSword2 = userDataName.Data.DFT2Sword.Value

                -- Stop if all are 2
                if AffSniper2 == 2 and AffSword2 == 2 and AffMelee2 == 2 and AffDefense2 == 2 then
                    isRunning2 = false
                    break
                end

                local args2 = {
                    [1] = "DFT2",
                    [2] = false, -- defense
                    [3] = false, -- melee
                    [4] = false, -- sniper
                    [5] = false, -- sword
                    [6] = "Cash"
                }

                if AffDefense2 == 2 then args2[2] = 0/0 end
                if AffMelee2 == 2 then args2[3] = 0/0 end
                if AffSniper2 == 2 then args2[4] = 0/0 end
                if AffSword2 == 2 then args2[5] = 0/0 end

                local merchant = workspace:FindFirstChild("Merchants")
                if merchant then
                    local affinityMerchant = merchant:FindFirstChild("AffinityMerchant")
                    if affinityMerchant then
                        local clickable = affinityMerchant:FindFirstChild("Clickable")
                        if clickable then
                            local retum = clickable:FindFirstChild("Retum")
                            if retum then
                                retum:FireServer(unpack(args2))
                            end
                        end
                    end
                end
            end
        end)
    end
end)

page8:Label("┇ Function Auto Affinities 2.0 ( Gems ) ┇")

local isRunning3 = false
local task3Thread

page8:Toggle("Auto Reroll Affinity 2.0 (Left/ซ้าย)", false, function(rolg)
    isRunning3 = rolg

    if isRunning3 then
        task3Thread = task.spawn(function()
            while isRunning3 do
                task.wait(8)

                local player = game.Players.LocalPlayer
                local playerId = player.UserId
                local userDataName = game.Workspace.UserData:FindFirstChild("User_" .. playerId)
                if not userDataName then continue end

                -- DFT1
                local AffMelee1 = userDataName.Data.DFT1Melee.Value
                local AffSniper1 = userDataName.Data.DFT1Sniper.Value
                local AffDefense1 = userDataName.Data.DFT1Defense.Value
                local AffSword1 = userDataName.Data.DFT1Sword.Value

                -- Stop if all are 2
                if AffSniper1 == 2 and AffSword1 == 2 and AffMelee1 == 2 and AffDefense1 == 2 then
                    isRunning1 = false
                    break
                end

                local args1 = {
                    [1] = "DFT1",
                    [2] = false, -- defense
                    [3] = false, -- melee
                    [4] = false, -- sniper
                    [5] = false, -- sword
                    [6] = "Gems"
                }

                if AffDefense1 == 2 then args1[2] = 0/0 end
                if AffMelee1 == 2 then args1[3] = 0/0 end
                if AffSniper1 == 2 then args1[4] = 0/0 end
                if AffSword1 == 2 then args1[5] = 0/0 end

                local merchant = workspace:FindFirstChild("Merchants")
                if merchant then
                    local affinityMerchant = merchant:FindFirstChild("AffinityMerchant")
                    if affinityMerchant then
                        local clickable = affinityMerchant:FindFirstChild("Clickable")
                        if clickable then
                            local retum = clickable:FindFirstChild("Retum")
                            if retum then
                                retum:FireServer(unpack(args1))
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local isRunning4 = false
local task4Thread

page8:Toggle("Auto Reroll Affinity 2.0 (Right/ขวา)", false, function(rollg)
    isRunning4 = rollg

    if isRunning4 then
        task4Thread = task.spawn(function()
            while isRunning4 do
                task.wait(8)

                local player = game.Players.LocalPlayer
                local playerId = player.UserId
                local userDataName = game.Workspace.UserData:FindFirstChild("User_" .. playerId)
                if not userDataName then continue end

                -- DFT2
                local AffMelee2 = userDataName.Data.DFT2Melee.Value
                local AffSniper2 = userDataName.Data.DFT2Sniper.Value
                local AffDefense2 = userDataName.Data.DFT2Defense.Value
                local AffSword2 = userDataName.Data.DFT2Sword.Value

                -- Stop if all are 2
                if AffSniper2 == 2 and AffSword2 == 2 and AffMelee2 == 2 and AffDefense2 == 2 then
                    isRunning2 = false
                    break
                end

                local args2 = {
                    [1] = "DFT2",
                    [2] = false, -- defense
                    [3] = false, -- melee
                    [4] = false, -- sniper
                    [5] = false, -- sword
                    [6] = "Gems"
                }

                if AffDefense2 == 2 then args2[2] = 0/0 end
                if AffMelee2 == 2 then args2[3] = 0/0 end
                if AffSniper2 == 2 then args2[4] = 0/0 end
                if AffSword2 == 2 then args2[5] = 0/0 end

                local merchant = workspace:FindFirstChild("Merchants")
                if merchant then
                    local affinityMerchant = merchant:FindFirstChild("AffinityMerchant")
                    if affinityMerchant then
                        local clickable = affinityMerchant:FindFirstChild("Clickable")
                        if clickable then
                            local retum = clickable:FindFirstChild("Retum")
                            if retum then
                                retum:FireServer(unpack(args2))
                            end
                        end
                    end
                end
            end
        end)
    end
end)
		
local Tab9 = Window:Taps("Dupe Gems")
local page9 = Tab9:newpage()

page9:Section("อาจมีเข้าแน่นอน รอการเทสจากเจ้าของ")

	end)
