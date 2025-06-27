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

create:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to ReaperX Hub", 2)

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBuy"] = {""};
Cache.DevConfig["ListOfJoin"] = {"Pirate", "Marine", "Revolutionary"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"};
Cache.DevConfig["ListOfDropCompass"] = {"Compass"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};

local enemyQuestStrg = {
    ["Mountain Bandit"] = {
        questFolder = "SpawnIslandQuests",
        questModel = "BanditQuest",
        position = Vector3.new(-947.672119, 61.9150543, -1139.79211)
    },
    ["Ice Monster"] = {
        questFolder = "SnowIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "IceStgthQuest",
        position = Vector3.new(-1063.10986, 62.7437477, -3285.20532)
    },
    ["Logia Bandit"] = {
        questFolder = "SkyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "LogiaBStrgthQuest",
        position = Vector3.new(-4414.65381, 68.6773071, -1525.55737)
    },
    ["Skypiean"] = {
        questFolder = "SkyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "SkyStrgthQuest",
        position = Vector3.new(-3856.99365, 2068.38159, 3104.50513)
    },
    ["Desert Bandit"] = {
        questFolder = "SandIslandQuests",
        questModel = "DefeatDesertBanditStrength",
        position = Vector3.new(927.113708, 85.4592438, 125.499176)
    },
    ["Fishman"] = {
        questFolder = "RockyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "FishStrgthQuest",
        position = Vector3.new(-4029.39355, 96.7876511, 454.569122)
    },
    ["Revolutionary Troop"] = {
        questFolder = "RevIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "RevolutionnaryStrgQuest",
        position = Vector3.new(-3094.93384, 66.9042282, -3807.8772)
    },
    ["Buggy Pirate"] = {
        questFolder = "OrangeTownQuests",
        questModel = "BuggyPirateQuests",
        newName = "BuggyPirateStrgQuests",
        position = Vector3.new(-2362.24292, 64.4447784, -180.865555)
    },
    ["Vice-Admiral"] = {
        questFolder = "MarineIslandQuest",
        questModel = "marineq",
        position = Vector3.new(2807.47412, 80.1453857, -1462.3136)
    },
    ["Ito Bandit"] = {
        questFolder = "FarmIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "ItoStrengthQuest",
        position = Vector3.new(-835.759155, 92.8242264, -5633.88428)
    },
    ["Crocodile"] = {
        questFolder = "SandIslandQuests",
        questModel = "CrocodileQuests",
        newName = "CrocodileStrengthQuests",
        position = Vector3.new(927.113708, 81.4713745, 125.499176)
    }
		}

local enemyQuestSword = {
    ["Mountain Bandit"] = {
        questFolder = "SpawnIslandQuests",
        questModel = "bandit",
        position = Vector3.new(-951.352112, 61.9148483, -1139.79199)
    },
    ["Haki Monkey"] = {
        questFolder = "GrassyIslandQuest",
	questModel = "MonkeyQuest",
        newName = "MonkeySwordQuest",
        position = Vector3.new(-951.820618, 66.0820541, 681.963806)
    },
    ["Ice Monster"] = {
        questFolder = "SnowIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "IceSwordQuest",
        position = Vector3.new(-1063.10986, 62.7437477, -3285.20532)
    },
    ["Yeti"] = {
        questFolder = "YetiIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "YetiSwordQuest",
        position = Vector3.new(1559.76025, 62.7584152, -4886.70947)
    },
    ["Logia Bandit"] = {
        questFolder = "SkyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "LogiaBSwordQuest",
        position = Vector3.new(-4414.65381, 68.6773071, -1525.55737)
    },
    ["Skypiean"] = {
        questFolder = "SkyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "SkySwordQuest",
        position = Vector3.new(-3861.70581, 2068.42334, 3110.15918)
    },
    ["Desert Bandit"] = {
        questFolder = "SandIslandQuests",
        questModel = "DefeatDesertBanditBlade",
        position = Vector3.new(923.887878, 85.4589615, 123.72757)
    },
    ["Fishman"] = {
        questFolder = "RockyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "FishSwordQuest",
        position = Vector3.new(-4032.18628, 96.7876511, 452.172302)
    },
    ["Revolutionary Troop"] = {
        questFolder = "RevIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "RevolutionnaryBladeQuest",
        position = Vector3.new(-3098.60962, 66.9039612, -3807.74756)
    },
    ["Buggy Pirate"] = {
        questFolder = "OrangeTownQuests",
        questModel = "BuggyPirateQuests",
        newName = "BuggyPirateSwordQuests",
        position = Vector3.new(-2365.92603, 64.4445572, -180.865417)
    },
    ["Vice-Admiral"] = {
        questFolder = "MarineIslandQuest",
        questModel = "marine",
	newName = "MarineSwordQuest",
        position = Vector3.new(2812.84082, 80.1873169, -1457.27649)
    },
    ["Ito Bandit"] = {
        questFolder = "FarmIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "ItoSwordQuest",
        position = Vector3.new(-834.440369, 92.8242264, -5637.3208)
    },
    ["Enel"] = {
        questFolder = "SkyIslandQuest",
        questModel = "IceMonstersQuest",
	newName = "EnelBladeQuest",
        position = Vector3.new(-3861.70581, 2064.40186, 3110.15918)
    },
    ["Crocodile"] = {
        questFolder = "SandIslandQuests",
        questModel = "CrocodileQuests",
        newName = "CrocodileSwordQuests",
        position = Vector3.new(920.663147, 81.513298, 121.955994)
    },
    ["Buggy The Clown"] = {
        questFolder = "OrangeTownQuests",
        questModel = "BuggyTheClownQuests",
        newName = "BuggyDefenseQuests",
        position = Vector3.new(-2369.60303, 60.4989929, -180.865417)
    }
		}

local enemyQuestDef = {
    ["Mountain Bandit"] = {
        questFolder = "SpawnIslandQuests",
        questModel = "bandit",
        newName = "Bandit",
        position = Vector3.new(-955.032, 61.957, -1139.792)
    },
    ["Haki Monkey"] = {
        questFolder = "GrassyIslandQuest",
	questModel = "MonkeyQuest",
        newName = "MonkeyDefQuest",
        position = Vector3.new(-950.852905, 66.1240616, 685.514099, 0.96481657)
    },
    ["Ice Monster"] = {
        questFolder = "SnowIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "IceDefQuest",
        position = Vector3.new(-1056.87231, 62.7855415, -3289.11206)
    },
    ["Yeti"] = {
        questFolder = "YetiIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "YetiDefenseQuest",
        position = Vector3.new(1554.35364, 62.716629, -4891.70264)
    },
    ["Logia Bandit"] = {
        questFolder = "SkyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "LogiaBanditDefQuest",
        position = Vector3.new(-4414.65381, 68.6773071, -1525.55737)
    },
    ["Skypiean"] = {
        questFolder = "SkyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "SkyDefQuest",
        position = Vector3.new(-3859.3501, 2068.38159, 3107.33105)
    },
    ["Desert Bandit"] = {
        questFolder = "SandIslandQuests",
        questModel = "DefeatDesertBanditDefense",
        position = Vector3.new(920.663147, 85.5009918, 121.955994)
    },
    ["Fishman"] = {
        questFolder = "RockyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "FishDefQuest",
        position = Vector3.new(-4034.97925, 96.8292542, 449.778961)
    },
    ["Revolutionary Troop"] = {
        questFolder = "RevIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "RevolutionnaryDefQuest",
        position = Vector3.new(-3102.28809, 66.9459763, -3807.61768)
    },
    ["Buggy Pirate"] = {
        questFolder = "OrangeTownQuests",
        questModel = "BuggyPirateQuests",
        newName = "BuggyPirateDefQuests",
        position = Vector3.new(-2369.60303, 64.4866104, -180.865417)
    },
    ["Enel"] = {
        questFolder = "SkyIslandQuest",
	questModel = "IceMonstersQuest",
        newName = "EnelDefenseQuest",
        position = Vector3.new(-3856.99365, 2064.36011, 3104.50513)
    },
    ["Ito Bandit"] = {
        questFolder = "FarmIslandQuest",
	questModel = "IceMonstersQuest",
        newName = "ItoDefQuest",
        position = Vector3.new(-833.125732, 92.8658295, -5640.75293)
    },
    ["Buggy The Clown"] = {
        questFolder = "OrangeTownQuests",
        questModel = "BuggyTheClownQuests",
        newName = "BuggySwordQuests",
        position = Vector3.new(-2362.24292, 60.4571304, -180.865555)
    }
		}
		
local enemyQuestSniper = {
    ["Haki Monkey"] = {
        questFolder = "GrassyIslandQuest",
        questModel = "MonkeyQuest",
        newName = "MonkeyGunQuest",
        position = Vector3.new(-952.788574, 66.0822601, 678.413635)
    },
    ["Ice Monster"] = {
        questFolder = "SnowIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "IceGunQuest",
        position = Vector3.new(-1059.99097, 62.7434807, -3287.15747)
    },
    ["Yeti"] = {
        questFolder = "YetiIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "YetiGunQuest",
        position = Vector3.new(1557.05554, 62.7163467, -4889.20605)
    },
    ["Enel"] = {
        questFolder = "SkyIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "EnelGunQuest",
        position = Vector3.new(-3859.3501, 2064.36011, 3107.33105)
    },
    ["Revolutionary Troop"] = {
        questFolder = "RevIslandQuest",
        questModel = "IceMonstersQuest",
        newName = "RevolutionnaryGunQuest",
        position = Vector3.new()
    },
    ["Buggy Pirate"] = {
        questFolder = "OrangeTownQuests",
        questModel = "BuggyPirateQuests",
        newName = "",
        position = Vector3.new()
    },
    ["Vice-Admiral"] = {
        questFolder = "MarineIslandQuest",
	questModel = "marin",
        newName = "MarineGun",
        position = Vector3.new(2810.15869, 80.145195, -1459.79517)
     },
     ["Crocodile"] = {
        questFolder = "SandIslandQuests",
        questModel = "CrocodileQuests",
        newName = "CrocodileGunQuests",
        position = Vector3.new(923.887878, 81.4711914, 123.72757)
    },
    ["Buggy The Clown"] = {
        questFolder = "OrangeTownQuests",
        questModel = "BuggyTheClownQuests",
        newName = "BuggyGunQuests",
        position = Vector3.new(-2365.92603, 60.4568977, -180.865417)
    }
		}

local allQuests = {enemyQuestStrg, enemyQuestSword, enemyQuestDef, enemyQuestSniper}
local questsFolder = workspace:FindFirstChild("Quests")

for _, questTable in ipairs(allQuests) do
    for _, entry in pairs(questTable) do
        local folder = questsFolder and questsFolder:FindFirstChild(entry.questFolder)

        if not folder then
            warn("❌ ไม่พบ folder:", entry.questFolder)
            continue
        end

        local found = false
        print("\n🔍 เริ่มค้นหาใน:", entry.questFolder, "→ กำลังหา:", entry.questModel)
        print("🎯 Position ที่ต้องการ:", tostring(entry.position))

        for _, inst in ipairs(folder:GetDescendants()) do
            if inst:IsA("BasePart") then
                if inst.Name == entry.questModel then
                    local base = inst:IsA("BasePart") and inst or inst:FindFirstChildWhichIsA("BasePart", true)
                    if base then
                        local dist = (base.Position - entry.position).Magnitude
                        print("→ เจอ:", inst.Name, "| ระยะห่าง:", dist)

                        if dist < 1 then
                            if entry.newName then
                                local oldName = inst.Name
                                local success, err = pcall(function()
                                    inst.Name = entry.newName
                                end)

                                if success then
                                    print("✅ เปลี่ยนชื่อ:", oldName, "→", inst.Name)
                                else
                                    warn("❌ เปลี่ยนชื่อไม่สำเร็จ:", err)
                                end
                            else
                                print("⚠️ ไม่มี newName ให้เปลี่ยน")
                            end

                            found = true
                            break
                        end
                    end
                end
            end
        end

        if not found then
            warn("⚠️ ไม่พบ:", entry.questModel, "ใน", entry.questFolder, "หรือตำแหน่งไม่ตรง")
        end
    end
end

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true
		
local player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local replicatedStorage = game:GetService("ReplicatedStorage")

local function isQuestGUIVisible()
    local gui = player:FindFirstChild("PlayerGui")
    if not gui then return false end

    local quests = gui:FindFirstChild("QuestsGUI")
    local main = quests and quests:FindFirstChild("MainFrame")
    return main and main.Visible == true
		end

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

local wasAutoClaimQ = false
local debounceDie = false

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            local player = game.Players.LocalPlayer
            local char = player.Character
            local hum = char and char:FindFirstChild("Humanoid")

            if hum and hum.Health <= 0 and not debounceDie then
                debounceDie = true

                wasAutoClaimQ = _G.autoclaimq

                _G.autoclaimq = false

                task.delay(4, function()
                    _G.autoclaimq = wasAutoClaimQ
                    debounceDie = false
                end)
            end
        end)
    end
