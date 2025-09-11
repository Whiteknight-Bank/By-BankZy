
local library = {}
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

if CoreGui:FindFirstChild("redui") then
    CoreGui:FindFirstChild("redui"):Destroy()
end

function library:Win(title)
    local UserInputService = game:GetService("UserInputService")

    if CoreGui:FindFirstChild("redui") then
        CoreGui:FindFirstChild("redui"):Destroy()
    end

    local gui = Instance.new("ScreenGui", CoreGui)
    gui.Name = "redui"
    gui.ResetOnSpawn = false

    -- Main menu
    local main = Instance.new("Frame")
    main.Size = UDim2.new(0, 500, 0, 350)
    main.Position = UDim2.new(0.5, -250, 0.5, -175)
    main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    main.BackgroundTransparency = 0.3
    main.BorderSizePixel = 0
    main.Parent = gui
    main.ClipsDescendants = true

    local border = Instance.new("UIStroke", main)
    border.Thickness = 2
    border.Color = Color3.fromRGB(255, 255, 255)

    -- X button
    local closeBtn = Instance.new("TextButton")
    closeBtn.Name = "CloseButton"
    closeBtn.Size = UDim2.new(0, 28, 0, 28)
    closeBtn.Position = UDim2.new(1, -35, 0, 5)
    closeBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    closeBtn.BackgroundTransparency = 0.2
    closeBtn.Text = "X"
    closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 16
    closeBtn.Parent = main

    local cornerX = Instance.new("UICorner")
    cornerX.CornerRadius = UDim.new(0, 6)
    cornerX.Parent = closeBtn

    -- Title bar
    local titleBar = Instance.new("TextLabel")
    titleBar.Size = UDim2.new(1, 0, 0, 35)
    titleBar.Position = UDim2.new(0, 0, 0, 0)
    titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    titleBar.BackgroundTransparency = 0.2
    titleBar.Text = title
    titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleBar.Font = Enum.Font.GothamBold
    titleBar.TextSize = 20
    titleBar.Parent = main
    titleBar.Active = true

    -- Tab buttons frame
    local tabButtons = Instance.new("Frame", main)
    tabButtons.Size = UDim2.new(0, 120, 1, -35)
    tabButtons.Position = UDim2.new(0, 0, 0, 35)
    tabButtons.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    tabButtons.BackgroundTransparency = 0.3

    local tabLayout = Instance.new("UIListLayout", tabButtons)
    tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabLayout.Padding = UDim.new(0, 5)

    local pages = Instance.new("Frame", main)
    pages.Size = UDim2.new(1, -130, 1, -45)
    pages.Position = UDim2.new(0, 130, 0, 40)
    pages.BackgroundTransparency = 1

    -- Dragging system
    local dragging, dragStart, startPos
    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = main.Position
        end
    end)

    titleBar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            main.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)

    -- ReaperX Hub toggle button (วงรียาวด้านบน)
    local hubToggle = Instance.new("TextButton")
    hubToggle.Size = UDim2.new(0, 150, 0, 40)
    hubToggle.Position = UDim2.new(0.5, -75, 0, 10)
    hubToggle.AnchorPoint = Vector2.new(0.5, 0)
    hubToggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    hubToggle.BackgroundTransparency = 0.1
    hubToggle.Text = "ReaperX Hub"
    hubToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    hubToggle.Font = Enum.Font.GothamBold
    hubToggle.TextSize = 18
    hubToggle.Visible = false
    hubToggle.Parent = gui

    local hubCorner = Instance.new("UICorner")
    hubCorner.CornerRadius = UDim.new(1, 0)
    hubCorner.Parent = hubToggle

    closeBtn.MouseButton1Click:Connect(function()
        main.Visible = false
        hubToggle.Visible = true
    end)

    hubToggle.MouseButton1Click:Connect(function()
        main.Visible = true
        hubToggle.Visible = false
    end)

    -- store references for tabs
    self.tabButtons = tabButtons
    self.pages = pages
end

local tabs = {}

