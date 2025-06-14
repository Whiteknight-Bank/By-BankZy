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
			title.Text = "InW Hub Loading" .. dots[dotIndex]
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
local Window = create:Win("InW Hub : For Map: [ Steve's One Piece ]")

create:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to InW Hub", 5)

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfGun"] = {"Flintlock|Price:5000", "Rifle|Price:5000"};
Cache.DevConfig["ListOfMelee"] = {"BlackLeg|Price:10000", "Ryusoken|Price:75000"};
Cache.DevConfig["ListOfSword"] = {"Wooden Sword| Prices:100", "Katana|Price:5000", "Cutlass|Price:7500", "Pipe|Price:30000", "Jitte|Price:65000", "Nonosama Bo|Price:150000", "Bisento|Price:3000000", "Gryphon|Price:7500000"};
Cache.DevConfig["ListOfDropCompass"] = {"Compass"};
Cache.DevConfig["ListOfBox3"] = {""};

local npcList = {
    "Big head boy",
    "Bob",
    "Sad noob",
    "Sword noob",
    "Gun noob",
    "Injured pirate",
    "That noob"
		}

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local lp = game:GetService("Players").LocalPlayer

spawn(function()
    while true do
        task.wait(4) -- ดีเลย์ 4 วินาที
        pcall(function()
            local char = workspace:FindFirstChild(lp.Name)
            if char then
                for _, scriptObj in pairs(char:GetChildren()) do
                    if scriptObj:IsA("Script") then
                        for _, child in pairs(scriptObj:GetChildren()) do
                            if child:IsA("LocalScript") and child.Name == "" then
                                scriptObj:Destroy()
                                break -- หยุด loop ลูกเมื่อเจอแล้วลบ Script แม่
                            end
                        end
                    end
                end
            end
        end)
    end
end)

-- ดึงชื่อผู้เล่นทุกคน (ยกเว้นตัวเอง)
local function getPlayerNames()
	local names = {}
	for _, player in ipairs(Players:GetPlayers()) do
			table.insert(names, player.Name)
	end
	return names
end

local Wapon = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
end
		
local Tab1 = Window:Taps("Farm")
local page1 = Tab1:newpage()

local lp = game:GetService("Players").LocalPlayer
_G.safezonewarp = false

-- ฟังก์ชันเช็คว่ามี LocalScript ชื่อ "" อยู่ในตัวละครไหม (AntiTP)
local function isAntiTpStillActive()
    local char = workspace:FindFirstChild(lp.Name)
    if char then
        for _, scriptObj in pairs(char:GetChildren()) do
            if scriptObj:IsA("Script") then
                for _, child in pairs(scriptObj:GetChildren()) do
                    if child:IsA("LocalScript") and child.Name == "" then
                        return true
                    end
                end
            end
        end
    end
    return false
end