end)

local Tab1 = Window:Taps("Auto")
local page1 = Tab1:newpage()

page1:Label("┇ Function Auto ┇")  
page1:Toggle("Bring Devil Fruit", false, function(brdf)
    _G.bringdf = brdf
end)	

spawn(function()
    while wait(0.1) do
        if _G.bringdf then
            pcall(function()
                local player = game.Players.LocalPlayer
                local character = player.Character or workspace:FindFirstChild(player.Name)

                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    
                    local equippedTool = character:FindFirstChildOfClass("Tool")
                    if equippedTool and string.match(equippedTool.Name, "Fruit$") then
                        humanoid:UnequipTools()
                    end

                    for _, tool in ipairs(workspace:GetChildren()) do
                        if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
                            if string.match(tool.Name, "Fruit$") then
                                tool.Parent = character
                            end
                        end
                    end
                end
            end)
        end
    end
end)

page1:Toggle("Bring HakiBook", false, function(brbok)
    _G.bringbook = brbok
end)	

spawn(function()
    while wait(0.1) do
        if _G.bringbook then
            pcall(function()
                local player = game.Players.LocalPlayer
                local character = player.Character or workspace:FindFirstChild(player.Name)

                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    
                    local equippedTool = character:FindFirstChildOfClass("Tool")
                    if equippedTool and string.match(equippedTool.Name, "Book$") then
                        humanoid:UnequipTools()
                    end

                    for _, tool in ipairs(workspace:GetChildren()) do
                        if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
                            if string.match(tool.Name, "Book$") then
                                tool.Parent = character
                            end
                        end
                    end
                end
            end)
        end
    end
end)

