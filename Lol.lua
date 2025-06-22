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
local Window = create:Win("ReaperX Hub | Steve's One Piece ")

create:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to ReaperX Hub", 5)

local Wapon = {}

for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Wapon, v.Name)
    end
		end

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfGun"] = {"Flintlock|Price:2500", "Rifle|Price:10000"};
Cache.DevConfig["ListOfMelee"] = {"BlackLeg|Price:10000", "Ryusoken|Price:75000"};
Cache.DevConfig["ListOfSword"] = {"Wooden Sword|Prices:100", "Katana|Price:5000", "Cutlass|Price:7500", "Pipe|Price:30000", "Jitte|Price:65000", "Nonosama Bo|Price:150000", "Bisento|Price:3000000", "Gryphon|Price:7500000"};

local npcList = {
    ["Thief"] = "Big head boy",
    ["Buggy pirate"] = "Bob",
    ["Attacking Noob"] = "Sad noob",
    ["Marine"] = "Injured pirate",
    ["Luffy"] = "That noob",
    ["Farm Sword"] = "Sword noob",
    ["Farm Gun"] = "Gun noob"
}

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

game:GetService("CoreGui"):WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay").ChildAdded:Connect(function(child)
    if child.Name == "ErrorPrompt" then
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")

        if queue_on_teleport then
            queue_on_teleport('game:GetService("TeleportService"):Teleport('..game.PlaceId..')')
        elseif syn and syn.queue_on_teleport then
            syn.queue_on_teleport('game:GetService("TeleportService"):Teleport('..game.PlaceId..')')
        end

        TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
    end
end)
		
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local lp = game:GetService("Players").LocalPlayer
local plr = game.Players.LocalPlayer

spawn(function()
    while true do
        task.wait(3.5)
        local showedNotif = false
        pcall(function()
            local char = workspace:FindFirstChild(lp.Name)
            if char then
                for _, scriptObj in pairs(char:GetChildren()) do
                    if scriptObj:IsA("Script") then
                        for _, child in pairs(scriptObj:GetChildren()) do
                            if child:IsA("LocalScript") and child.Name == "" then
                                scriptObj:Destroy()
                                if not showedNotif then
                                    create:Notifile("", "Protect teleport death", 3)
                                    showedNotif = true
                                end
                                break
                            end
                        end
                    end
                end
            end
        end)
    end
end)
		
local function canTeleport()
    local char = workspace:FindFirstChild(plr.Name)
    if char then
        for _, scriptObj in pairs(char:GetChildren()) do
            if scriptObj:IsA("Script") then
                for _, child in pairs(scriptObj:GetChildren()) do
                    if child:IsA("LocalScript") and child.Name == "" then
                        create:Notifile("", "Please wait protect teleport death not working", 3)
                        return false
                    end
                end
            end
        end
    end
    return true
		end

local function leftClick()
    local vim = game:GetService("VirtualUser")
                vim:CaptureController()
                vim:Button1Down(Vector2.new(1280, 672))
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
    while task.wait(2) do
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
local Wapon = {}
local selectedWeapon = nil

-- โหลดอาวุธจาก Backpack ทันที
for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Wapon, v.Name)
    end
end

-- สร้าง Dropdown แค่ครั้งเดียว
page1:Dropdown("Select Weapon:", Wapon, function(wapn)
    selectedWeapon = wapn
end)

-- ปุ่มรีเฟรช ล้างตาราง Wapon แล้วใส่ค่าใหม่
page1:Button("Refresh Weapon", function()
    table.clear(Wapon)
    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Wapon, v.Name)
        end
    end
				
wait(0.3)
create:Notifile("", "Dropdown Refresh!", 2)
end)
		