page1:Label("┇ Safe Zone ┇")
page1:Button("Safe Zone Part", function()
    if isAntiTpStillActive() then
        create:Notifile("", "Anti Death Tp Not Enable", 3)
        return
    end
    local char = lp.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = workspace["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
    end
end)
		
page1:Toggle("Safe Zone Warp", false, function(val)
    _G.safezonewarp = val
end)

spawn(function()
    while task.wait(4) do
        pcall(function()
            if _G.safezonewarp and not isAntiTpStillActive() then
                local char = lp.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    char.HumanoidRootPart.CFrame = workspace["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
                end
            end
        end)
    end
end)
		

page1:Label("┇ Function Item ┇")
page1:Dropdown("Select Weapon:", Wapon, function(wapn)
    Wapon = wapn
end)

page1:Toggle("Auto Click", false, function(state)
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

page1:Toggle("Auto Equip", false, function(aeq)
    _G.autoequip = aeq
end)

spawn(function()
    while wait(0.1) do
        pcall(function()
            if not _G.autoequip then return end

            local player = game.Players.LocalPlayer
            local character = player.Character
            local backpack = player:FindFirstChild("Backpack")
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")

            if not character or not backpack or not humanoid then return end

            local tool = backpack:FindFirstChild(Wapon)
            if tool and not character:FindFirstChild(tool.Name) then
                humanoid:EquipTool(tool)
                task.wait(0.05)

                -- ตรวจสอบว่า Equip สำเร็จ
                if character:FindFirstChild(tool.Name) then
                    tool:Activate()
                end
            end

            -- ถ้าตายหรือปิด
            if humanoid.Health <= 0 or not _G.autoequip then
                humanoid:UnequipTools()
            end
        end)
    end
end)

page1:Label("┇ Function Farm ┇")

local SelectedMob = ""

page1:Dropdown("Select Mobs:", {
"Thief(Lvl:5)",
"Buggy pirate(Lvl:30)",
"Attacking Noob(Lvl:100)",
"Marine(Lvl:200)",
"Luffy(Lvl:1000)"
}, function(pcns)
SelectedMob = pcns:match("^(.-)%(") or pcns -- ตัดเอาชื่อมอนอย่างเดียว
end)

page1:Dropdown("Select NPC", {
"Big head boy [ Thief ]",
"Bob [ Buggy Pirate ]",
"Sad noob [ Attacking noob ]",
"Sword noob [ Farm Sword ]",
"Gun noob [ Farm Gun ]",
"Injured pirate [ Marine ]",
"That noob [ Luffy ]"
}, function(mbon)
getgenv().selectedNPC = mbon:match("^(.-)%s*[%[%(%{]") or mbon
print("Selected NPC:", getgenv().selectedNPC)
end)

local autoClaimLoop = nil

page1:Toggle("Auto Claim Quest", false, function(state)
_G.claim = state

if autoClaimLoop then  
    autoClaimLoop:Disconnect()  
    autoClaimLoop = nil  
end  

if _G.claim and getgenv().selectedNPC then  
    local foundNPC = nil  
    for _, obj in ipairs(workspace:GetDescendants()) do  
        if obj:IsA("Model") and obj.Name == getgenv().selectedNPC then  
            local head = obj:FindFirstChild("Head")  
            if head and head:FindFirstChild("ClickDetector") then  
                foundNPC = head.ClickDetector  
                break  
            end  
        end  
    end  

    if foundNPC then  
        autoClaimLoop = game:GetService("RunService").Heartbeat:Connect(function()  
            pcall(function()  
                if _G.claim then  
                    fireclickdetector(foundNPC)  
                end  
            end)  
        end)  
    end  
end
end)

page1:Toggle("Auto Farm", false, function(befrm)
_G.farmNpc = befrm
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.farmNpc and SelectedMob ~= "" then
                local player = game.Players.LocalPlayer
                local char = player.Character or player.CharacterAdded:Wait()
                local tool = char:FindFirstChildOfClass("Tool")
                local offset = -10

                if tool then
                    local toolName = tool.Name

                    for _, v in pairs(Cache.DevConfig["ListOfSword"]) do
                        if string.find(v, toolName) then
                            offset = -8
                            break
                        end
                    end

                    for _, v in pairs(Cache.DevConfig["ListOfMelee"]) do
                        if string.find(v, toolName) then
                            offset = -6
                            break
                        end
                    end
                end

                for _, mob in pairs(workspace.Npcs:GetChildren()) do
                    if mob:FindFirstChild("HumanoidRootPart") and string.find(mob.Name, SelectedMob) then
                        local root = mob.HumanoidRootPart
                        root.CanCollide = false
                        root.Size = Vector3.new(10, 10, 10)
                        root.Anchored = true
                        root.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, offset)

                        if mob:FindFirstChild("Humanoid") and mob.Humanoid.Health <= 0 then
                            root.Size = Vector3.new(0, 0, 0)
                            mob:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)	
		
spawn(function()
    while wait(0.1) do
        pcall(function()
            if not _G.farmNpc then return end

            local player = game.Players.LocalPlayer
            local character = player.Character
            local backpack = player:FindFirstChild("Backpack")
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")

            if not character or not backpack or not humanoid then return end

            local function getQualifiedTool()
                for _, tool in ipairs(backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool:FindFirstChild("Kills") then
                        local kills = tool.Kills.Value

                        if tool.Name == "Thief!" and kills >= 20 then
                            return tool
                        elseif tool.Name == "Let them pay back!" and kills >= 30 then
                            return tool
                        elseif tool.Name == "Annoying noobs...." and kills >= 10 then
                            return tool
                        elseif tool.Name == "Sword Master" and kills >= 50 then
                            return tool
			elseif tool.Name == "Marines!" and kills >= 30 then
                            return tool
                        elseif tool.Name == "The Strongest..." and kills >= 1 then
                            return tool
                        end
                    end
                end
                return nil
            end

            local tool = getQualifiedTool()

            if tool and not character:FindFirstChild(tool.Name) then
                humanoid:EquipTool(tool)
                task.wait(0.05)
                if character:FindFirstChild(tool.Name) then
                    tool:Activate()
                end
            end

            if humanoid.Health <= 0 or not _G.farmNpc then
                humanoid:UnequipTools()
            end
        end)
    end
end)

page1:Toggle("Auto Farm [ All ]", false, function(fall)
    _G.farmAll = fall

    if autoClaimLoop then
        autoClaimLoop:Disconnect()
        autoClaimLoop = nil
    end

    if _G.farmAll then
        autoClaimLoop = game:GetService("RunService").Heartbeat:Connect(function()
            pcall(function()
                for _, npcName in ipairs(npcList) do
                    for _, obj in ipairs(workspace:GetDescendants()) do
                        if obj:IsA("Model") and obj.Name == npcName then
                            local head = obj:FindFirstChild("Head")
                            if head and head:FindFirstChild("ClickDetector") then
                                fireclickdetector(head.ClickDetector)
                                return -- รับเควสจากแค่อันเดียวต่อรอบ
                            end
                        end
                    end
                end
            end)
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.farmAll then
                local player = game.Players.LocalPlayer
                local char = player.Character or player.CharacterAdded:Wait()
                local tool = char:FindFirstChildOfClass("Tool")
                local offset = -10 -- default

                if tool then
                    local toolName = tool.Name

                    -- ตรวจสอบดาบ
                    for _, v in pairs(Cache.DevConfig["ListOfSword"]) do
                        if string.find(v, toolName) then
                            offset = -8
                            break
                        end
                    end

                    -- ตรวจสอบ melee
                    for _, v in pairs(Cache.DevConfig["ListOfMelee"]) do
                        if string.find(v, toolName) then
                            offset = -5
                            break
                        end
                    end
                end

                -- ลากมอนทุกตัว
                for _, mob in pairs(workspace.Npcs:GetChildren()) do
                    if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
                        local root = mob.HumanoidRootPart
                        root.CanCollide = false
                        root.Size = Vector3.new(10, 10, 10)
                        root.Anchored = true
                        root.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, offset)

                        if mob.Humanoid.Health <= 0 then  
                            root.Size = Vector3.new(0, 0, 0)  
                            mob:Destroy()  
                        end  
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.farmAll then
                local player = game.Players.LocalPlayer
                local char = player.Character or player.CharacterAdded:Wait()
                local tool = char:FindFirstChildOfClass("Tool")
                local offset = -10 -- default

                if tool then
                    local toolName = tool.Name

                    -- ตรวจสอบดาบ
                    for _, v in pairs(Cache.DevConfig["ListOfSword"]) do
                        if string.find(v, toolName) then
                            offset = -8
                            break
                        end
                    end

                    -- ตรวจสอบ melee
                    for _, v in pairs(Cache.DevConfig["ListOfMelee"]) do
                        if string.find(v, toolName) then
                            offset = -5
                            break
                        end
                    end
                end

                -- ลากมอนทุกตัว
                for _, mob in pairs(workspace.Npcs:GetChildren()) do
                    if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
                        local root = mob.HumanoidRootPart
                        root.CanCollide = false
                        root.Size = Vector3.new(10, 10, 10)
                        root.Anchored = true
                        root.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, offset)

                        if mob.Humanoid.Health <= 0 then  
                            root.Size = Vector3.new(0, 0, 0)  
                            mob:Destroy()  
                        end  
                    end
                end
            end
        end)
    end
end)

page1:Label("┇ Function Haki ┇")
page1:Toggle("Auto Buso", false, function(hki)
    _G.autobuso = hki

    if hki then
        spawn(function()
            while _G.autobuso do
                pcall(function()
                    local player = game.Players.LocalPlayer
                    local char = player.Character or workspace:FindFirstChild(player.Name)

                    if char then
                        local found = false

                        for _, obj in ipairs(char:GetDescendants()) do
                            if obj.Name == "Buso" then
                                found = true
                                break
                            end
                        end

                        if not found then
                            local vim = game:GetService("VirtualInputManager")
                            vim:SendKeyEvent(true, Enum.KeyCode.T, false, game)
                            task.wait(0.1)
                            vim:SendKeyEvent(false, Enum.KeyCode.T, false, game)
                        end
                    end
                end)
                task.wait(1)
            end
        end)
    end
end)
		
local Tab2 = Window:Taps("Players")
local page2 = Tab2:newpage()
		
page2:Label("┇ Local Player ┇")
page2:Toggle("Anti Fruit [ God ]", false, function(frut)
	_G.antifruit = frut
end)


page2:Label("┇ Player ┇")
page2:Dropdown("Select Player:", getPlayerNames(), function(name)
    selectedPlayer = name
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

page2:Toggle("Auto Bring Player [ Select Player ]", false, function(pla)
	_G.bringPlayer = pla
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.bringPlayer and selectedPlayer ~= "" then
                local player = game.Players.LocalPlayer
                local char = player.Character or player.CharacterAdded:Wait()
                local tool = char:FindFirstChildOfClass("Tool")
                local offset = -10

                if tool then
                    local toolName = tool.Name

                    for _, v in pairs(Cache.DevConfig["ListOfSword"]) do
                        if string.find(v, toolName) then
                            offset = -8
                            break
                        end
                    end

                    for _, v in pairs(Cache.DevConfig["ListOfMelee"]) do
                        if string.find(v, toolName) then
                            offset = -6
                            break
                        end
                    end
                end

                local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetRoot = targetPlayer.Character.HumanoidRootPart
                    targetRoot.CanCollide = false
                    targetRoot.Anchored = true
                    targetRoot.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, offset)

                    if targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character.Humanoid.Health <= 0 then
                        targetRoot.Anchored = false
                        targetRoot.Size = Vector3.new(2, 2, 1)
                    end
                end
            end
        end)
    end
end)
		