page1:Toggle("Notifile Shank", false, function(shk)
    _G.shank = shk
end)	

local notified = false

spawn(function()
    while wait(0.1) do
        if _G.shank and not notified then
            local shanks = workspace:FindFirstChild("Shanks [Click For Gryphon]")
            if shanks then
                notified = true
                create:Notifile("", "Found Shanks [Click For Gryphon] แล้ว!", 5)
            end
        end
    end
end)

page1:Toggle("Notifile White Bread", false, function(whbd)
    _G.whitebread = whbd
end)	

page1:Button("Teleport All Chest" , function()
       local player = game.Players.LocalPlayer
local teleportDelay = 0.3

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

page2:Label("┇ Other ┇")
page2:Button("Safe Zone Part", function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = workspace["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
    end
end)

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
local SelectedQuest = ""

page2:Dropdown("Select Enemys:", {
    "Mountain Bandit", 
    "Buggy Pirate",
    "Buggy The Clown",
    "Desert Bandit",
    "Crocodile",
    "Ice Monster",
    "Haki Monkey", 
    "Vice-Admiral", 
    "Revolutionary Troop",
    "Skypiean",
    "Enel",
    "Logia Bandit",
    "Bara Bandit",
    "Fishman",
    "Ito Bandit", 
    "Yeti"
}, function(choice)
    SelectedEnemy = choice
end)

page2:Dropdown("Select Quests:", {
    "Strength", 
    "Sword",
    "Defense",
    "Gun"
}, function(qust)
    SelectedQuest = qust
end)

page2:Toggle("Auto Claim Quest", false, function(clmq)
    _G.autoclaimq = clmq
end)

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if not _G.autoclaimq or SelectedQuest ~= "Strength" or SelectedEnemy == "" or isQuestGUIVisible() then return end

            local info = enemyQuestStrg[SelectedEnemy]
            if not info then return end

            local quests = workspace:FindFirstChild("Quests")
            local questFolder = quests and quests:FindFirstChild(info.questFolder)
            local questModel = questFolder and questFolder:FindFirstChild(info.newName or info.questModel)
            local clicked = false

            if questModel then
                for _, obj in ipairs(questModel:GetDescendants()) do
                    if obj:IsA("ClickDetector") then
                        local parent = obj.Parent
                        local part = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart", true)
                        if part and (part.Position - info.position).Magnitude < 3 then
                            fireclickdetector(obj)
                            clicked = true
                            break
                        end
                    end
                end
            end

            if not clicked then
                create:Notifile("", "Not found: " .. SelectedEnemy .. " - No Strength Quest", 3)
            end
        end)
    end
end)

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if not _G.autoclaimq or SelectedQuest ~= "Sword" or SelectedEnemy == "" or isQuestGUIVisible() then return end

            local info = enemyQuestSword[SelectedEnemy]
            if not info then return end

            local quests = workspace:FindFirstChild("Quests")
            local questFolder = quests and quests:FindFirstChild(info.questFolder)
            local questModel = questFolder and questFolder:FindFirstChild(info.newName or info.questModel)
            local clicked = false

            if questModel then
                for _, obj in ipairs(questModel:GetDescendants()) do
                    if obj:IsA("ClickDetector") then
                        local parent = obj.Parent
                        local part = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart", true)
                        if part and (part.Position - info.position).Magnitude < 3 then
                            fireclickdetector(obj)
                            clicked = true
                            break
                        end
                    end
                end
            end

            if not clicked then
                create:Notifile("", "Not found: " .. SelectedEnemy .. " - No Sword Quest", 3)
            end
        end)
    end