page1:Toggle("Auto Click", false, function(lcik)
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

page1:Toggle("Auto Equip", false, function(aeq)
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

page1:Label("┇ Function Farm ┇")

local SelectedMob = ""

page1:Dropdown("Select Mobs:", {
"All",
"Thief(Lvl:5)",
"Buggy pirate(Lvl:30)",
"Attacking Noob(Lvl:100)",
"Marine(Lvl:200)",
"Luffy(Lvl:1000)",
"Farm Sword",
"Farm Gun"
}, function(pcns)
SelectedMob = pcns:match("^(.-)%(") or pcns -- ตัดเอาชื่อมอนอย่างเดียว
end)

local autoClaimLoop = nil
local farmLoop = nil

page1:Toggle("Auto Farm", false, function(befrm)
    _G.farmNpc = befrm

    if farmLoop then
        farmLoop:Disconnect()
        farmLoop = nil
    end

    if _G.farmNpc then
        spawn(function()
            while _G.farmNpc and wait(0.1) do
                pcall(function()
                    local targetNames = {}

                    local mapped = npcList[SelectedMob]
                    if mapped then
                        if typeof(mapped) == "string" then
                            table.insert(targetNames, mapped)
                        elseif typeof(mapped) == "table" then
                            for _, name in pairs(mapped) do
                                table.insert(targetNames, name)
                            end
                        end
                    end

                    for _, obj in ipairs(workspace:GetDescendants()) do
                        if obj:IsA("Model") and table.find(targetNames, obj.Name) then
                            local head = obj:FindFirstChild("Head")
                            if head and head:FindFirstChild("ClickDetector") then
                                fireclickdetector(head.ClickDetector)
                            end
                        end
                    end
                end)
            end
        end)

        farmLoop = game:GetService("RunService").Heartbeat:Connect(function()
            pcall(function()
                local player = game.Players.LocalPlayer
                local char = player.Character
                local hum = char and char:FindFirstChild("Humanoid")
                if not char or not hum or hum.Health <= 0 then return end
                if not SelectedMob or SelectedMob == "" then return end

                local tool = char:FindFirstChildOfClass("Tool")
                local offset = -10
                if tool then
                    local toolName = tool.Name
                    for _, v in pairs(Cache.DevConfig["ListOfSword"]) do
                        if string.find(v, toolName) then
                            offset = -6
                            break
                        end
                    end
                    for _, v in pairs(Cache.DevConfig["ListOfMelee"]) do
                        if string.find(v, toolName) then
                            offset = -5
                            break
                        end
                    end
                end

                for _, mob in pairs(workspace.Npcs:GetChildren()) do
                    if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
                        local isTarget = false

                        if SelectedMob == "All" then
                            isTarget = true
                        elseif mob.Name == SelectedMob then
                            isTarget = true
                        elseif SelectedMob == "Farm Sword" or SelectedMob == "Farm Gun" then
                            -- ✅ เพิ่ม: ฟาร์ม Attacking Noob ด้วย
                            if mob.Name == "Attacking Noob(Lvl:100)" then
                                isTarget = true
                            end
                        end

                        if isTarget then
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
        end)
    end
end)
		
local equippedToolName = nil
local equippedKills = -1
		
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
                    if tool.Name == "Thief!" and kills >= 19 then return tool, kills  
                    elseif tool.Name == "Let them pay back!" and kills > 29 then return tool, kills  
                    elseif tool.Name == "Annoying noobs...." and kills > 9 then return tool, kills  
		    elseif tool.Name == "The gunner!" and kills > 14 then return tool, kills  
		    elseif tool.Name == "Sword Master" and kills > 49 then return tool, kills  
                    elseif tool.Name == "Marines!" and kills > 29 then return tool, kills  
                    elseif tool.Name == "The Strongest..." and kills > 0 then return tool, kills  
                    end  
                end  
            end  
            return nil, nil  
        end  

    local tool, kills = getQualifiedTool()  

                if tool and (equippedToolName ~= tool.Name or equippedKills ~= kills) then  
                    _G.forceHold = true

                    humanoid:EquipTool(tool)  
                    equippedToolName = tool.Name  
                    equippedKills = kills  

                    wait(0.75)  
                    if tool.Parent == character then  
                        wait(0.75)
                        leftClick()
                    end  

                    wait(0.5)  
                    _G.forceHold = false  
                end  

                if humanoid.Health <= 0 then  
                    humanoid:UnequipTools()  
                    equippedToolName = nil  
                    equippedKills = -1  
                    _G.forceHold = false  
                end  
            end)
        end
    end)

spawn(function()    
    local player = game.Players.LocalPlayer    
    while _G.farmNpc do    
        local char = player.Character    
        local hum = char and char:FindFirstChild("Humanoid")    
        if hum and hum.Health <= 0 then    
            repeat task.wait() until player.Character and player.Character:FindFirstChild("HumanoidRootPart")    
            wait(3)    
        end    
        task.wait(1)    
    end    
end)
end
end)