page2:Toggle("Auto Bring Player [ All ]", false, function(plal)
	_G.BringAllPlayer = plal
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.BringAllPlayer then
                local player = game.Players.LocalPlayer
                local char = player.Character or player.CharacterAdded:Wait()
                local tool = char:FindFirstChildOfClass("Tool")
                local offset1 = -10

                if tool then
                    local toolName = tool.Name

                    for _, v in pairs(Cache.DevConfig["ListOfSword"]) do
                        if string.find(v, toolName) then
                            offset1 = -8
                            break
                        end
                    end

                    for _, v in pairs(Cache.DevConfig["ListOfMelee"]) do
                        if string.find(v, toolName) then
                            offset1 = -6
                            break
                        end
                    end
                end

                for i, v in pairs(game.Players:GetPlayers()) do
                    if v ~= player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        local root = v.Character.HumanoidRootPart
                        root.CanCollide = false
                        root.Size = Vector3.new(10, 10, 10)
                        root.Anchored = true
                        root.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, offset1)

                        if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health <= 0 then
                            root.Size = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end
        end)
    end
end)

plr = game.Players.LocalPlayer

local Tab3 = Window:Taps("Island")
local page3 = Tab3:newpage()

page3:Label("┇ ISLANDS ┇")
page3:Button("Thief Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5, 2, 620)
    end)

