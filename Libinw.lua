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
            
        function newPage:Button(text, callback)
            local button = Instance.new("TextButton", page)
            button.Size = UDim2.new(1, -10, 0, 30)
            button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
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

        function newPage:Dropdown(text, items, callback)
            local label = Instance.new("TextLabel", page)
            label.Size = UDim2.new(1, -10, 0, 25)
            label.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.Text = text
            label.Font = Enum.Font.SourceSans
            label.TextSize = 16

            local dropdown = Instance.new("TextButton", page)
            dropdown.Size = UDim2.new(1, -10, 0, 30)
            dropdown.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
            dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
            dropdown.Text = "Select"
            dropdown.Font = Enum.Font.SourceSans
            dropdown.TextSize = 16

            dropdown.MouseButton1Click:Connect(function()
                for _, child in ipairs(page:GetChildren()) do
                    if child.Name == "DropdownOption" then child:Destroy() end
                end
                for _, item in ipairs(items) do
                    local option = Instance.new("TextButton", page)
                    option.Name = "DropdownOption"
                    option.Size = UDim2.new(1, -10, 0, 25)
                    option.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                    option.TextColor3 = Color3.fromRGB(255, 255, 255)
                    option.Text = item
                    option.Font = Enum.Font.SourceSans
                    option.TextSize = 16
                    option.MouseButton1Click:Connect(function()
                        dropdown.Text = item
                        if callback then callback(item) end
                        for _, child in ipairs(page:GetChildren()) do
                            if child.Name == "DropdownOption" then child:Destroy() end
                        end
                    end)
                end
            end)
        end

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

        function newPage:Toggle(txt, default, callback)
            local state = default

            local toggleFrame = Instance.new("Frame", page)
            toggleFrame.Size = UDim2.new(1, -10, 0, 25)
            toggleFrame.BackgroundTransparency = 1

            local label = Instance.new("TextLabel", toggleFrame)
            label.Size = UDim2.new(1, -40, 1, 0)
            label.Position = UDim2.new(0, 0, 0, 0)
            label.Text = txt
            label.Font = Enum.Font.SourceSans
            label.TextSize = 16
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.BackgroundTransparency = 1
            label.TextXAlignment = Enum.TextXAlignment.Left

            local toggle = Instance.new("TextButton", toggleFrame)
            toggle.Size = UDim2.new(0, 30, 0, 20)
            toggle.Position = UDim2.new(1, -35, 0.5, -10)
            toggle.BackgroundColor3 = state and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(60, 60, 60)
            toggle.Text = ""
            toggle.AutoButtonColor = false
            toggle.BorderSizePixel = 0

            local circle = Instance.new("Frame", toggle)
            circle.Size = UDim2.new(0, 16, 0, 16)
            circle.Position = UDim2.new(state and 1 or 0, state and -18 or 2, 0.5, -8)
            circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            circle.BorderSizePixel = 0
            circle.AnchorPoint = Vector2.new(0, 0.5)
            circle.Name = "Circle"

            local uicorner = Instance.new("UICorner", toggle)
            uicorner.CornerRadius = UDim.new(1, 0)
            local uicircle = Instance.new("UICorner", circle)
            uicircle.CornerRadius = UDim.new(1, 0)

            toggle.MouseButton1Click:Connect(function()
                state = not state
                toggle.BackgroundColor3 = state and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(60, 60, 60)
                circle.Position = UDim2.new(state and 1 or 0, state and -18 or 2, 0.5, -8)
                pcall(callback, state)
            end)
        end

        hideAllPages()
        page.Visible = true
        
        function newPage:Button(text, callback)
            local button = Instance.new("TextButton", page)
            button.Size = UDim2.new(1, -10, 0, 30)
            button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
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

function library:Dropdown(text, list, callback)
    local holder = Instance.new("Frame")
    holder.Size = UDim2.new(1, -10, 0, 30)
    holder.BackgroundTransparency = 1
    holder.Parent = self.container

    local title = Instance.new("TextLabel")
    title.Text = text
    title.TextSize = 14
    title.Font = Enum.Font.GothamBold
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(0.6, 0, 1, 0)
    title.Position = UDim2.new(0, 5, 0, 0)
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = holder

    local dropdownBtn = Instance.new("TextButton")
    dropdownBtn.Size = UDim2.new(0.3, 0, 1, 0)
    dropdownBtn.Position = UDim2.new(0.65, 0, 0, 0)
    dropdownBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    dropdownBtn.Text = "▶"
    dropdownBtn.Font = Enum.Font.GothamBold
    dropdownBtn.TextSize = 14
    dropdownBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownBtn.Parent = holder

    local optionFrame = Instance.new("Frame")
    optionFrame.Size = UDim2.new(1, -10, 0, 0)
    optionFrame.Position = UDim2.new(0, 5, 1, 0)
    optionFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    optionFrame.BorderSizePixel = 0
    optionFrame.ClipsDescendants = true
    optionFrame.Visible = false
    optionFrame.Parent = holder

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = optionFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    dropdownBtn.MouseButton1Click:Connect(function()
        local expanded = not optionFrame.Visible
        optionFrame.Visible = expanded
        dropdownBtn.Text = expanded and "▼" or "▶"

        if expanded then
            local height = #list * 25
            optionFrame:TweenSize(UDim2.new(1, -10, 0, height), "Out", "Quad", 0.2, true)
        else
            optionFrame:TweenSize(UDim2.new(1, -10, 0, 0), "Out", "Quad", 0.2, true)
        end
    end)

    for _, option in pairs(list) do
        local optionBtn = Instance.new("TextButton")
        optionBtn.Text = option
        optionBtn.Size = UDim2.new(1, 0, 0, 25)
        optionBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        optionBtn.Font = Enum.Font.Gotham
        optionBtn.TextSize = 14
        optionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        optionBtn.Parent = optionFrame

        optionBtn.MouseButton1Click:Connect(function()
            callback(option)
            optionFrame.Visible = false
            dropdownBtn.Text = "▶"
            optionFrame:TweenSize(UDim2.new(1, -10, 0, 0), "Out", "Quad", 0.2, true)
        end)
    end
end

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