page1:Toggle("Auto Haki Buso", false, function(hki)
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

page1:Toggle("Auto Haki Ken", false, function(hkxn)
    _G.autoKen = hkxn

    if hkxn then
    spawn(function()
        while _G.autoKen do
            pcall(function()
                local player = game.Players.LocalPlayer
                local char = player.Character or workspace:FindFirstChild(player.Name)

                if char then
                    local hasKen = false

                    for _, obj in ipairs(char:GetDescendants()) do
                        if obj.Name == "KenDodge" then
                            hasKen = true
                            break
                        end
                    end

                    if not hasKen then
                        local miv = game:GetService("VirtualInputManager")
                        miv:SendKeyEvent(true, Enum.KeyCode.R, false, game)
                        task.wait(0.1)
                        miv:SendKeyEvent(false, Enum.KeyCode.R, false, game)

                        repeat
                            task.wait(0.2)
                            hasKen = false
                            for _, obj in ipairs(char:GetDescendants()) do
                                if obj.Name == "KenDodge" then
                                    hasKen = true
                                    break
                                end
                            end
                        until hasKen or not _G.autoKen
                    end
                end
            end)
            task.wait(0.2)
        end
    end)
end
end)
		
page1:Label("┇ Another Farm ┇")

local altNpcTargets = {
    ["Farm Sword"] = "Sword noob",
    ["Farm Gun"] = "Gun noob"
}

page1:Dropdown("Select Mobs:", {
    "Farm Sword",
    "Farm Gun"
}, function(selected)
    _G.farmAltMob = selected
end)

local farmAltLoop = nil
local equipToolThread = nil
local isFarming = false
local equippedToolName = nil
local equippedKills = -1

function stopAutoFarm()
    if not isFarming then return end
    isFarming = false
    if farmAltLoop then
        farmAltLoop:Disconnect()
        farmAltLoop = nil
    end
    if equipToolThread then
        equipToolThread:Disconnect()
        equipToolThread = nil
    end
end

function startAutoFarm()
    if isFarming then return end
    isFarming = true

    farmAltLoop = game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            if not _G.farmAlt then return end

            local player = game.Players.LocalPlayer
            local char = player.Character
            local hum = char and char:FindFirstChild("Humanoid")
            if not char or not hum or hum.Health <= 0 then return end

            if _G.farmAltMob then
                local targetName = altNpcTargets[_G.farmAltMob]
                if targetName then
                    for _, obj in ipairs(workspace:GetDescendants()) do
                        if obj:IsA("Model") and obj.Name == targetName then
                            local head = obj:FindFirstChild("Head")
                            if head and head:FindFirstChild("ClickDetector") then
                                fireclickdetector(head.ClickDetector)
                            end
                        end
                    end
                end
            end

            local tool = char:FindFirstChildOfClass("Tool")
            local offset = -10
            if tool then
                local toolName = tool.Name
                for _, v in pairs(Cache.DevConfig["ListOfSword"]) do
                    if string.find(v, toolName) then
                        offset = -6
                        break
                    end
                end
                for _, v in pairs(Cache.DevConfig["ListOfMelee"]) do
                    if string.find(v, toolName) then
                        offset = -5
                        break
                    end
                end
            end

            for _, mob in pairs(workspace.Npcs:GetChildren()) do
                if mob.Name == "Attacking Noob(Lvl:100)" and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
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
        end)
    end)

    equipToolThread = game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            if not _G.farmAlt then return end
            if _G.farmAltMob ~= "Farm Sword" and _G.farmAltMob ~= "Farm Gun" then return end

            local player = game.Players.LocalPlayer
            local character = player.Character
            local backpack = player:FindFirstChild("Backpack")
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
            if not character or not backpack or not humanoid then return end

            if not character or not backpack or not humanoid then return end  

        local function getQualifiedTool()  
            for _, tool in ipairs(backpack:GetChildren()) do  
                if tool:IsA("Tool") and tool:FindFirstChild("Kills") then  
                    local kills = tool.Kills.Value  
                    if tool.Name == "Sword Master" and kills >= 49 then return tool, kills  
                    elseif tool.Name == "The gunner!" and kills >= 14 then return tool, kills
                    end  
                end  
            end  
            return nil, nil  
        end  
							
