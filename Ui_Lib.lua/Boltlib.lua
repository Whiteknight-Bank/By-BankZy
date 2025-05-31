local CoreGui = game:GetService("CoreGui")

local UiLibrary = {}
UiLibrary.__index = UiLibrary

function UiLibrary:CreateWindow(title)
    local ScreenGui = Instance.new("ScreenGui", CoreGui)
    ScreenGui.Name = "SmoothUILibrary"
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.ResetOnSpawn = false

    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Size = UDim2.new(0, 550, 0, 380)
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.BackgroundTransparency = 0.05
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true

    local UICorner = Instance.new("UICorner", MainFrame)
    UICorner.CornerRadius = UDim.new(0, 16)

    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.BackgroundTransparency = 1
    Title.Text = title or "UI Library"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 20

    local UIListLayout = Instance.new("UIListLayout", MainFrame)
    UIListLayout.Padding = UDim.new(0, 8)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    function UiLibrary:Toggle(text, callback)
        local holder = Instance.new("Frame", MainFrame)
        holder.Size = UDim2.new(1, -20, 0, 40)
        holder.BackgroundTransparency = 1
        holder.LayoutOrder = 2

        local label = Instance.new("TextLabel", holder)
        label.Text = text
        label.Size = UDim2.new(1, -60, 1, 0)
        label.Position = UDim2.new(0, 10, 0, 0)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.Font = Enum.Font.Gotham
        label.TextSize = 16
        label.TextXAlignment = Enum.TextXAlignment.Left

        local toggleBtn = Instance.new("TextButton", holder)
        toggleBtn.Size = UDim2.new(0, 40, 0, 22)
        toggleBtn.Position = UDim2.new(1, -50, 0.5, -11)
        toggleBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        toggleBtn.Text = ""
        toggleBtn.AutoButtonColor = false

        local corner = Instance.new("UICorner", toggleBtn)
        corner.CornerRadius = UDim.new(1, 0)

        local knob = Instance.new("Frame", toggleBtn)
        knob.Size = UDim2.new(0, 18, 0, 18)
        knob.Position = UDim2.new(0, 2, 0.5, -9)
        knob.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        knob.BorderSizePixel = 0

        local knobCorner = Instance.new("UICorner", knob)
        knobCorner.CornerRadius = UDim.new(1, 0)

        local toggled = false
        toggleBtn.MouseButton1Click:Connect(function()
            toggled = not toggled
            if toggled then
                toggleBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
                knob:TweenPosition(UDim2.new(1, -20, 0.5, -9), "Out", "Quad", 0.2, true)
            else
                toggleBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                knob:TweenPosition(UDim2.new(0, 2, 0.5, -9), "Out", "Quad", 0.2, true)
            end
            if callback then
                callback(toggled)
            end
        end)
    end

    function UiLibrary:Button(text, callback)
        local btn = Instance.new("TextButton", MainFrame)
        btn.Size = UDim2.new(1, -40, 0, 36)
        btn.Position = UDim2.new(0, 20, 0, 0)
        btn.BackgroundColor3 = Color3.fromRGB(30, 120, 255)
        btn.Text = text
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 16
        btn.AutoButtonColor = true
        btn.LayoutOrder = 3

        local btnCorner = Instance.new("UICorner", btn)
        btnCorner.CornerRadius = UDim.new(0, 8)

        btn.MouseButton1Click:Connect(function()
            if callback then
                callback()
            end
        end)
    end

    return UiLibrary
end

return UiLibrary
