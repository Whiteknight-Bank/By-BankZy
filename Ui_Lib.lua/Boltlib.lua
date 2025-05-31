--// UI LIBRARY เริ่มต้น 

local TweenService = game:GetService("TweenService") 
local Players = game:GetService("Players") 
local player = Players.LocalPlayer 
local PlayerGui = player:WaitForChild("PlayerGui")

local UiLibrary = {}

function UiLibrary:Window(titleText) local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "redui" ScreenGui.ResetOnSpawn = false ScreenGui.IgnoreGuiInset = true ScreenGui.Parent = PlayerGui

local MainSceen = Instance.new("Frame")
MainSceen.Name = "MainSceen"
MainSceen.Size = UDim2.new(0, 550, 0, 380)
MainSceen.Position = UDim2.new(0.5, -275, 0.5, -190)
MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
MainSceen.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainSceen.BackgroundTransparency = 0.1
MainSceen.BorderSizePixel = 0
MainSceen.Parent = ScreenGui
Instance.new("UICorner", MainSceen).CornerRadius = UDim.new(0, 12)

-- TopBar
local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, -20, 0, 40)
TopBar.Position = UDim2.new(0, 10, 0, 0)
TopBar.BackgroundTransparency = 1
TopBar.Parent = MainSceen

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -100, 1, 0)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = titleText or "Bank Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TopBar

-- Minimize Button
local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 30, 0, 30)
MinimizeBtn.Position = UDim2.new(1, -70, 0.5, -15)
MinimizeBtn.Text = "-"
MinimizeBtn.TextSize = 18
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MinimizeBtn.Parent = TopBar
Instance.new("UICorner", MinimizeBtn).CornerRadius = UDim.new(0, 8)

-- Close Button
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0.5, -15)
CloseBtn.Text = "X"
CloseBtn.TextSize = 18
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
CloseBtn.Parent = TopBar
Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 8)

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local isMinimized = false
local fullSize = MainSceen.Size
local collapsedSize = UDim2.new(0, 200, 0, 50)

MinimizeBtn.MouseButton1Click:Connect(function()
    if not isMinimized then
        for _, v in pairs(MainSceen:GetChildren()) do
            if v ~= TopBar then v.Visible = false end
        end
        TweenService:Create(MainSceen, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = collapsedSize
        }):Play()
    else
        TweenService:Create(MainSceen, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = fullSize
        }):Play()
        task.delay(0.3, function()
            for _, v in pairs(MainSceen:GetChildren()) do
                if v ~= TopBar then v.Visible = true end
            end
        end)
    end
    isMinimized = not isMinimized
end)

local TabContainer = Instance.new("Frame")
TabContainer.Size = UDim2.new(1, -20, 0, 40)
TabContainer.Position = UDim2.new(0, 10, 0, 45)
TabContainer.BackgroundTransparency = 1
TabContainer.Name = "TabContainer"
TabContainer.Parent = MainSceen

local ContentHolder = Instance.new("Frame")
ContentHolder.Size = UDim2.new(1, -20, 1, -100)
ContentHolder.Position = UDim2.new(0, 10, 0, 90)
ContentHolder.BackgroundTransparency = 1
ContentHolder.Name = "ContentHolder"
ContentHolder.Parent = MainSceen

function UiLibrary:Taps(tabname)
    local Page = Instance.new("ScrollingFrame")
    Page.Size = UDim2.new(1, 0, 1, 0)
    Page.CanvasSize = UDim2.new(0, 0, 0, 0)
    Page.ScrollBarThickness = 4
    Page.BackgroundTransparency = 1
    Page.Visible = false
    Page.Parent = ContentHolder

    local TabBtn = Instance.new("TextButton")
    TabBtn.Size = UDim2.new(0, 100, 0, 30)
    TabBtn.Position = UDim2.new(0, #TabContainer:GetChildren() * 105, 0, 5)
    TabBtn.Text = tabname
    TabBtn.Font = Enum.Font.GothamBold
    TabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TabBtn.Parent = TabContainer
    Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 8)

    TabBtn.MouseButton1Click:Connect(function()
        for _, page in pairs(ContentHolder:GetChildren()) do
            page.Visible = false
        end
        Page.Visible = true
    end)

    function Page:Toggle(text, callback)
        local Toggle = Instance.new("TextButton")
        Toggle.Size = UDim2.new(0.9, 0, 0, 30)
        Toggle.Position = UDim2.new(0.05, 0, 0, Page.UIListLayout.AbsoluteContentSize.Y)
        Toggle.Text = "[ OFF ]  " .. text
        Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Toggle.Font = Enum.Font.Gotham
        Toggle.TextSize = 14
        Toggle.Parent = Page
        Instance.new("UICorner", Toggle).CornerRadius = UDim.new(0, 6)

        local state = false
        Toggle.MouseButton1Click:Connect(function()
            state = not state
            Toggle.Text = state and "[ ON ]  " .. text or "[ OFF ]  " .. text
            if callback then callback(state) end
        end)
    end

    function Page:Button(text, callback)
        local Btn = Instance.new("TextButton")
        Btn.Size = UDim2.new(0.9, 0, 0, 30)
        Btn.Position = UDim2.new(0.05, 0, 0, Page.UIListLayout.AbsoluteContentSize.Y)
        Btn.Text = text
        Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        Btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        Btn.Font = Enum.Font.Gotham
        Btn.TextSize = 14
        Btn.Parent = Page
        Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)

        Btn.MouseButton1Click:Connect(function()
            if callback then callback() end
        end)
    end

    local layout = Instance.new("UIListLayout")
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 6)
    layout.Parent = Page

    Page.Visible = #ContentHolder:GetChildren() == 1

    return Page
end

return UiLibrary

end

return UiLibrary