local tool, kills = getQualifiedTool()  
                if tool and (equippedToolName ~= tool.Name or equippedKills ~= kills) then  
                    _G.forceHold = true
                    humanoid:EquipTool(tool)  
                    equippedToolName = tool.Name  
                    equippedKills = kills  
                    wait(0.75)  
                    if tool.Parent == character then  
                        wait(0.75)
                        leftClick()
                    end  
                    wait(0.5)  
                    _G.forceHold = false  
                end  

                if humanoid.Health <= 0 then  
                    humanoid:UnequipTools()  
                    equippedToolName = nil  
                    equippedKills = -1  
                    _G.forceHold = false  
                end  
        end)
    end)
end

page1:Toggle("Auto Farm", false, function(altt)
    _G.farmAlt = altt

    if not altt then
        stopAutoFarm()
        return
    end

    startAutoFarm()
end)

spawn(function()
    while wait(0.5) do
        pcall(function()
            if not _G.farmAlt then return end

            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character and character:FindFirstChild("Humanoid")

            if humanoid and humanoid.Health <= 0 then
                _G.farmAlt = false
                _G.forceHold = true
                stopAutoFarm()

                -- รอจนกว่าตัวละครจะรีเซ็ต
                repeat wait() until player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                wait(1)

                _G.forceHold = false
                _G.farmAlt = true
                startAutoFarm()
            end
        end)
    end
end)

local Tab2 = Window:Taps("Players")
local page2 = Tab2:newpage()

page2:Label("┇ Player ┇")
local playerNames = {}

for _, player in ipairs(game.Players:GetPlayers()) do
    table.insert(playerNames, player.Name)
end

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
                            offset = -4.5
                            break
                        end
                    end
                end

                local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetChar = targetPlayer.Character
                    local targetRoot = targetChar.HumanoidRootPart

                    targetRoot.CanCollide = false
                    targetRoot.Anchored = true
                    targetRoot.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, offset)

                    -- ✅ ขยายขนาด Hitbox (ร่างจริง)
                    if targetRoot.Size.Magnitude < 10 then -- ป้องกันไม่ให้ขยายซ้ำ
                        targetRoot.Size = Vector3.new(25, 25, 25)
                    end

                    -- ❌ คืนค่าขนาดเดิมเมื่อตาย
                    if targetChar:FindFirstChild("Humanoid") and targetChar.Humanoid.Health <= 0 then
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

local Tab3 = Window:Taps("Island")
local page3 = Tab3:newpage()

page3:Label("┇ Island Teleport ┇")
page3:Button("Thief Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5, 2, 620)
    end
end)

page3:Button("Buggy Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4242, 3, 1329)
    end
end)

page3:Button("Noob Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(3006, 2, 1610)
    end
end)

page3:Button("Marine Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(3329, 31, 6152)
    end
end)

page3:Button("Fishmen Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5226, 2, -4555)
    end
end)

page3:Button("Luffy Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2368, 18, -3923)
    end
end)

page3:Button("Coconut Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4791, -1, -2159)
    end
end)

page3:Button("BlackLeg Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1324, 37, 5079)
    end
end)

page3:Button("Ussop Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4609, 58, 4049)
    end
end)

page3:Button("Fruit Seller Island" , function()
    if canTeleport() then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(2205, 32, -3351)
    end
end)

local Tab4 = Window:Taps("Shop")
local page4 = Tab4:newpage()

page4:Label("┇ Shop [ Weapon ] ┇")
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

page0:Label("┇ Fruit ┇")
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
local randomClick = nil  
local beli1Click = nil  