page3:Button("Buggy Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4242, 3, 1329)
    end)

page3:Button("Noob Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(3006, 2, 1610)
    end)

page3:Button("Marine Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(3329, 31, 6152)
    end)

page3:Button("Fishmen Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5226, 2, -4555)
    end)

page3:Button("Luffy Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2368, 18, -3923)
    end)

page3:Button("Coconut Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4791, -1, -2159)
    end)

page3:Button("BlackLeg Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1324, 37, 5079)
    end)

page3:Button("Ussop Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4609, 58, 4049)
    end)

page3:Button("Fruit Seller Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(2205, 32, -3351)
    end)

local Tab4 = Window:Taps("Shop")
local page4 = Tab4:newpage()

page4:Dropdown("Select Sword:", Cache.DevConfig["ListOfSword"], function(sword)
    selectedSword = sword
end)

page4:Button("Buy Sword", function()
    if selectedSword then  
        for i = 1, 2 do
            local foundNPC = nil  
            for _, obj in ipairs(workspace:GetDescendants()) do  
                if obj:IsA("Model") and obj.Name == selectedSword then  
                    local head = obj:FindFirstChild("Head")  
                    if head and head:FindFirstChild("ClickDetector") then  
                        foundNPC = head.ClickDetector  
                        break  
                    end  
                end  
            end  

            if foundNPC then  
                fireclickdetector(foundNPC)
            else
                create:Notifile("", "Cannot find the NPC for " .. selectedSword, 3)
                create:Notifile("", "Please check your selection or try again.", 3)
                break  -- เจอว่าไม่มี NPC เลยออกลูปก่อนครบ 2 รอบ
            end
        end
    else
        create:Notifile("", "No sword selected!", 3)
        create:Notifile("", "Please select a sword before buying.", 3)
    end
end)