end)

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if not _G.autoclaimq or SelectedQuest ~= "Defense" or SelectedEnemy == "" or isQuestGUIVisible() then return end

            local info = enemyQuestDef[SelectedEnemy]
            if not info then return end

            local quests = workspace:FindFirstChild("Quests")
            local questFolder = quests and quests:FindFirstChild(info.questFolder)
            local questModel = questFolder and questFolder:FindFirstChild(info.newName or info.questModel)
            local clicked = false

            if questModel then
                for _, obj in ipairs(questModel:GetDescendants()) do
                    if obj:IsA("ClickDetector") then
                        local parent = obj.Parent
                        local part = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart", true)
                        if part and (part.Position - info.position).Magnitude < 3 then
                            fireclickdetector(obj)
                            clicked = true
                            break
                        end
                    end
                end
            end

            if not clicked then
                create:Notifile("", "Not found: " .. SelectedEnemy .. " - No Defense Quest", 3)
            end
        end)
    end
end)

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if not _G.autoclaimq or SelectedQuest ~= "Gun" or SelectedEnemy == "" or isQuestGUIVisible() then return end

            local info = enemyQuestSniper[SelectedEnemy]
            if not info then return end

            local quests = workspace:FindFirstChild("Quests")
            local questFolder = quests and quests:FindFirstChild(info.questFolder)
            local questModel = questFolder and questFolder:FindFirstChild(info.newName or info.questModel)
            local clicked = false

            if questModel then
                for _, obj in ipairs(questModel:GetDescendants()) do
                    if obj:IsA("ClickDetector") then
                        local parent = obj.Parent
                        local part = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart", true)
                        if part and (part.Position - info.position).Magnitude < 3 then
                            fireclickdetector(obj)
                            clicked = true
                            break
                        end
                    end
                end
            end

            if not clicked then
                create:Notifile("", "Not found: " .. SelectedEnemy .. " - No Gun Quest", 3)
            end
        end)
    end