function tabs:Taps(name)
    local tabButton = Instance.new("TextButton", library.tabButtons)
    tabButton.Size = UDim2.new(1, -10, 0, 30)
    tabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    tabButton.BackgroundTransparency = 0.4
    tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabButton.Font = Enum.Font.SourceSans
    tabButton.TextSize = 16
    tabButton.Text = name

    local page = Instance.new("ScrollingFrame", library.pages)
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
        for _, v in pairs(library.pages:GetChildren()) do
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

    function newPage:Button(text, callback)
        local button = Instance.new("TextButton", page)
        button.Size = UDim2.new(1, -10, 0, 30)
        button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        button.BackgroundTransparency = 0.4
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.Font = Enum.Font.SourceSans
        button.TextSize = 16
        button.Text = text
        button.MouseButton1Click:Connect(function()
            if callback then
                pcall(callback)
            end
        end)
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

    function newPage:Toggle(text, default, callback)
        local toggleFrame = Instance.new("Frame", page)
        toggleFrame.Size = UDim2.new(1, -10, 0, 30)
        toggleFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        toggleFrame.BackgroundTransparency = 0.4
        toggleFrame.BorderSizePixel = 0

        local label = Instance.new("TextLabel", toggleFrame)
        label.Size = UDim2.new(1, -50, 1, 0)
        label.Position = UDim2.new(0, 10, 0, 0)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.Font = Enum.Font.SourceSans
        label.TextSize = 16
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Text = text

        local toggleBtn = Instance.new("TextButton", toggleFrame)
        toggleBtn.Size = UDim2.new(0, 40, 0, 20)
        toggleBtn.Position = UDim2.new(1, -45, 0.5, -10)
        toggleBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        toggleBtn.BackgroundTransparency = 0.4
        toggleBtn.Text = ""
        toggleBtn.BorderSizePixel = 0
        toggleBtn.AutoButtonColor = false
        toggleBtn.Name = "ToggleSwitch"

        local circle = Instance.new("Frame", toggleBtn)
        circle.Size = UDim2.new(0, 18, 0, 18)
        circle.Position = default and UDim2.new(1, -19, 0, 1) or UDim2.new(0, 1, 0, 1)
        circle.BackgroundColor3 = default and Color3.fromRGB(0, 170, 255) or Color3.fromRGB(150, 150, 150)
        circle.BorderSizePixel = 0
        circle.Name = "SwitchKnob"
        circle.ZIndex = 2
        circle.BackgroundTransparency = 0
        circle.ClipsDescendants = true

        Instance.new("UICorner", circle).CornerRadius = UDim.new(1, 0)
        Instance.new("UICorner", toggleBtn).CornerRadius = UDim.new(1, 0)
        Instance.new("UICorner", toggleFrame).CornerRadius = UDim.new(0, 6)

        local toggled = default
        toggleBtn.MouseButton1Click:Connect(function()
            toggled = not toggled
            circle:TweenPosition(toggled and UDim2.new(1, -19, 0, 1) or UDim2.new(0, 1, 0, 1), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
            circle.BackgroundColor3 = toggled and Color3.fromRGB(0, 170, 255) or Color3.fromRGB(150, 150, 150)
            if callback then callback(toggled) end
        end)

        if callback then callback(default) end
    end

    return newPage
end

-- Notification system
local activeNotifs = {}

function library:Notifile(title, msg, duration)
    local gui = CoreGui:FindFirstChild("redui")
    if not gui then return end

    if #activeNotifs >= 3 then
        local oldest = table.remove(activeNotifs, 1)
        oldest:Destroy()
    end

    local notif = Instance.new("Frame")
    notif.Size = UDim2.new(0, 300, 0, 60)
    notif.Position = UDim2.new(1, 310, 1, -80)
    notif.AnchorPoint = Vector2.new(1, 1)
    notif.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    notif.BackgroundTransparency = 0.4
    notif.BorderSizePixel = 0
    notif.Parent = gui

    local label = Instance.new("TextLabel", notif)
    label.Size = UDim2.new(1, -10, 1, 0)
    label.Position = UDim2.new(0, 5, 0, 0)
    label.Text = msg
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.SourceSans
    label.TextSize = 18
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left

    for i, n in ipairs(activeNotifs) do
        local goalPos = UDim2.new(1, -10, 1, -10 - (70 * (i)))
        TweenService:Create(n, TweenInfo.new(0.2), { Position = goalPos }):Play()
    end

    table.insert(activeNotifs, notif)

    TweenService:Create(notif, TweenInfo.new(0.3), {
        Position = UDim2.new(1, -10, 1, -10)
    }):Play()

    task.delay(duration or 3, function()
        local tweenOut = TweenService:Create(notif, TweenInfo.new(0.3), {
            Position = UDim2.new(1, 310, 1, -10)
        })
        tweenOut:Play()
        tweenOut.Completed:Wait()

        for i, n in ipairs(activeNotifs) do
            if n == notif then
                table.remove(activeNotifs, i)
                break
            end
        end

        for i, n in ipairs(activeNotifs) do
            local goalPos = UDim2.new(1, -10, 1, -10 - (70 * (i - 1)))
            TweenService:Create(n, TweenInfo.new(0.2), { Position = goalPos }):Play()
        end

        notif:Destroy()
    end)
end

library.tabs = tabs
return library
