local UILibrary = {}

function UILibrary:CreateWindow(title)
    local CoreGui = game:GetService("CoreGui")
    local ScreenGui = Instance.new("ScreenGui", CoreGui)
    ScreenGui.Name = "SmoothUILibrary"
    ScreenGui.ResetOnSpawn = false

    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Size = UDim2.new(0, 450, 0, 320)
    MainFrame.Position = UDim2.new(0.5, -225, 0.5, -160)
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.BackgroundTransparency = 0.1
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true

    local UICorner = Instance.new("UICorner", MainFrame)
    UICorner.CornerRadius = UDim.new(0, 16)

    local UIListLayout = Instance.new("UIListLayout", MainFrame)
    UIListLayout.Padding = UDim.new(0, 10)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    local Padding = Instance.new("UIPadding", MainFrame)
    Padding.PaddingTop = UDim.new(0, 15)
    Padding.PaddingBottom = UDim.new(0, 10)
    Padding.PaddingLeft = UDim.new(0, 15)
    Padding.PaddingRight = UDim.new(0, 15)

    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.BackgroundTransparency = 1
    Title.Text = title or "✨ Smooth UI ✨"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 20
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local window = {}

    function window:Label(text)
        local Label = Instance.new("TextLabel", MainFrame)
        Label.Size = UDim2.new(1, 0, 0, 24)
        Label.BackgroundTransparency = 1
        Label.Text = text
        Label.TextColor3 = Color3.fromRGB(200, 200, 200)
        Label.Font = Enum.Font.Gotham
        Label.TextSize = 16
        Label.TextXAlignment = Enum.TextXAlignment.Left
    end

    function window:Button(text, callback)
        local Button = Instance.new("TextButton", MainFrame)
        Button.Size = UDim2.new(1, 0, 0, 32)
        Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Button.Text = text
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.Font = Enum.Font.Gotham
        Button.TextSize = 16
        Button.AutoButtonColor = true

        local Corner = Instance.new("UICorner", Button)
        Corner.CornerRadius = UDim.new(0, 10)

        Button.MouseButton1Click:Connect(function()
            pcall(callback)
        end)
    end

    function window:Toggle(text, callback)
        local Toggle = Instance.new("TextButton", MainFrame)
        Toggle.Size = UDim2.new(1, 0, 0, 32)
        Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Toggle.TextColor3 = Color3.fromRGB(180, 180, 180)
        Toggle.Font = Enum.Font.Gotham
        Toggle.TextSize = 16
        Toggle.Text = "[ OFF ] " .. text

        local Corner = Instance.new("UICorner", Toggle)
        Corner.CornerRadius = UDim.new(0, 10)

        local toggled = false
        Toggle.MouseButton1Click:Connect(function()
            toggled = not toggled
            Toggle.Text = (toggled and "[ ON ] " or "[ OFF ] ") .. text
            pcall(callback, toggled)
        end)
    end

    return window
end

return UILibrary