end)

page2:Toggle("Auto Bring Farm", false, function(brfrm)
    _G.farmBring = brfrm
end)

local lastSafeTP = 0
local safeTPDelay = 2
local questVisibleAt = 0
local allowBring = false

RunService.RenderStepped:Connect(function()
    if not _G.farmBring then return end

    pcall(function()
        local targetName = SelectedEnemy ~= "" and SelectedEnemy or SelectedBoss
        if targetName == "" then return end

        local info = enemyQuestStrg[targetName] or enemyQuestSword[targetName] or enemyQuestDef[targetName]
        if not info then return end

        local quests = workspace:FindFirstChild("Quests")
        local questFolder = quests and quests:FindFirstChild(info.questFolder)

        local player = game.Players.LocalPlayer
        local char = player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end

        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end

        if not isQuestGUIVisible() and info.position then
            allowBring = false
            questVisibleAt = 0
            hrp.CFrame = CFrame.new(info.position + Vector3.new(0, 3, 0))
            return
        end

        if isQuestGUIVisible() then
            if questVisibleAt == 0 then
                questVisibleAt = tick()
            end

            if tick() - questVisibleAt > safeTPDelay and not allowBring then
                allowBring = true
                lastSafeTP = tick()

                local safePart = workspace:FindFirstChild("SafeZoneOuterSpacePart")
                if safePart then
                    hrp.CFrame = safePart.CFrame + Vector3.new(0, 3, 0)
                end
            end
        end
    end)
end)

local currentMob = nil

RunService.RenderStepped:Connect(function()
    if not _G.farmBring or not allowBring then return end

    pcall(function()
        local targetName = SelectedEnemy ~= "" and SelectedEnemy
        if targetName == "" then return end

        local player = game.Players.LocalPlayer
        local char = player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end

        local Enemys = workspace:FindFirstChild("Enemys")
        if not Enemys then return end

        if not currentMob
            or not currentMob:FindFirstChild("Humanoid")
            or currentMob.Humanoid.Health <= 0
            or not currentMob:IsDescendantOf(workspace) then

            currentMob = nil

            for _, mob in pairs(Enemys:GetChildren()) do
                if mob:IsA("Model") and mob.Name == targetName then
                    local mobHum = mob:FindFirstChild("Humanoid")
                    if mobHum and mobHum.Health > 0 then
                        currentMob = mob
                        break
                    end
                end
            end
        end

        if currentMob and currentMob:FindFirstChild("HumanoidRootPart") then
            local mobHRP = currentMob.HumanoidRootPart
            local offset = hrp.CFrame.LookVector * 4 + hrp.CFrame.RightVector * 2
            local frontRightPos = hrp.Position + offset
            local lookCF = CFrame.lookAt(frontRightPos, hrp.Position)

            mobHRP.CFrame = lookCF
            mobHRP.Size = Vector3.new(10, 10, 10)
            mobHRP.Transparency = 0.8
            mobHRP.CanCollide = false
        end
    end)
end)
		
