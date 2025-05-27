local library = {}
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

if CoreGui:FindFirstChild("redui") then
    CoreGui:FindFirstChild("redui"):Destroy()
end

function library:Win(title)
    local gui = Instance.new("ScreenGui", CoreGui)
    gui.Name = "redui"
    gui.ResetOnSpawn = false

    local main = Instance.new("Frame", gui)
    main.Name = "MainSceen"
    main.Size = UDim2.new(0, 500, 0, 350)
    main.Position = UDim2.new(0.5, -250, 0.5, -175)
    main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    main.Active = true
    main.Draggable = true

    local titleBar = Instance.new("TextLabel", main)
    titleBar.Size = UDim2.new(1, 0, 0, 35)
    titleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    titleBar.Text = title
    titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleBar.Font = Enum.Font.SourceSansBold
    titleBar.TextSize = 20

    local tabButtons = Instance.new("Frame", main)
    tabButtons.Size = UDim2.new(0, 120, 1, -35)
    tabButtons.Position = UDim2.new(0, 0, 0, 35)
    tabButtons.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

    local tabLayout = Instance.new("UIListLayout", tabButtons)
    tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabLayout.Padding = UDim.new(0, 5)

    local pages = Instance.new("Frame", main)
    pages.Size = UDim2.new(1, -130, 1, -45)
    pages.Position = UDim2.new(0, 130, 0, 40)
    pages.BackgroundTransparency = 1

    local tabs = {}

    function tabs:Taps(name)
        local tabButton = Instance.new("TextButton", tabButtons)
        tabButton.Size = UDim2.new(1, -10, 0, 30)
        tabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        tabButton.Font = Enum.Font.SourceSans
        tabButton.TextSize = 16
        tabButton.Text = name

        local page = Instance.new("ScrollingFrame", pages)
        page.Size = UDim2.new(1, 0, 1, 0)
        page.Visible = false
        page.ScrollBarThickness = 6
        page.CanvasSize = UDim2.new(0, 0, 0, 0)
        page.BackgroundTransparency = 1
        page.Name = name .. "_Page"

        local layout = Instance.new("UIListLayout", page)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Padding = UDim.new(0, 5)

        layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            page.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
        end)

        local function hideAllPages()
            for _, v in pairs(pages:GetChildren()) do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
        end

        tabButton.MouseButton1Click:Connect(function()
            hideAllPages()
            page.Visible = true
        end)

        local newPage = {}

        function newPage:newpage()
            return newPage
        end

        function newPage:Label(txt)
            local label = Instance.new("TextLabel", page)
            label.Size = UDim2.new(1, -10, 0, 25)
            label.Text = txt
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.Font = Enum.Font.SourceSans
            label.TextSize = 16
            label.BackgroundTransparency = 1
        end

        function newPage:Section(txt)
            local section = Instance.new("TextLabel", page)
            section.Size = UDim2.new(1, -10, 0, 25)
            section.Text = "─ " .. txt .. " ─"
            section.TextColor3 = Color3.fromRGB(200, 200, 200)
            section.Font = Enum.Font.SourceSansBold
            section.TextSize = 16
            section.BackgroundTransparency = 1
            section.TextXAlignment = Enum.TextXAlignment.Left
        end

        function page:Toggle(text, default, callback)
    local holder = Instance.new("Frame")
    holder.Name = "Toggle"
    holder.Size = UDim2.new(1, -10, 0, 30)
    holder.BackgroundTransparency = 1
    holder.Parent = self.Section or self.Frame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -40, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.Gotham
    label.TextSize = 14
    label.Parent = holder

    local toggle = Instance.new("Frame")
    toggle.Size = UDim2.new(0, 30, 0, 15)
    toggle.Position = UDim2.new(1, -35, 0.5, -7)
    toggle.AnchorPoint = Vector2.new(0, 0.5)
    toggle.BackgroundColor3 = default and Color3.fromRGB(50, 200, 100) or Color3.fromRGB(60, 60, 60)
    toggle.BorderSizePixel = 0
    toggle.BackgroundTransparency = 0
    toggle.ClipsDescendants = true
    toggle.Parent = holder

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = toggle

    local knob = Instance.new("Frame")
    knob.Size = UDim2.new(0, 13, 0, 13)
    knob.Position = UDim2.new(default and 1 or 0, default and -14 or 1, 0.5, -6)
    knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    knob.BorderSizePixel = 0
    knob.Parent = toggle

    local knobCorner = Instance.new("UICorner")
    knobCorner.CornerRadius = UDim.new(1, 0)
    knobCorner.Parent = knob

    local state = default

    local function updateToggle()
        toggle.BackgroundColor3 = state and Color3.fromRGB(50, 200, 100) or Color3.fromRGB(60, 60, 60)
        knob:TweenPosition(UDim2.new(state and 1 or 0, state and -14 or 1, 0.5, -6), "Out", "Quad", 0.15, true)
        pcall(callback, state)
    end

    toggle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            state = not state
            updateToggle()
        end
    end)

    updateToggle()
end
        
        hideAllPages()
        page.Visible = true
        return newPage
    end

    return tabs
end

function library:Notifile(title, msg, duration)
    local gui = CoreGui:FindFirstChild("redui")
    if not gui then return end

    local notif = Instance.new("Frame", gui)
    notif.Size = UDim2.new(0, 300, 0, 60)
    notif.Position = UDim2.new(1, 310, 1, -80)
    notif.AnchorPoint = Vector2.new(1, 1)
    notif.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    notif.BorderSizePixel = 0

    local label = Instance.new("TextLabel", notif)
    label.Size = UDim2.new(1, -10, 1, 0)
    label.Position = UDim2.new(0, 5, 0, 0)
    label.Text = msg
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.SourceSans
    label.TextSize = 18
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left

    local tweenIn = TweenService:Create(notif, TweenInfo.new(0.3), {
        Position = UDim2.new(1, -10, 1, -10)
    })

    local tweenOut = TweenService:Create(notif, TweenInfo.new(0.3), {
        Position = UDim2.new(1, 310, 1, -80)
    })

    tweenIn:Play()
    task.delay(duration or 3, function()
        tweenOut:Play()
        tweenOut.Completed:Wait()
        notif:Destroy()
    end)
end

return library