page4:Dropdown("Select Melee:", Cache.DevConfig["ListOfMelee"], function(knrd)
    selectedMelee = knrd
end)

page4:Button("Buy Melee", function()
    if selectedMelee then  
        for i = 1, 2 do  -- ซื้อ 2 ครั้ง
            local foundNPC = nil  
            for _, obj in ipairs(workspace:GetDescendants()) do  
                if obj:IsA("Model") and obj.Name == selectedMelee then  
                    local head = obj:FindFirstChild("Head")  
                    if head and head:FindFirstChild("ClickDetector") then  
                        foundNPC = head.ClickDetector  
                        break  
                    end  
                end  
            end  

            if foundNPC then  
                fireclickdetector(foundNPC)
            else
                create:Notifile("", "Cannot find the NPC for " .. selectedMelee, 3)
                create:Notifile("", "Please check your selection or try again.", 3)
                break
            end
        end
    else
        create:Notifile("", "No melee selected!", 3)
        create:Notifile("", "Please select a melee weapon before buying.", 3)
    end
end)

page4:Dropdown("Select Gun:", Cache.DevConfig["ListOfGun"], function(knrd)
    selectedGun = knrd
end)

page4:Button("Buy Gun", function()
    if selectedGun then  
        for i = 1, 2 do  -- ซื้อ 2 ครั้ง
            local foundNPC = nil  
            for _, obj in ipairs(workspace:GetDescendants()) do  
                if obj:IsA("Model") and obj.Name == selectedGun then  
                    local head = obj:FindFirstChild("Head")  
                    if head and head:FindFirstChild("ClickDetector") then  
                        foundNPC = head.ClickDetector  
                        break  
                    end  
                end  
            end  

            if foundNPC then  
                fireclickdetector(foundNPC)
            else
                create:Notifile("", "Cannot find the NPC for " .. selectedGun, 3)
                create:Notifile("", "Please check your selection or try again.", 3)
                break
            end
        end
    else
        create:Notifile("", "No gun selected!", 3)
        create:Notifile("", "Please select a gun before buying.", 3)
    end
end)

