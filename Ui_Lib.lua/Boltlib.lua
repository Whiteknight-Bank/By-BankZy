local UILibrary = {}

-- ลบ GUI เก่าถ้ามี
local existing = game:GetService("CoreGui"):FindFirstChild("SmoothUILibrary")
if existing then
    existing:Destroy()
end

function UILibrary:CreateWindow(title)
    local CoreGui = game:GetService("CoreGui")
    local ScreenGui = Instance.new("ScreenGui", CoreGui)
    ScreenGui.Name = "SmoothUILibrary"
    ScreenGui.ResetOnSpawn = false

    -- UI ตรงกลางจอ
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

        local Corner = Instance.new("UICorner", Button)
        Corner.CornerRadius = UDim.new(0, 10)

        Button.MouseButton1Click:Connect(function()
            pcall(callback)
        end)
    end

    function window:Toggle(labelText, callback)
        local Holder = Instance.new("Frame", MainFrame)
        Holder.Size = UDim2.new(1, 0, 0, 36)
        Holder.BackgroundTransparency = 1

        local TextLabel = Instance.new("TextLabel", Holder)
        TextLabel.Size = UDim2.new(1, -60, 1, 0)
        TextLabel.Position = UDim2.new(0, 0, 0, 0)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Text = labelText
        TextLabel.Font = Enum.Font.Gotham
        TextLabel.TextSize = 16
        TextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left

        local ToggleButton = Instance.new("Frame", Holder)
        ToggleButton.Size = UDim2.new(0, 36, 0, 20)
        ToggleButton.Position = UDim2.new(1, -40, 0.5, -10)
        ToggleButton.AnchorPoint = Vector2.new(0, 0.5)
        ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        ToggleButton.BorderSizePixel = 0

        local ToggleCorner = Instance.new("UICorner", ToggleButton)
        ToggleCorner.CornerRadius = UDim.new(1, 0)

        local Knob = Instance.new("Frame", ToggleButton)
        Knob.Size = UDim2.new(0, 16, 0, 16)
        Knob.Position = UDim2.new(0, 2, 0.5, -8)
        Knob.BackgroundColor3 = Color3.fromRGB(200, 200, 200)

        local KnobCorner = Instance.new("UICorner", Knob)
        KnobCorner.CornerRadius = UDim.new(1, 0)

        local ClickArea = Instance.new("TextButton", ToggleButton)
        ClickArea.Size = UDim2.new(1, 0, 1, 0)
        ClickArea.BackgroundTransparency = 1
        ClickArea.Text = ""

        local on = false
        ClickArea.MouseButton1Click:Connect(function()
            on = not on
            if on then
                ToggleButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
                Knob:TweenPosition(UDim2.new(1, -18, 0.5, -8), "Out", "Quad", 0.2, true)
            else
                ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                Knob:TweenPosition(UDim2.new(0, 2, 0.5, -8), "Out", "Quad", 0.2, true)
            end
            pcall(callback, on)
        end)
    end

    return window
end

return UILibrary