--[[
local currentTargetMob = nil

RunService.RenderStepped:Connect(function()
    if not _G.farmNpc then return end

    pcall(function()
        local targetName = SelectedEnemy ~= "" and SelectedEnemy or SelectedBoss
        if targetName == "" then return end

        local info = enemyQuestStrg[targetName] or enemyQuestSword[targetName] or enemyQuestDef[targetName]
        local quests = workspace:FindFirstChild("Quests")
        local questFolder = info and quests and quests:FindFirstChild(info.questFolder)

        local player = game.Players.LocalPlayer
        local char = player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end

        -- ปิดชน
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end

        if not isQuestGUIVisible() and info and info.position then
            hrp.CFrame = CFrame.new(info.position + Vector3.new(0, 3, 0))
            return
        end

        local Enemys = workspace:FindFirstChild("Enemys")
        if not Enemys then return end

        -- ถ้ามีมอนเดิม
        if currentTargetMob and currentTargetMob:FindFirstChild("Humanoid") and currentTargetMob.Humanoid.Health > 0 then
            local mobHRP = currentTargetMob:FindFirstChild("HumanoidRootPart")
            if mobHRP then
                local behindPos = mobHRP.Position - mobHRP.CFrame.LookVector * 4
                hrp.CFrame = CFrame.new(behindPos, mobHRP.Position)
            end
            return
        end

        -- หาเป้าใหม่
        currentTargetMob = nil
        for _, mob in pairs(Enemys:GetChildren()) do
            if mob:IsA("Model") and mob.Name == targetName and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
                if mob.Humanoid.Health > 0 then
                    currentTargetMob = mob
                    local mobHRP = mob.HumanoidRootPart
                    local behindPos = mobHRP.Position - mobHRP.CFrame.LookVector * 4
                    hrp.CFrame = CFrame.new(behindPos, mobHRP.Position)
                    break
                end
            end
        end
    end)
end)
]]--

page2:Toggle("Auto Flame Leg", false, function(flme)
    _G.autoflameleg = flme
end)

spawn(function()
    while wait(0.1) do
        if _G.autoflameleg then
            pcall(function()
                game:GetService("ReplicatedStorage")
                    :WaitForChild("RemoteEvents")
                    :WaitForChild("Diable")
                    :FireServer()
            end)
        end
    end
end)

page2:Toggle("Auto KenHaki", false, function(kenhki)
    _G.kenhaki = kenhki
end)

spawn(function()
    while wait(0.1) do
        if _G.kenhaki then
            pcall(function()
                game:GetService("ReplicatedStorage")
                    :WaitForChild("RemoteEvents")
                    :WaitForChild("Kenbunshoku")
                    :FireServer()
            end)
        end
    end
end)

page2:Toggle("Auto BusoHaki", false, function(bshki)
    _G.busohaki = bshki
end)

spawn(function()
    while wait(0.1) do
        if _G.busohaki then
            pcall(function()
                game:GetService("ReplicatedStorage")
                    :WaitForChild("RemoteEvents")
                    :WaitForChild("Busoshoku")
                    :FireServer()
            end)
        end
    end
end)
		
local Tab2 = Window:Taps("Players")
local page2 = Tab2:newpage()

page2:Dropdown("Select Join Army:", Cache.DevConfig["ListOfBuy"], function(army)
    selectedArmy = army
end)