local Tab0 = Window:Taps("Fruit")
local page0 = Tab0:newpage()

page0:Label("┇ Random Fruit ┇")
page0:Button("Reset Devil Fruit", function()
local removerClick = nil  
local beliClick = nil  

for _, obj in ipairs(workspace:GetDescendants()) do  
    if obj:IsA("Model") then  
        local head = obj:FindFirstChild("Head")  
        if head and head:FindFirstChild("ClickDetector") then  
            if obj.Name == "Fruit Remover" then
                removerClick = head.ClickDetector  
            elseif obj.Name == "Beli|Price:150000" then
                beliClick = head.ClickDetector  
            end
        end  
    end  
end  

if removerClick then
    fireclickdetector(removerClick)
end

if beliClick then
    fireclickdetector(beliClick)
    wait(0.5)
    fireclickdetector(beliClick)
end

create:Notifile("", "Your Devil Fruit is Reset Now", 3)
end)

page0:Button("Random Fruit", function()
local removerClick = nil  
local beli1Click = nil  

for _, obj in ipairs(workspace:GetDescendants()) do  
    if obj:IsA("Model") then  
        local head = obj:FindFirstChild("Head")  
        if head and head:FindFirstChild("ClickDetector") then  
            if obj.Name == "Fruit Seller" then
                removerClick = head.ClickDetector  
            elseif obj.Name == "Beli|Price:1500000" then
                beliClick = head.ClickDetector  
            end
        end  
    end  
end  

if removerClick then
    fireclickdetector(removerClick)
end

if beli1Click then
    fireclickdetector(beliClick)
    wait(0.5)
    fireclickdetector(beliClick)
end
end)

page0:Toggle("Auto Bring Fruit", false, function(brdf)
_G.bring = brdf
end)

spawn(function()
    while wait() do
        if _G.bring then
            pcall(function()
                local player = game.Players.LocalPlayer
                local char = player.Character or player.CharacterAdded:Wait()
                local hrp = char:WaitForChild("HumanoidRootPart")

                for _, fruit in ipairs(workspace:GetDescendants()) do
                    if fruit:IsA("MeshPart") and fruit.Name == "Handle" and fruit:FindFirstChild("TouchInterest") then
                        firetouchinterest(hrp, fruit, 0)
                        task.wait()
                        firetouchinterest(hrp, fruit, 1)
                    end
                end
            end)
        end
    end
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
		
page5:Label("┇ Another ┇")
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

page5:Toggle("Teleport All Chest", false, function(cpst)
    _G.tpchest = cpst
end)

spawn(function()
    while wait() do
        if _G.tpchest then
            pcall(function()
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()
                if not character.PrimaryPart then return end

                local banned = Vector3.new(10000, -200.000427, 10000)
                local positions = {}

                -- ชั้นที่ 1
                for _, a in ipairs(workspace:GetChildren()) do
                    if a.Name == "" then
                        -- ชั้นที่ 2
                        for _, b in ipairs(a:GetChildren()) do
                            if b.Name == "" then
                                -- ชั้นที่ 3
                                for _, c in ipairs(b:GetChildren()) do
                                    if c.Name == "" and c:IsA("BasePart") then
                                        if (c.Position - banned).Magnitude > 1 then
                                            table.insert(positions, c.Position)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                -- วาร์ปทุกตำแหน่ง
                for _, pos in ipairs(positions) do
                    character:SetPrimaryPartCFrame(CFrame.new(pos + Vector3.new(0, 5, 0)))
                    wait(1)
                end

                create:Notifile("", "Teleport all chest", 3)
                _G.tpchest = false
            end)
        end
    end
end)

	end)