for _, obj in ipairs(workspace:GetDescendants()) do  
    if obj:IsA("Model") then  
        local head = obj:FindFirstChild("Head")  
        if head and head:FindFirstChild("ClickDetector") then  
            if obj.Name == "Fruit Seller" then
                randomClick = head.ClickDetector  
            elseif obj.Name == "Beli|Price:1500000" then
                beli1Click = head.ClickDetector  
            end
        end  
    end  
end  

if randomClick then
    fireclickdetector(randomClick)
end

if beli1Click then
    fireclickdetector(beli1Click)
    wait(0.5)
    fireclickdetector(beli1Click)
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

local RunService = game:GetService("RunService")
local followConnection
local seaPart

page5:Toggle("Walk On Sea", false, function(walk)
    if walk then
        create:Notifile("", "You can walk on sea now! :)", 3)

        seaPart = Instance.new("Part")
        seaPart.Name = "InvisibleSea"
        seaPart.Anchored = true
        seaPart.CanCollide = true
        seaPart.Transparency = 1
        seaPart.Size = Vector3.new(50, 1, 50)
        seaPart.Parent = workspace

        followConnection = RunService.RenderStepped:Connect(function()
            local char = plr.Character or plr.CharacterAdded:Wait()
            local root = char:FindFirstChild("HumanoidRootPart")
            if root and seaPart then
                local goalPos = Vector3.new(root.Position.X, -5.5, root.Position.Z)
                seaPart.Position = seaPart.Position:Lerp(goalPos, 0.5)
            end
        end)

    else
        create:Notifile("", "Off walk on sea now! :(", 3)

        if followConnection then
            followConnection:Disconnect()
            followConnection = nil
        end
        if seaPart then
            seaPart:Destroy()
            seaPart = nil
        end
    end
end)

page5:Toggle("Teleport Chest", false, function(cpst)
    _G.tpchest = cpst
end)

local lastFound = true
local originalPos = nil
local chestVisited = {}

spawn(function()
    while task.wait(1.5) do
        if _G.tpchest then
            pcall(function()
                if not canTeleport() then return end

                local character = plr.Character or plr.CharacterAdded:Wait()
                if not character.PrimaryPart then return end

                local hrp = character.PrimaryPart
                local banned = Vector3.new(10000, -200.000427, 10000)
                local foundAny = false

                if not originalPos then
                    originalPos = hrp.Position
                end

                for _, a in ipairs(workspace:GetChildren()) do
                    if not _G.tpchest then break end
                    if a.Name == "" then
                        for _, b in ipairs(a:GetChildren()) do
                            if b.Name == "" then
                                for _, c in ipairs(b:GetChildren()) do
                                    if not _G.tpchest then break end
                                    if c.Name == "" and c:IsA("BasePart") then
                                        local posKey = tostring(math.floor(c.Position.X))..","..
                                                       tostring(math.floor(c.Position.Y))..","..
                                                       tostring(math.floor(c.Position.Z))

                                        if not chestVisited[posKey] and (c.Position - banned).Magnitude > 1 then
                                            chestVisited[posKey] = true
                                            foundAny = true
                                            hrp.CFrame = CFrame.new(c.Position + Vector3.new(0, 5, 0))
                                            task.wait(0.25)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                if not foundAny then
                    if lastFound then
                        create:Notifile("", "Not found chest", 3)
                        lastFound = false

                        if originalPos then
                            task.wait(0.3)
                            hrp.CFrame = CFrame.new(originalPos + Vector3.new(0, 5, 0))
                            originalPos = nil
                            chestVisited = {}
                        end
                    end
                else
                    lastFound = true
                    create:Notifile("", "Teleport chest done", 2)
                end
            end)
        else
            originalPos = nil
            chestVisited = {}
        end
    end
end)

local Tab6 = Window:Taps("Credit")
local page6 = Tab6:newpage()

page6:Label("| Made by BankTH from Thai prople | ทำโดย BankTH จากคนไทย อิอิ|")
page6:Button("Link Youtube", function()
    local link = "https://www.youtube.com/@InwBank_zylv"

    setclipboard(link)
    create:Notifile("", "Copy link youtube now! Pls Subscribe :(", 3)
end)		
	end)

