-- รีโหลดสคริปต์ตัวเองก่อน
pcall(function()
    game.CoreGui:FindFirstChild("redui"):Destroy()
end)

-- UI Library
local UiLibrary = {}
UiLibrary.__index = UiLibrary

function UiLibrary:Window(title)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "redui"
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game:GetService("CoreGui")

    local MainSceen = Instance.new("Frame")
    MainSceen.Name = "MainSceen"
    MainSceen.Size = UDim2.new(0, 550, 0, 380)
    MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
    MainSceen.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    MainSceen.BackgroundTransparency = 0.1
    MainSceen.BorderSizePixel = 0
    MainSceen.ClipsDescendants = true
    MainSceen.Active = true
    MainSceen.Draggable = true
    MainSceen.Parent = ScreenGui

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 16)
    UICorner.Parent = MainSceen

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Padding = UDim.new(0, 8)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = MainSceen

    local page = {}

    function page:Toggle(text, callback)
        local Holder = Instance.new("Frame")
        Holder.Size = UDim2.new(1, -40, 0, 40)
        Holder.BackgroundTransparency = 1
        Holder.LayoutOrder = 1
        Holder.Parent = MainSceen

        local Label = Instance.new("TextLabel")
        Label.Text = text
        Label.Size = UDim2.new(1, -60, 1, 0)
        Label.Position = UDim2.new(0, 10, 0, 0)
        Label.BackgroundTransparency = 1
        Label.TextColor3 = Color3.fromRGB(255, 255, 255)
        Label.Font = Enum.Font.Gotham
        Label.TextSize = 16
        Label.TextXAlignment = Enum.TextXAlignment.Left
        Label.Parent = Holder

        local Toggle = Instance.new("TextButton")
        Toggle.Size = UDim2.new(0, 40, 0, 22)
        Toggle.Position = UDim2.new(1, -50, 0.5, -11)
        Toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        Toggle.Text = ""
        Toggle.AutoButtonColor = false
        Toggle.Parent = Holder

        local Corner = Instance.new("UICorner", Toggle)
        Corner.CornerRadius = UDim.new(1, 0)

        local Knob = Instance.new("Frame")
        Knob.Size = UDim2.new(0, 18, 0, 18)
        Knob.Position = UDim2.new(0, 2, 0.5, -9)
        Knob.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
        Knob.BorderSizePixel = 0
        Knob.Parent = Toggle

        local KnobCorner = Instance.new("UICorner", Knob)
        KnobCorner.CornerRadius = UDim.new(1, 0)

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
            if callback then
                callback(toggled)
            end
        end)
    end

    function page:Button(text, callback)
        local Button = Instance.new("TextButton")
        Button.Size = UDim2.new(1, -40, 0, 36)
        Button.Position = UDim2.new(0, 20, 0, 0)
        Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
        Button.Text = text
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.Font = Enum.Font.GothamBold
        Button.TextSize = 16
        Button.AutoButtonColor = true
        Button.LayoutOrder = 2
        Button.Parent = MainSceen

        local ButtonCorner = Instance.new("UICorner", Button)
        ButtonCorner.CornerRadius = UDim.new(0, 8)

        Button.MouseButton1Click:Connect(function()
            if callback then
                callback()
            end
        end)
    end

    function UiLibrary:Taps(name)
        return page
    end

    return UiLibrary
end

return UiLibrary