page2:Button("Join Army", function()
  if selectedArmy == "Pirate" then  
local args = {
    [1] = "Pirate"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ShopPurchaseRemote"):FireServer(unpack(args))
elseif selectedArmy == "Marine" then
local args = {
    [1] = "Marine"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ShopPurchaseRemote"):FireServer(unpack(args))
elseif	selectedArmy == "" then
local args = {
    [1] = "Rev"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ShopPurchaseRemote"):FireServer(unpack(args))
					
			end
				
wait(0.3)
create:Notifile("", "You has join army now!", 2)
end)
		
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

local viewing = nil
local viewDied = nil
local viewChanged = nil
local fcRunning = false

function StopFreecam()
	if not fcRunning then return end
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
	workspace.Camera.FieldOfView = 70
	fcRunning = false
end

page2:Toggle("Spectate Player", false, function(spac)
    local speaker = game.Players.LocalPlayer
    local cam = workspace.CurrentCamera

    local function stopSpectate()
        StopFreecam()
        viewing = nil
        if viewDied then
            viewDied:Disconnect()
            viewDied = nil
        end
        if viewChanged then
            viewChanged:Disconnect()
            viewChanged = nil
        end
        if speaker.Character then
            cam.CameraSubject = speaker.Character
        end
    end

    if spac then
        if type(selectedPlayer) ~= "string" then
            stopSpectate()
            return
        end

        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character then
            viewing = targetPlayer
            local subject = targetPlayer.Character:FindFirstChild("Humanoid") or targetPlayer.Character:FindFirstChild("HumanoidRootPart")
            if subject then
                cam.CameraSubject = subject
            end

            local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                viewDied = humanoid.Died:Connect(function()
                    stopSpectate()
                end)
            end

            viewChanged = targetPlayer.CharacterAdded:Connect(function(char)
                task.wait(1)
                if viewing == targetPlayer then
                    local newSubject = char:FindFirstChild("Humanoid") or char:FindFirstChild("HumanoidRootPart")
                    if newSubject then
                        cam.CameraSubject = newSubject
                    end
                end
            end)
        else
            stopSpectate()
        end
    else
        stopSpectate()
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

page3:Button("Maple Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(838, 61, -2133)
end)

page3:Button("Market Seller Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2520, 84, -1991)
end)

local Tab4 = Window:Taps("Shop")
local page4 = Tab4:newpage()

page4:Label("┇ Shop Black Market Seller ┇")
page4:Button("Random Devil Fruit", function()
local args = {
    [1] = "Fruit"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ShopPurchaseRemote"):FireServer(unpack(args))

			end)

page4:Button("Random HakiBook", function()
local args = {
    [1] = "Book"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ShopPurchaseRemote"):FireServer(unpack(args))

			end)

page4:Label("┇ Shop Weapon ┇")
page4:Dropdown("Select Weapon:", Cache.DevConfig["ListOfBuy"], function(buy)
    selectedBuy = buy
end)

page4:Button("Buy", function()

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

page5:Button("Infinite yield", function()
create:Notifile("", "Excute infinite yield", 3)
wait(1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Whiteknight-Bank/By-BankZy/refs/heads/main/Diy.lua"))()
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
page5:Button("Button For One Piece Millennium 1", function()
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
    Q = Enum.KeyCode.Q,
    E = Enum.KeyCode.E,
    SPACE = Enum.KeyCode.Space,
}

local buttonSize = UDim2.new(0, 50, 0, 50)
local spacing = 15
local startYRight = 100

local activeButtons = {}

local rightButtons = {"Z", "X", "C", "V"}
for i, key in ipairs(rightButtons) do
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

    activeButtons[key] = false
    button.MouseButton1Click:Connect(function()
        for otherKey, _ in pairs(activeButtons) do
            if otherKey ~= key then
                activeButtons[otherKey] = false
                local otherBtn = gui:FindFirstChild(otherKey .. "Button")
                if otherBtn then
                    otherBtn.BackgroundColor3 = Color3.new(0, 0, 0)
                end
            end
        end
        activeButtons[key] = not activeButtons[key]
        button.BackgroundColor3 = activeButtons[key] and Color3.fromRGB(0, 255, 0) or Color3.new(0, 0, 0)
    end)
end

do
	local key = "SPACE"
	local button = Instance.new("TextButton")
	button.Name = "SpaceButton"
	button.Text = "Space"
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
        local keyCode = keyCodes[key]
        if keyCode then
            VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
            task.wait(0.1)
            VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
        end
    end)
end

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
        for otherKey, _ in pairs(activeButtons) do
            if otherKey ~= key then
                activeButtons[otherKey] = false
                local otherBtn = gui:FindFirstChild(otherKey .. "Button")
                if otherBtn then
                    otherBtn.BackgroundColor3 = Color3.new(0, 0, 0)
                end
            end
        end
        activeButtons[key] = not activeButtons[key]
        button.BackgroundColor3 = activeButtons[key] and Color3.fromRGB(0, 255, 0) or Color3.new(0, 0, 0)
    end)
end

do
    local key = "Q"
    local button = Instance.new("TextButton")
    button.Name = key .. "Button"
    button.Text = key
    button.Size = buttonSize
    button.Position = UDim2.new(1, -180, 1, -170)
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
        for otherKey, _ in pairs(activeButtons) do
            if otherKey ~= key then
                activeButtons[otherKey] = false
                local otherBtn = gui:FindFirstChild(otherKey .. "Button")
                if otherBtn then
                    otherBtn.BackgroundColor3 = Color3.new(0, 0, 0)
                end
            end
        end
        activeButtons[key] = not activeButtons[key]
        button.BackgroundColor3 = activeButtons[key] and Color3.fromRGB(0, 255, 0) or Color3.new(0, 0, 0)
    end)
end

do
    local key = "E"
    local button = Instance.new("TextButton")
    button.Name = key .. "Button"
    button.Text = key
    button.Size = buttonSize
    button.Position = UDim2.new(1, -180, 1, -90) -- ด้านล่างของ Q
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
        for otherKey, _ in pairs(activeButtons) do
            if otherKey ~= key then
                activeButtons[otherKey] = false
                local otherBtn = gui:FindFirstChild(otherKey .. "Button")
                if otherBtn then
                    otherBtn.BackgroundColor3 = Color3.new(0, 0, 0)
                end
            end
        end
        activeButtons[key] = not activeButtons[key]
        button.BackgroundColor3 = activeButtons[key] and Color3.fromRGB(0, 255, 0) or Color3.new(0, 0, 0)
    end)
				end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        for key, isActive in pairs(activeButtons) do
            if isActive then
                local keyCode = keyCodes[key]
                if keyCode then
                    VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
                    task.wait(0.1)
                    VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
                end
                activeButtons[key] = false
                local btn = gui:FindFirstChild(key .. "Button")
                if btn then
                    btn.BackgroundColor3 = Color3.new(0, 0, 0)
                end
                break
            end
        end
    end
end)

do
    local key = "J"
    local button = Instance.new("TextButton")
    button.Name = key .. "Button"
    button.Text = key
    button.Size = buttonSize
    button.Position = UDim2.new(0, 70, 1, -60)
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

    button.MouseButton1Click:Connect(function()
        local keyCode = Enum.KeyCode.J
        VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
        task.wait(0.1)
        VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
    end)
end

do
    local key = "K"
    local button = Instance.new("TextButton")
    button.Name = key .. "Button"
    button.Text = key
    button.Size = buttonSize
    button.Position = UDim2.new(0, 130, 1, -60)
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

    button.MouseButton1Click:Connect(function()
        local keyCode = Enum.KeyCode.K
        VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
        task.wait(0.1)
        VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
    end)
end

do
    local key = "L"
    local button = Instance.new("TextButton")
    button.Name = key .. "Button"
    button.Text = key
    button.Size = buttonSize
    button.Position = UDim2.new(0, 190, 1, -60)
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

    button.MouseButton1Click:Connect(function()
        local keyCode = Enum.KeyCode.L
        VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
        task.wait(0.1)
        VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
    end)
end

local Gui = Instance.new("ScreenGui")
Gui.Name = "DropToolGui"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Name = "DropButton"
button.Parent = Gui
button.Size = UDim2.new(0, 60, 0, 60)
button.Position = UDim2.new(1, -70, 0, 10) -- ✅ มุมขวาบนสุด
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BackgroundTransparency = 0.5
button.BorderSizePixel = 2
button.BorderColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "Drop"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 25
button.AutoButtonColor = false
button.ClipsDescendants = true

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(1, 0)
uiCorner.Parent = button

button.MouseEnter:Connect(function()
    button.BackgroundTransparency = 0.2
end)

button.MouseLeave:Connect(function()
    button.BackgroundTransparency = 0.5
end)

button.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char then
        local tool = char:FindFirstChildOfClass("Tool")
        if tool then
            tool.Parent = game.Workspace
        end
    end
end)

create:Notifile("", "Button For Mobile Ver.6", 3)
			end)

wait(1)local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local oldNamecall
local oldIndex
local oldKick

if hookfunction and LocalPlayer and LocalPlayer.Kick then
    oldKick = hookfunction(LocalPlayer.Kick, function(...) 
        return 
    end)
end

if hookmetamethod then
    oldIndex = hookmetamethod(game, "__index", function(self, key)
        if self == LocalPlayer and tostring(key):lower() == "kick" then
            return function() return end
        end
        return oldIndex(self, key)
    end)

    oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod and getnamecallmethod():lower()
        if self == LocalPlayer and method == "kick" then
            return
        end
        return oldNamecall(self, ...)
    end)
end

create:Notifile("", "Don't worry, Turn Anti Cheat Now!", 6)
wait(2)
local remotewater = replicatedStorage:FindFirstChild("RemoteEvents") and replicatedStorage.RemoteEvents:FindFirstChild("WaterDamage")
if remotewater then 
remotewater:Destroy() 
end
create:Notifile("", "Don't worry, Turn Anti Water Now!", 6)
		
  end)
