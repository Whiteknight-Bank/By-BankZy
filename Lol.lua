local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/keseerattanakorn/Bankzahh/refs/heads/main/libold.lua"))()
local Window = lib:Win("ReaperX Hub | Steve's One Piece ")

lib:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to ReaperX Hub", 5)

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
		
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local lp = game:GetService("Players").LocalPlayer
local plr = game.Players.LocalPlayer

local function leftClick()
    local vim = game:GetService("VirtualUser")
                vim:CaptureController()
                vim:Button1Down(Vector2.new(1280, 672))
		end

spawn(function()
    while true do
        task.wait(4)
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

local tab1 = lib.tabs:Taps("Farm")

tab1:Label("┇ Safe Zone ┇")
tab1:Button("Safe Zone Part", function()
    local char = lp.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = workspace["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
    end
end)
		
Tab1:Toggle("Safe Zone Warp", false, function(val)
    _G.safezonewarp = val
end)

spawn(function()
    while task.wait(2) do
        pcall(function()
            if _G.safezonewarp then
                local char = lp.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    char.HumanoidRootPart.CFrame = workspace["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
                end
            end
        end)
    end
end)

tab1:Label("┇ Function Item ┇")
local Wapon = {}
local selectedWeapon = nil

-- โหลดอาวุธจาก Backpack ทันที
for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Wapon, v.Name)
    end
end

-- สร้าง Dropdown แค่ครั้งเดียว
tab1:Dropdown("Select Weapon:", Wapon, function(wapn)
    selectedWeapon = wapn
end)

-- ปุ่มรีเฟรช ล้างตาราง Wapon แล้วใส่ค่าใหม่
tab1:Button("Refresh Weapon", function()
    table.clear(Wapon)
    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Wapon, v.Name)
        end
    end
				
wait(0.3)
create:Notifile("", "Dropdown Refresh!", 2)
end)
		
tab1:Toggle("Auto Click", false, function(lcik)
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

tab1:Toggle("Auto Equip", false, function(aeq)
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

tab1:Label("┇ Function Farm ┇")

local SelectedMob = ""

tab1:Dropdown("Select Mobs:", {
    "All", "Thief(Lvl:5)", "Buggy pirate(Lvl:30)",
    "Attacking Noob(Lvl:100)", "Marine(Lvl:200)",
    "Luffy(Lvl:1000)", "Farm Sword", "Farm Gun"
}, function(pcns) 
    SelectedMob = pcns:match("^(.-)%(") or pcns 
end)

local canPullMob = true
		
tab1:Toggle("Auto Farm", false, function(state)
    _G.farmNpc = state

    if state then
        spawn(function()
            while _G.farmNpc do
                pcall(function()
                    local player = game.Players.LocalPlayer
                    local char = player.Character
                    local hum = char and char:FindFirstChild("Humanoid")
                    if not char or not hum then return end

                    -- ถ้าตายให้หยุดชั่วคราว
                    if hum.Health <= 0 then
                        if not _G.forceHold then
                            _G.forceHold = true
                            canPullMob = false
                            task.spawn(function()
                                wait(4)
                                _G.forceHold = false
                                canPullMob = true
                            end)
                        end
                        return
                    end

                    -- เช็ค offset ตามอาวุธ
                    local offset = -10
                    local tool = char:FindFirstChildOfClass("Tool")
                    if tool then
                        local name = tool.Name
                        for _, v in pairs(Cache.DevConfig["ListOfSword"]) do
                            if string.find(name, v) then offset = -6 break end
                        end
                        for _, v in pairs(Cache.DevConfig["ListOfMelee"]) do
                            if string.find(name, v) then offset = -5 break end
                        end
                    end

                    -- หา target
                    local targetNames = {}
                    if SelectedMob == "All" then
                        for _, v in pairs(npcList) do
                            if type(v) == "table" then
                                for _, name in ipairs(v) do table.insert(targetNames, name) end
                            else
                                table.insert(targetNames, v)
                            end
                        end
                    else
                        local mapped = npcList[SelectedMob]
                        if mapped then
                            if type(mapped) == "table" then
                                for _, name in ipairs(mapped) do table.insert(targetNames, name) end
                            else
                                table.insert(targetNames, mapped)
                            end
                        end
                    end

                    -- ClickDetector
                    for _, obj in ipairs(workspace:GetDescendants()) do
                        if obj:IsA("Model") and table.find(targetNames, obj.Name) then
                            local head = obj:FindFirstChild("Head")
                            if head and head:FindFirstChild("ClickDetector") then
                                fireclickdetector(head.ClickDetector)
                            end
                        end
                    end

                    -- ดึง mob
                    if canPullMob then
                        for _, mob in ipairs(workspace.Npcs:GetChildren()) do
                            if not mob:FindFirstChild("HumanoidRootPart") or not mob:FindFirstChild("Humanoid") then continue end
                            local isTarget = false
                            if SelectedMob == "All" then
                                isTarget = true
                            elseif mob.Name == "Attacking Noob(Lvl:100)" and (SelectedMob == "Farm Sword" or SelectedMob == "Farm Gun") then
                                isTarget = true
                            elseif mob.Name:find(SelectedMob) then
                                isTarget = true
                            end

                            if isTarget then
                                local root = mob.HumanoidRootPart
                                root.CanCollide = false
                                root.Anchored = true
                                root.Size = Vector3.new(10, 10, 10)
                                root.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, offset)

                                if mob.Humanoid.Health <= 0 then
                                    root.Size = Vector3.new(0, 0, 0)
                                    mob:Destroy()
                                end
                            end
                        end
                    end

                    -- กรณี Farm Gun
                    if SelectedMob == "Farm Gun" then
                        local hrp = char:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            local gunHit = nil
                            for _, mob in ipairs(workspace.Npcs:GetChildren()) do
                                if mob.Name == "Attacking Noob(Lvl:100)" then
                                    local torso = mob:FindFirstChild("Torso")
                                    if torso and torso:FindFirstChild("GunHitBox") then
                                        gunHit = torso.GunHitBox
                                        break
                                    end
                                end
                            end

                            if gunHit then
                                for _, mob in pairs(workspace.Npcs:GetChildren()) do
                                    if mob.Name == "Attacking Noob(Lvl:100)" then
                                        local torso = mob:FindFirstChild("Torso")
                                        if torso then
                                            gunHit.Parent = torso
                                            gunHit.CFrame = torso.CFrame + Vector3.new(0, 0.5, 0)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
                task.wait() -- ป้องกัน loop หน่วงเครื่อง
            end
        end)
    end
end)

tab1:Toggle("Auto Quest", false, function(qust)
	_G.autoquest = qust
end)
		
local requiredKills = {
    ["Thief!"] = 20,
    ["Let pay back them!"] = 30,
    ["Annoying noobs...."] = 10,
    ["Marines!"] = 30,
    ["The Strongest..."] = 1,
    ["Sword Master"] = 50,
    ["The gunner!"] = 15
}

local lastEquipKills = {}

spawn(function()
    while wait(0.03) do
        pcall(function()
            if not _G.autoquest then return end

            local character = game:GetService("Players").LocalPlayer.Character
            local backpack = game:GetService("Players").LocalPlayer:FindFirstChild("Backpack")
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
            if not character or not backpack or not humanoid then return end

            for toolName, required in pairs(requiredKills) do
                local tool = backpack:FindFirstChild(toolName) or character:FindFirstChild(toolName)
                if tool then
                    local kills = tool:FindFirstChild("Kills")
                    if kills and kills:IsA("IntValue") then
                        local currentKills = kills.Value
                        local lastKills = lastEquipKills[toolName] or -1

                        if (currentKills == required and lastKills ~= currentKills)
                        or (currentKills > required and currentKills > lastKills) then
                            _G.forceHold = true
                            humanoid:EquipTool(tool)
                            wait(1)
                            _G.forceHold = false
                            lastEquipKills[toolName] = currentKills
                        end
                    end
                end
            end
        end)
    end
end)
		
tab1:Toggle("Auto Haki Buso", false, function(hki)
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

tab1:Toggle("Auto Haki Ken", false, function(hkxn)
    _G.autoKen = hkxn

    if hkxn then
        spawn(function()
            while _G.autoKen do
                pcall(function()
                    local player = game.Players.LocalPlayer
                    local char = player.Character or workspace:FindFirstChild(player.Name)
                    if not char then return end

                    local function hasKenDodge()
                        for _, obj in ipairs(char:GetDescendants()) do
                            if obj.Name == "KenDodge" then
                                return true
                            end
                        end
                        return false
                    end

                    if not hasKenDodge() then
                        local vim = game:GetService("VirtualInputManager")
                        vim:SendKeyEvent(true, Enum.KeyCode.R, false, game)
                        task.wait(0.1)
                        vim:SendKeyEvent(false, Enum.KeyCode.R, false, game)

                        repeat
                            task.wait(0.2)
                        until hasKenDodge() or not _G.autoKen
			else
                        repeat
                            task.wait(0.2)
                        until not hasKenDodge() or not _G.autoKen
                    end
                end)
                task.wait(0.2)
            end
        end)
    end
end)
		
local tab2 = lib.tabs:Taps("Players")

tab2:Label("┇ Player ┇")
local playerNames = {}

for _, player in ipairs(game.Players:GetPlayers()) do
    table.insert(playerNames, player.Name)
end

tab2:Dropdown("Select Player:", playerNames, function(name)
    selectedPlayer = name
end)

tab2:Button("Refresh Player", function()
    table.clear(playerNames)
    for _, player in ipairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end

wait(0.3)
create:Notifile("", "Dropdown Refresh!", 2)
end)

tab2:Button("Click to Tp", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(selectedPlayer).Character.HumanoidRootPart.CFrame
end)

tab2:Toggle("View", false, function(state)
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

tab2:Toggle("Auto Bring Player [ Select Player ]", false, function(pla)
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

                    if targetRoot.Size.Magnitude < 10 then -- ป้องกันไม่ให้ขยายซ้ำ
                        targetRoot.Size = Vector3.new(25, 25, 25)
                    end

                    if targetChar:FindFirstChild("Humanoid") and targetChar.Humanoid.Health <= 0 then
                        targetRoot.Anchored = false
                        targetRoot.Size = Vector3.new(2, 2, 1)
                    end
                end
            end
        end)
    end
end)
		
tab2:Toggle("Auto Bring Player [ All ]", false, function(plal)
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

Tab3:Label("┇ Island Teleport ┇")
Tab3:Button("Thief Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5, 2, 620)
end)

Tab3:Button("Buggy Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4242, 3, 1329)
end)

Tab3:Button("Noob Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(3006, 2, 1610)
end)

Tab3:Button("Marine Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(3329, 31, 6152)
end)

Tab3:Button("Fishmen Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5226, 2, -4555)
end)

Tab3:Button("Luffy Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2368, 18, -3923)
end)

Tab3:Button("Coconut Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4791, -1, -2159)
end)

Tab3:Button("BlackLeg Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1324, 37, 5079)
end)

Tab3:Button("Ussop Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4609, 58, 4049)
end)

Tab3:Button("Fruit Seller Island" , function()
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(2205, 32, -3351)
end)

local Tab4 = lib.tabs:Taps("Shop")

Tab4:Label("┇ Shop [ Weapon ] ┇")
Tab4:Dropdown("Select Sword:", Cache.DevConfig["ListOfSword"], function(sword)
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

Tab4:Dropdown("Select Melee:", Cache.DevConfig["ListOfMelee"], function(knrd)
    selectedMelee = knrd
end)

Tab4:Button("Buy Melee", function()
    if selectedMelee then  
        for i = 1, 2 do 
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

Tab4:Dropdown("Select Gun:", Cache.DevConfig["ListOfGun"], function(knrd)
    selectedGun = knrd
end)

Tab4:Button("Buy Gun", function()
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

local Tab0 = lib.tabs:Taps("Fruit")

Tab0:Label("┇ Fruit ┇")
Tab0:Button("Reset Devil Fruit", function()
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

Tab0:Button("Random Fruit", function()
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

Tab0:Toggle("Auto Bring Fruit", false, function(brdf)
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
		
local Tab5 = lib.tabs:Taps("Misc")

Tab5:Label("┇ Function Sever ┇")
Tab5:Button("Rejoin Server", function()
create:Notifile("", "Start Rejoin " .. game.Players.LocalPlayer.Name .. " Pls Wait", 3)
wait(3)
		   game.Players.LocalPlayer:Kick()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

Tab5:Button("Hop Server", function()
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
		
Tab5:Label("┇ Another Functions ┇")
Tab5:Button("Boost FPS", function()
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

Tab5:Toggle("Walk On Sea", false, function(walk)
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

Tab5:Toggle("Teleport Chest", false, function(cpst)
    _G.tpchest = cpst
end)

local lastFound = true
local originalPos = nil
local chestVisited = {}

spawn(function()
    while task.wait(1.5) do
        if _G.tpchest then
            pcall(function()

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

local Tab6 = lib.tabs:Taps("Credit")

page6:Label("| Made by ReaperX from Thai prople | ทำโดย ReaperX จากคนไทย อิอิ|")

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

create:Notifile("", "Don't worry, Anti Cheat Now!", 3)

