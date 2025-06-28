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

local plr = game:GetService("Players").LocalPlayer
local rs = game:GetService("ReplicatedStorage")
local sellPos = CFrame.new(90.08035, 0.98381, 3.02662, 6e-05, 1e-06, 1, -0.0349, 0.999, 1e-06, -0.999, -0.0349, 6e-05)
--[[
local latestBuffer = nil

local namecall
namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if self == game.ReplicatedStorage.ByteNetReliable and method == "FireServer" then
        local args = {...}
        latestBuffer = args[1]
        print("✅ Hooked buffer:", latestBuffer)
    end
    return namecall(self, ...)
end)
]]
local lastArgs = nil

-- Hook FireServer เพื่อดัก buffer และ args ที่ถูกต้อง
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    if self == game.ReplicatedStorage:WaitForChild("ByteNetReliable") and method == "FireServer" then
        -- เงื่อนไข: เป็นการเก็บผลไม้เท่านั้น
        if args[2] and typeof(args[2]) == "table" and args[2][1] and args[2][1].Name == "Strawberry" then
            lastArgs = args -- เก็บ args[1] (buffer) และ args[2] (object)
            print("✅ Captured Strawberry args:", args[1], args[2][1])
        end
    end
    return oldNamecall(self, ...)
end)
		
local Tab1 = Window:Taps("Auto")
local page1 = Tab1:newpage()

page1:Label("┇ Function Fruit ┇")

page1:Toggle("Auto Fruit", false, function(frut)
    _G.autofruit = frut
end)

spawn(function()
    while task.wait(0.2) do
        pcall(function()
            if _G.autofruit and lastArgs then
                game:GetService("ReplicatedStorage").ByteNetReliable:FireServer(unpack(lastArgs))
                print("🍈 Re-fired for Coconut")
            end
        end)
    end
end)

page1:Toggle("Sell Inventory", false, function(state)
    if state then
        local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local orig = hrp.CFrame
            hrp.CFrame = sellPos
            task.wait(0.1)
            rs.GameEvents.Sell_Inventory:FireServer()
            task.wait(0.1)
            hrp.CFrame = orig
        end
    end
end)

page1:Toggle("Sell Item In Hand", false, function(state)
    if state then
        local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local orig = hrp.CFrame
            hrp.CFrame = sellPos
            task.wait(0.1)
            rs.GameEvents.Sell_Item:FireServer()
            task.wait(0.1)
            hrp.CFrame = orig
        end
    end
end)


end)
