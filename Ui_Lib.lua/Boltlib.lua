local TweenService = game:GetService("TweenService")

-- รีโหลด UI หากมีอยู่ก่อน
pcall(function()
    game.CoreGui:FindFirstChild("redui"):Destroy()
end)

-- UI Library เริ่มต้น
local UiLibrary = {}
UiLibrary.__index = UiLibrary

function UiLibrary:Window(titleText)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "redui"
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game:GetService("CoreGui")

    local MainSceen = Instance.new("Frame")
    MainSceen.Name = "MainSceen"
    MainSceen.Size = UDim2.new(0, 550, 0, 400)
    MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
    MainSceen.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    MainSceen.BackgroundTransparency = 0.1
    MainSceen.BorderSizePixel = 0
    MainSceen.Active = true
    MainSceen.Draggable = true
    MainSceen.Parent = ScreenGui
    Instance.new("UICorner", MainSceen).CornerRadius = UDim.new(0, 16)

    -- Title
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -20, 0, 40)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Text = titleText or "UI Library"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 20
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = MainSceen

    -- Tab Button Container
    local TabContainer = Instance.new("Frame")
    TabContainer.Size = UDim2.new(1, -20, 0, 40)
    TabContainer.Position = UDim2.new(0, 10, 0, 40)
    TabContainer.BackgroundTransparency = 1
    TabContainer.Parent = MainSceen

    local TabLayout = Instance.new("UIListLayout", TabContainer)
    TabLayout.FillDirection = Enum.FillDirection.Horizontal
    TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabLayout.Padding = UDim.new(0, 8)

    -- Content Container
    local ContentHolder = Instance.new("Frame")
    ContentHolder.Name = "ContentHolder"
    ContentHolder.Size = UDim2.new(1, -20, 1, -100)
    ContentHolder.Position = UDim2.new(0, 10, 0, 90)
    ContentHolder.BackgroundTransparency = 1
    ContentHolder.ClipsDescendants = true
    ContentHolder.Parent = MainSceen

    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, -20, 0, 40)
    TopBar.Position = UDim2.new(0, 10, 0, 0)
    TopBar.BackgroundTransparency = 1
    TopBar.Parent = MainSceen

    -- Title Text
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

    -- ปุ่มย่อ (Minimize)
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

    -- ปุ่มปิด (Close)
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

    -- ปิด UI
    CloseBtn.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)

    -- ย่อ/ขยาย Animation
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
    
    local Pages = {}

    function UiLibrary:Taps(name)
        local PageFrame = Instance.new("Frame")
        PageFrame.Name = name
        PageFrame.Size = UDim2.new(1, 0, 1, 0)
        PageFrame.BackgroundTransparency = 1
        PageFrame.Visible = false
        PageFrame.Parent = ContentHolder

        local Layout = Instance.new("UIListLayout")
        Layout.Padding = UDim.new(0, 12)
        Layout.SortOrder = Enum.SortOrder.LayoutOrder
        Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        Layout.Parent = PageFrame

        local TabButton = Instance.new("TextButton")
        TabButton.Text = name
        TabButton.Size = UDim2.new(0, 100, 0, 30)
        TabButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.Font = Enum.Font.GothamBold
        TabButton.TextSize = 14
        TabButton.Parent = TabContainer
        Instance.new("UICorner", TabButton).CornerRadius = UDim.new(0, 8)

        TabButton.MouseButton1Click:Connect(function()
            for i, v in pairs(ContentHolder:GetChildren()) do
                if v:IsA("Frame") then v.Visible = false end
            end
            PageFrame.Visible = true
        end)

        -- เปิดแท็บแรก
        if #Pages == 0 then
            PageFrame.Visible = true
        end
        table.insert(Pages, PageFrame)

        local page = {}

        function page:Toggle(text, callback)
            local Holder = Instance.new("Frame")
            Holder.Size = UDim2.new(0, 480, 0, 40)
            Holder.BackgroundTransparency = 1
            Holder.Parent = PageFrame

            local Label = Instance.new("TextLabel")
            Label.Text = text
            Label.Size = UDim2.new(1, -60, 1, 0)
            Label.Position = UDim2.new(0, 0, 0, 0)
            Label.BackgroundTransparency = 1
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.Font = Enum.Font.Gotham
            Label.TextSize = 16
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = Holder

            local Toggle = Instance.new("TextButton")
            Toggle.Size = UDim2.new(0, 44, 0, 22)
            Toggle.Position = UDim2.new(1, -48, 0.5, -11)
            Toggle.AnchorPoint = Vector2.new(0, 0)
            Toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            Toggle.Text = ""
            Toggle.AutoButtonColor = false
            Toggle.Parent = Holder

            Instance.new("UICorner", Toggle).CornerRadius = UDim.new(1, 0)

            local Knob = Instance.new("Frame")
            Knob.Size = UDim2.new(0, 18, 0, 18)
            Knob.Position = UDim2.new(0, 2, 0.5, -9)
            Knob.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
            Knob.BorderSizePixel = 0
            Knob.Parent = Toggle
            Instance.new("UICorner", Knob).CornerRadius = UDim.new(1, 0)

            local toggled = false
            Toggle.MouseButton1Click:Connect(function()
                toggled = not toggled
                if toggled then
                    Toggle.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
                    Knob:TweenPosition(UDim2.new(1, -20, 0.5, -9), "Out", "Quad", 0.2, true)
                else
                    Toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                    Knob:TweenPosition(UDim2.new(0, 2, 0.5, -9), "Out", "Quad", 0.2, true)
                end
                if callback then callback(toggled) end
            end)
        end

        function page:Button(text, callback)
            local Button = Instance.new("TextButton")
            Button.Size = UDim2.new(0, 200, 0, 36)
            Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
            Button.Text = text
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.Font = Enum.Font.GothamBold
            Button.TextSize = 16
            Button.AutoButtonColor = true
            Button.Parent = PageFrame
            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 8)

            Button.MouseButton1Click:Connect(function()
                if callback then callback() end
            end)
        end

        return page
    end

    return UiLibrary
end

return UiLibrary
