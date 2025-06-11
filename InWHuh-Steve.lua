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
local Window = create:Win("InW Hub : For Map: Steve's One Piece")

create:Notifile("", "Welcome " .. game.Players.LocalPlayer.Name .. " to InW Hub eiei", 5)

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfGun"] = {"Flintlock | Price: 5000", "Rifle | Price: 5000"};
Cache.DevConfig["ListOfMelee"] = {"BlackLeg | Price: 10000", "Ryusoken | Price: 75000"};
Cache.DevConfig["ListOfSword"] = {"Wooden Sword| Prices: 100", "Katana | Price: 5000", "Cutlass | Price: 7500", "Pipe | Price: 30000", "Jitte | Price: 65000", "Nonosama Bo | Price: 150000", "Bisento | Price: 3000000", "Gryphon | Price: 7500000"};
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
                --if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                --end
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

local Tab1 = Window:Taps("Autos")
local page1 = Tab1:newpage()

page1:Label("┇ Function Spawn ┇")

_G.savedCFrame = nil

function SaveCFrame()
    local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then
        _G.savedCFrame = hrp.CFrame
    end
end

page1:Button("Save Point", function()
    local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then
        _G.savedCFrame = hrp.CFrame
        print("✅ Saved CFrame:", _G.savedCFrame)
        create:Notifile("Saved Point!", "Your position has been saved.", 3)
    end
end)
		
page1:Toggle("Auto Spawn", false, function(aspw)
        _G.respawn = aspw
end)

spawn(function()--autorespawn
while wait() do
if _G.respawn then
pcall(function()
if game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == true then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
v.Function()
end
end
end)
end
end
end)
		
page1:Toggle("Auto Spawn With Save Point", false, function(rspw)
        _G.autorespawn = rspw
end)

function TeleportToSavedCFrame()
    local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp and _G.savedCFrame then
        print("✅ Teleporting to saved CFrame:", _G.savedCFrame)
        hrp.CFrame = _G.savedCFrame + Vector3.new(0, 5, 0)
    end
end

spawn(function()
    while wait() do
        if _G.autorespawn then
            pcall(function()
                local playerGui = game:GetService("Players").LocalPlayer.PlayerGui
                if playerGui.Load and playerGui.Load.Frame.Visible == true then
                    for i,v in pairs(getconnections(playerGui.Load.Frame.Load.MouseButton1Click)) do
                        v.Function()
                    end
                    -- รอ Character + Health > 0
                    repeat wait() until game.Players.LocalPlayer.Character 
                        and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
                        and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0
                    
                    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    
                    -- รอจน Y < 220
                    repeat
                        wait(0.1)
                        hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    until hrp and hrp.Position.Y < 220
                    
                    TeleportToSavedCFrame()
                end
            end)
        end
    end
end)
		
page1:Label("┇ Function Autos ┇")
page1:Toggle("Auto Tp Chest", false, function(chst)
        AutoMission = chst
end)
		
local Tab2 = Window:Taps("Farm")
local page2 = Tab2:newpage()

--[[ -- Auto Death page --
page2:Label("┇ Function Enemies ┇")
page2:Toggle("Auto Death Mob (100%)", false, function(dthh)
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
]]
		
page2:Label("┇ Function Farm ┇")
page2:Dropdown("Select Weapon:", Wapon, function(wapn)
    Wapon = wapn
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

page2:Label("┇ Function Farm ┇")
page2:Dropdown("Select Mobs:", {"Thief(Lvl:5)", "Buggy pirate(Lvl:30)", "Attacking Noob(Lvl:100)", "Marine(Lvl:200)", ""}, function(pcns)
    Npcs = pcns
end)

page2:Toggle("Auto Farm", false, function(befrm)
    _G.behindFarm = befrm
end)

spawn(function()
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

page2:Toggle("Auto Buso Haki", false, function(hki)
    AutoHaki = hki
end)

page2:Toggle("Auto Ken Haki", false, function(gthi)
    _G.genhaki = gthi
end)
		
local Tab3 = Window:Taps("Players")
local page3 = Tab3:newpage()

page3:Label("┇ Player ┇")
page3:Dropdown("Select Player:", getPlayerNames(), function(name)
    selectedPlayer = name
end)

page3:Button("Click to Tp", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(selectedPlayer).Character.HumanoidRootPart.CFrame
end)

page3:Toggle("View", false, function(state)
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

page3:Toggle("Auto Bring Player( All )", false, function(plal)
	_G.BringAllPlayer = plal
end)

spawn(function()
    while wait() do
        if _G.BringAllPlayer then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-10)
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

local Tab4 = Window:Taps("Island")
local page4 = Tab4:newpage()

page4:Label("┇ ISLANDS ┇")
page4:Dropdown("Select Islands", {"Thief Island", "Buggy Island", "Noob Island", "Marine Island", "Fishman Island", "Luffy Island", "Coconut Island", "BlackLeg Island", "Sword Island", "Fruit Island"}, function(t)
    getgenv().tpisland = t
end)

page4:Button("Click to Tp" , function()
    if getgenv().tpisland == "Thief Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5, 2, 620)
      elseif getgenv().tpisland == "Buggy Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4242, 3, 1329)
      elseif getgenv().tpisland == "Noob Island"  then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(3006, 2, 1610)
      elseif getgenv().tpisland == "Marine Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(3329, 31, 6152)
      elseif getgenv().tpisland == "Fishman Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5226, 2, -4555)
      elseif getgenv().tpisland == "Luffy Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2368, 18, -3923)
      elseif getgenv().tpisland == "Coconut Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4791, -1, -2159)
      elseif getgenv().tpisland == "BlackLeg Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1324, 37, 5079)
      elseif getgenv().tpisland == "Sword Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4609, 58, 4049)
      elseif getgenv().tpisland == "Fruit Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(2205, 32, -3351)
                end
end)

page4:Label("┇ SAFE ZONE ┇")
page4:Dropdown("Select SafeZone", {"Safe Zone (Sky)"}, function(s)
    getgenv().tpsafezone = s
end)

page4:Button("Click to Tp" , function()
        if getgenv().tpsafezone == "Safe Zone (Sky)" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
        end
    end)

local Tab5 = Window:Taps("Shop")
local page5 = Tab5:newpage()

page5:Label("┇ Shop Item ┇")
page5:Dropdown("Select Sword:", Cache.DevConfig["ListOfSword"], function(knrd)
    selectedSwords = knrd
end)

page5:Button("Click to Buy" , function()
        print("Buy")
    end)

page5:Dropdown("Select Melee:", Cache.DevConfig["ListOfMelee"], function(knrd)
    selectedMekees = knrd
end)

page5:Button("Click to Buy" , function()
        print("Buy")
    end)

page5:Dropdown("Select Gun:", Cache.DevConfig["ListOfGun"], function(knrd)
    selectedSinpers = knrd
end)

page5:Button("Click to Buy" , function()
        print("Buy")
			end)

page5:Label("┇ Shop Random Fruit ┇")


local Tab6 = Window:Taps("Misc")
local page6 = Tab6:newpage()

page6:Label("┇ Function Sever ┇")
page6:Button("Rejoin Server", function()
create:Notifile("", "Start Rejoin " .. game.Players.LocalPlayer.Name .. " Pls Wait", 3)
wait(3)
		   game.Players.LocalPlayer:Kick()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

page6:Button("Hop Server", function()
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
		
page6:Label("┇ Function Anti ┇")
page6:Button("Anti Lag", function()
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

page6:Toggle("Anti AFK", false, function(state)

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

page6:Toggle("Anti Teleport Death", false, function(tpp)
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

