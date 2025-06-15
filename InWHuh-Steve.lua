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

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

spawn(function() -- autofarm velocity
    while wait(0) do
        pcall(function()
            if AutoFish or AutoPack or _G.behindfarm or _G.rumblefarm or _G.killbomb then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            elseif  AutoFish == false or AutoPack == false or _G.behindfarm == false or _G.rumblefarm == false or _G.killbomb == false then
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
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

page1:Label("┇ Safe Zone ┇")
page1:Button("Safe Zone Part" , function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
    end)

page1:Toggle("Auto Teleport At Safe Zone [ Not Working ]", false, function(atre)
    _G.autorespasn = atre
end)

page1:Label("┇ Function Farm ┇")
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
for _, mob in pairs(workspace.Npcs:GetChildren()) do
if mob:FindFirstChild("HumanoidRootPart") and string.find(mob.Name, SelectedMob) then
local root = mob.HumanoidRootPart
root.CanCollide = false
root.Size = Vector3.new(10, 10, 10)
root.Anchored = true
root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -6)

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
		
page1:Toggle("Auto Buso Haki", false, function(hki)
    _G.autohakibuso = hki
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.autobuso then
                local player = game.Players.LocalPlayer
                local char = workspace:FindFirstChild(player.Name)
                
                if char then
                    local found = false
                    for _, v in ipairs(char:GetDescendants()) do
                        if v.Name == "Buso" then
                            found = true
                            break
                        end
                    end

                    if not found then
                        -- กด T เพื่อเปิดบูโซฮาคิ
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.T, false, game)
                        task.wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.T, false, game)
                    end
                end
            end
        end)
    end
end)

page1:Toggle("Auto Ken Haki", false, function(gthi)
    _G.autokenhaki = gthi
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.autokenhaki then
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.R, true, game)
                end
            end
        end)
    end
end)

local Tab2 = Window:Taps("Players")
local page2 = Tab2:newpage()

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

page2:Toggle("Auto Bring Player( All )", false, function(plal)
	_G.BringAllPlayer = plal
end)

spawn(function()
    while wait() do
        if _G.BringAllPlayer then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-6)
                        if v.Character.Humanoid.Health == 0 then
                        	v.Character.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
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

page4:Dropdown("Select Sword:", Cache.DevConfig["ListOfSword"], function(knrd)
    selectedSword = knrd
end)

page4:Button("Buy Sword", function()
    _G.buy = true
end)

page4:Dropdown("Select Melee:", Cache.DevConfig["ListOfMelee"], function(knrd)
    selectedMelee = knrd
end)

page4:Button("Buy Melee", function()
    _G.buy = true
end)

page4:Dropdown("Select Gun:", Cache.DevConfig["ListOfGun"], function(knrd)
    selectedGun = knrd
end)

page4:Button("Buy Gun", function()
    _G.buy = true
end)

spawn(function()
    while wait(0.1) do
        if _G.buy then
            local function TryBuy(npcName)
                if not npcName then return false end
                for _, obj in ipairs(workspace:GetDescendants()) do
                    if obj:IsA("Model") and obj.Name == npcName then
                        local head = obj:FindFirstChild("Head")
                        if head and head:FindFirstChild("ClickDetector") then
                            fireclickdetector(head.ClickDetector)
                            print("✅ ซื้อ NPC: " .. npcName)
                            return true
                        end
                    end
                end
                warn("❌ ไม่พบ NPC หรือ ClickDetector สำหรับ: " .. tostring(npcName))
                return false
            end

            if selectedSword then TryBuy(selectedSword) end
            if selectedMelee then TryBuy(selectedMelee) end
            if selectedGun then TryBuy(selectedGun) end

            _G.buy = false
        end
    end
end)

page4:Label("┇ Shop [ Random Fruit ] ┇")
page4:Button("Reset Devil Fruit [ Not Working ]", function()
create:Notifile("", "Your Devil Fruit is Reset Now", 3)
end)

page4:Toggle("Auto Random Devil Fruit [ Not Working ]", false, function(rdom)
_G.fruitRanfom = rdom
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
		
page5:Label("┇ Function Anti ┇")
page5:Button("Anti Lag", function()
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

page5:Toggle("Anti AFK", false, function(state)

    if state then
	create:Notifile("", "Protect Kick AFK You Can AFK Now :)", 3)
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

page5:Toggle("Anti Teleport Death", true, function(tpp)
_G.antiTp = tpp
end)

local lp = game:GetService("Players").LocalPlayer

spawn(function()
    while wait() do
        if _G.antiTp then
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
    end
end)

	end)

