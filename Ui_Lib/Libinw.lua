local library = {}
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Cleanup existing
if CoreGui:FindFirstChild("redui") then
    CoreGui:FindFirstChild("redui"):Destroy()
end

-- Internal helpers
local function createUICorner(parent, radius)
    local c = Instance.new("UICorner")
    c.CornerRadius = radius or UDim.new(0,6)
    c.Parent = parent
    return c
end

function library:Win(title)
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")

    -- Destroy existing gui if present
    if CoreGui:FindFirstChild("redui") then
        CoreGui:FindFirstChild("redui"):Destroy()
    end

    local gui = Instance.new("ScreenGui")
    gui.Name = "redui"
    gui.ResetOnSpawn = false
    gui.Parent = CoreGui

    -- Main menu
    local main = Instance.new("Frame")
    main.Name = "MainFrame"
    main.Size = UDim2.new(0, 500, 0, 350)
    main.AnchorPoint = Vector2.new(0.5, 0.5)
    main.Position = UDim2.new(0.5, 0, 0.5, 0)
    main.BackgroundColor3 = Color3.fromRGB(0,0,0)
    main.BackgroundTransparency = 0.3
    main.BorderSizePixel = 0
    main.Parent = gui
    main.ClipsDescendants = true

    createUICorner(main, UDim.new(0,8))

    local border = Instance.new("UIStroke")
    border.Thickness = 2
    border.Color = Color3.fromRGB(255,255,255)
    border.Parent = main

    -- Title bar
    local titleBar = Instance.new("Frame")
    titleBar.Size = UDim2.new(1,0,0,35)
    titleBar.Position = UDim2.new(0,0,0,0)
    titleBar.BackgroundTransparency = 0.95
    titleBar.Parent = main

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -70, 1, 0)
    titleLabel.Position = UDim2.new(0,10,0,0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title or "Window"
    titleLabel.TextColor3 = Color3.fromRGB(255,255,255)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 20
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = titleBar

    -- Close X (hidden when main hidden)
    local closeBtn = Instance.new("TextButton")
    closeBtn.Name = "CloseBtn"
    closeBtn.Size = UDim2.new(0,28,0,28)
    closeBtn.Position = UDim2.new(1, -35, 0.5, -14)
    closeBtn.BackgroundColor3 = Color3.fromRGB(30,30,30)
    closeBtn.BackgroundTransparency = 0.2
    closeBtn.Text = "-"
    closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 16
    closeBtn.Parent = titleBar
    createUICorner(closeBtn, UDim.new(0,6))

    -- Left tabs area
    local tabButtons = Instance.new("Frame")
    tabButtons.Size = UDim2.new(0,120,1,-35)
    tabButtons.Position = UDim2.new(0,0,0,35)
    tabButtons.BackgroundTransparency = 0.9
    tabButtons.Parent = main

    local tabLayout = Instance.new("UIListLayout")
    tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabLayout.Padding = UDim.new(0,6)
    tabLayout.Parent = tabButtons

    -- Pages container
    local pages = Instance.new("Frame")
    pages.Size = UDim2.new(1,-130,1,-45)
    pages.Position = UDim2.new(0,130,0,40)
    pages.BackgroundTransparency = 1
    pages.Parent = main

    -- Make window draggable by titleBar
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

    -- Hub Toggle (small rounded horizontal button to reopen)
    local hubToggle = Instance.new("TextButton")
    hubToggle.Name = "HubToggle"
    hubToggle.Size = UDim2.new(0, 120, 0, 50)
    hubToggle.Position = UDim2.new(0.5, -90, 0, 10)
    hubToggle.AnchorPoint = Vector2.new(0.5,0)
    hubToggle.BackgroundColor3 = Color3.fromRGB(25,25,25)
    hubToggle.BackgroundTransparency = 0.2
    hubToggle.Text = "ReaperX Hub"
    hubToggle.TextColor3 = Color3.fromRGB(255,255,255)
    hubToggle.Font = Enum.Font.GothamBold
    hubToggle.TextSize = 18
    hubToggle.Visible = false
    hubToggle.Parent = gui
    createUICorner(hubToggle, UDim.new(1,0))

    -- ปิดเมนูหลัก
closeBtn.MouseButton1Click:Connect(function()
    -- ย่อเมนูหลัก
    TweenService:Create(
        main,
        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {Size = UDim2.new(0.5, 0, 0, 0), Position = UDim2.new(0.5, 0, -0.2, 0)}
    ):Play()

    task.delay(0.45, function()
        main.Visible = false
        hubToggle.Visible = true
        hubToggle.Size = UDim2.new(0, 50, 0, 50) -- เริ่มขนาดเล็ก
        hubToggle.Position = UDim2.new(0.5, 0, -0.2, 0) -- เริ่มนอกจอด้านบน
        -- ขยายปุ่มวงรีเล็กน้อย
        TweenService:Create(
    hubToggle,
    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {Size = UDim2.new(0, 120, 0, 50), Position = UDim2.new(0.5, 0, 0, 10)}
):Play()
    end)
end)

-- กดปุ่มวงรี
hubToggle.MouseButton1Click:Connect(function()
    -- ย่อปุ่มวงรี
    TweenService:Create(
        hubToggle,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
        {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, -0.2, 0)}
    ):Play()

    task.delay(0.35, function()
        hubToggle.Visible = false
        main.Visible = true
        main.Size = UDim2.new(0.5, 0, 0, 0) -- เริ่มหด
        main.Position = UDim2.new(0.5, 0, -0.2, 0)
        -- ขยายเมนูหลักลงมา
        TweenService:Create(
            main,
            TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0.5, 0, 0.7, 0), Position = UDim2.new(0.5, 0, 0.5, 0)}
        ):Play()
    end)
end)

    -- Expose for tabs creation
    self.tabButtons = tabButtons
    self.pages = pages
    self.gui = gui
    self.main = main
    self.hubToggle = hubToggle

    return self -- return library so caller can use library.tabs or create tabs
end

-- Tabs system
local tabs = {}

function tabs:Taps(name)
    assert(library.tabButtons and library.pages, "Call library:Win(title) before creating tabs.")
    -- create tab button
    local tabButton = Instance.new("TextButton")
    tabButton.Size = UDim2.new(1, -10, 0, 28)
    tabButton.BackgroundColor3 = Color3.fromRGB(50,50,50)
    tabButton.BackgroundTransparency = 0.6
    tabButton.TextColor3 = Color3.fromRGB(255,255,255)
    tabButton.Font = Enum.Font.SourceSans
    tabButton.TextSize = 16
    tabButton.Text = name
    tabButton.Parent = library.tabButtons
    createUICorner(tabButton, UDim.new(0,6))

    -- page (scrolling)
    local page = Instance.new("ScrollingFrame")
    page.Size = UDim2.new(1,0,1,0)
    page.Position = UDim2.new(0,0,0,0)
    page.BackgroundTransparency = 1
    page.ScrollBarThickness = 6
    page.CanvasSize = UDim2.new(0,0,0,0)
    page.Visible = false
    page.Parent = library.pages
    page.Name = name.."_Page"

    local layout = Instance.new("UIListLayout")
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0,6)
    layout.Parent = page

    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        page.CanvasSize = UDim2.new(0,0,0, layout.AbsoluteContentSize.Y + 12)
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

    -- create page API
    local newPage = {}

    function newPage:Button(text, callback)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(1, -10, 0, 30)
        button.BackgroundColor3 = Color3.fromRGB(60,60,60)
        button.BackgroundTransparency = 0.4
        button.TextColor3 = Color3.fromRGB(255,255,255)
        button.Font = Enum.Font.SourceSans
        button.TextSize = 16
        button.Text = text or "Button"
        button.Parent = page
        createUICorner(button, UDim.new(0,6))
        button.MouseButton1Click:Connect(function()
            if callback then
                pcall(callback)
            end
        end)
        return button
    end

    function newPage:Label(txt)
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, -10, 0, 24)
        label.BackgroundTransparency = 1
        label.Text = txt or ""
        label.TextColor3 = Color3.fromRGB(255,255,255)
        label.Font = Enum.Font.SourceSans
        label.TextSize = 16
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Parent = page
        return label
    end

    function newPage:Section(txt)
        local sectionFrame = Instance.new("Frame")
        sectionFrame.Size = UDim2.new(1, -10, 0, 30)
        sectionFrame.BackgroundTransparency = 1
        sectionFrame.Parent = page

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, -10, 1, 0)
        label.Position = UDim2.new(0,5,0,0)
        label.BackgroundTransparency = 1
        label.Text = "^| " .. (txt or "") .. " |^"
        label.TextColor3 = Color3.fromRGB(200,200,200)
        label.Font = Enum.Font.SourceSansBold
        label.TextSize = 16
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Parent = sectionFrame
        return sectionFrame
    end

    function newPage:Toggle(text, default, callback)
        local container = Instance.new("Frame")
        container.Size = UDim2.new(1, -10, 0, 30)
        container.BackgroundColor3 = Color3.fromRGB(40,40,40)
        container.BackgroundTransparency = 0.4
        container.Parent = page
        createUICorner(container, UDim.new(0,6))

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, -70, 1, 0)
        label.Position = UDim2.new(0,10,0,0)
        label.BackgroundTransparency = 1
        label.Text = text or "Toggle"
        label.TextColor3 = Color3.fromRGB(255,255,255)
        label.Font = Enum.Font.SourceSans
        label.TextSize = 16
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Parent = container

        local toggleBtn = Instance.new("TextButton")
        toggleBtn.Size = UDim2.new(0,50,0,24)
        toggleBtn.Position = UDim2.new(1, -60, 0.5, -12)
        toggleBtn.BackgroundColor3 = Color3.fromRGB(60,60,60)
        toggleBtn.BackgroundTransparency = 0.4
        toggleBtn.Text = ""
        toggleBtn.Parent = container
        createUICorner(toggleBtn, UDim.new(0,6))

        local knob = Instance.new("Frame")
        knob.Size = UDim2.new(0,20,0,20)
        knob.Position = default and UDim2.new(1, -22, 0.5, -10) or UDim2.new(0,2,0.5,-10)
        knob.BackgroundColor3 = default and Color3.fromRGB(0,170,255) or Color3.fromRGB(150,150,150)
        knob.Parent = toggleBtn
        createUICorner(knob, UDim.new(1,0))

        local state = default and true or false
        toggleBtn.MouseButton1Click:Connect(function()
            state = not state
            local newPos = state and UDim2.new(1, -22, 0.5, -10) or UDim2.new(0,2,0.5,-10)
            knob:TweenPosition(newPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.12, true)
            knob.BackgroundColor3 = state and Color3.fromRGB(0,170,255) or Color3.fromRGB(150,150,150)
            if callback then
                pcall(callback, state)
            end
        end)
        if callback then
            pcall(callback, state)
        end
        return container
    end

    function newPage:Textbox(title, placeholder, callback)
        local container = Instance.new("Frame")
        container.Size = UDim2.new(1, -10, 0, 30)
        container.BackgroundTransparency = 1
        container.Parent = page

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(0.38, 0, 1, 0)
        label.Position = UDim2.new(0,10,0,0)
        label.BackgroundTransparency = 1
        label.Text = title or ""
        label.TextColor3 = Color3.fromRGB(255,255,255)
        label.Font = Enum.Font.SourceSans
        label.TextSize = 16
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Parent = container

        local box = Instance.new("TextBox")
        box.Size = UDim2.new(0.58, -20, 0, 24)
        box.Position = UDim2.new(0.42, 0, 0.5, -12)
        box.BackgroundColor3 = Color3.fromRGB(50,50,50)
        box.BackgroundTransparency = 0.4
        box.PlaceholderText = placeholder or ""
        box.Text = ""
        box.TextColor3 = Color3.fromRGB(255,255,255)
        box.Font = Enum.Font.SourceSans
        box.TextSize = 16
        box.Parent = container
        createUICorner(box, UDim.new(0,6))

        box.FocusLost:Connect(function(enter)
            if enter and callback then
                pcall(callback, box.Text)
            end
        end)
        return container
    end

    function newPage:Dropdown(title, items, callback, multi)
    multi = multi or false
    items = items or {}

    local container = Instance.new("Frame", page)
    container.Size = UDim2.new(1, -12, 0, (subtext and 56 or 40))
    container.BackgroundTransparency = 1

    local lbl = Instance.new("TextLabel", container)
    lbl.Size = UDim2.new(0.4, 0, 0, 20)
    lbl.Position = UDim2.new(0, 6, 0, 6)
    lbl.BackgroundTransparency = 1
    lbl.Text = title or ""
    lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    lbl.Font = Enum.Font.SourceSans
    lbl.TextSize = 16
    lbl.TextXAlignment = Enum.TextXAlignment.Left

    local btn = Instance.new("TextButton", container)
    btn.Size = UDim2.new(0.56, -12, 0, 28)
    btn.Position = UDim2.new(0.44, 0, 0.5, -14)
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    btn.Text = "Select..."
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.SourceSans
    btn.TextSize = 14
    createUICorner(btn, UDim.new(0, 6))

    -- หา ScreenGui ที่ใหญ่สุด
    local rootGui = page:FindFirstAncestorOfClass("ScreenGui") or page.Parent

    local listFrame = Instance.new("ScrollingFrame")
    listFrame.Size = UDim2.new(0, btn.AbsoluteSize.X, 0, 0)
    listFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    listFrame.Visible = false
    listFrame.ScrollBarThickness = 6
    listFrame.ScrollingDirection = Enum.ScrollingDirection.Y
    listFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    listFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    listFrame.Parent = rootGui
    createUICorner(listFrame, UDim.new(0, 6))

    local listLayout = Instance.new("UIListLayout", listFrame)
    listLayout.SortOrder = Enum.SortOrder.LayoutOrder
    listLayout.Padding = UDim.new(0, 4)

    local searchBox = Instance.new("TextBox", listFrame)
    searchBox.Size = UDim2.new(1, -12, 0, 28)
    searchBox.Position = UDim2.new(0, 6, 0, 0)
    searchBox.PlaceholderText = "Search..."
    searchBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    searchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    searchBox.Text = ""
    createUICorner(searchBox, UDim.new(0, 6))

    local selected = {}
    local singleSelected = nil

    local function buildOptions(filter)
        -- ล้างปุ่มเก่าออก
        for _, child in ipairs(listFrame:GetChildren()) do
            if child:IsA("TextButton") and child ~= searchBox then
                child:Destroy()
            end
        end

        for _, v in ipairs(items) do
            local textV = tostring(v)
            if not filter or filter == "" or string.find(string.lower(textV), string.lower(filter)) then
                local opt = Instance.new("TextButton", listFrame)
                opt.Size = UDim2.new(1, -12, 0, 28)
                opt.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                opt.TextColor3 = Color3.fromRGB(255, 255, 255)
                opt.Text = textV
                opt.AutoButtonColor = false
                createUICorner(opt, UDim.new(0, 6))

                -- เช็ค highlight ที่เลือกอยู่
                if multi then
                    if selected[textV] then
                        opt.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
                    end
                else
                    if singleSelected == textV then
                        opt.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
                    end
                end

                opt.MouseButton1Click:Connect(function()
                    if multi then
                        if selected[textV] then
                            selected[textV] = nil
                            opt.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                        else
                            selected[textV] = true
                            opt.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
                        end
                        local result = {}
                        for k, _ in pairs(selected) do table.insert(result, k) end
                        btn.Text = (#result > 0) and table.concat(result, ", ") or "Select..."
                        if callback then pcall(callback, result) end
                    else
                        singleSelected = textV
                        btn.Text = textV
                        if callback then pcall(callback, textV) end
                        listFrame.Visible = false
                    end
                end)
            end
        end

        task.wait()
        local contentY = listLayout.AbsoluteContentSize.Y
        local target = math.min(220, contentY + 8)
        listFrame.Size = UDim2.new(0, btn.AbsoluteSize.X, 0, target)
    end

    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        buildOptions(searchBox.Text)
    end)

    btn.MouseButton1Click:Connect(function()
        listFrame.Visible = not listFrame.Visible
        if listFrame.Visible then
            buildOptions("")
            listFrame.Position = UDim2.new(0, btn.AbsolutePosition.X, 0, btn.AbsolutePosition.Y + btn.AbsoluteSize.Y)
        end
    end)

    return container
end
    
    if #library.pages:GetChildren() == 1 then
        for _, v in pairs(library.pages:GetChildren()) do
            if v:IsA("ScrollingFrame") then v.Visible = true end
        end
    end

    return newPage
end

-- Notification system (single, clean)
local activeNotifs = {}
function library:Notifile(title, msg, duration)
    local gui = CoreGui:FindFirstChild("redui")
    if not gui then return end
    if #activeNotifs >= 3 then
        local oldest = table.remove(activeNotifs, 1)
        if oldest and oldest.Destroy then oldest:Destroy() end
    end

    local notif = Instance.new("Frame")
    notif.Size = UDim2.new(0,300,0,60)
    notif.Position = UDim2.new(1, 310, 1, -80)
    notif.AnchorPoint = Vector2.new(1,1)
    notif.BackgroundColor3 = Color3.fromRGB(25,25,25)
    notif.BackgroundTransparency = 0.4
    notif.BorderSizePixel = 0
    notif.Parent = gui
    createUICorner(notif, UDim.new(0,8))

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -10, 1, 0)
    label.Position = UDim2.new(0,5,0,0)
    label.BackgroundTransparency = 1
    label.Text = msg or ""
    label.TextColor3 = Color3.fromRGB(255,255,255)
    label.Font = Enum.Font.SourceSans
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = notif

    for i, n in ipairs(activeNotifs) do
        local goalPos = UDim2.new(1, -10, 1, -10 - (70 * i))
        TweenService:Create(n, TweenInfo.new(0.18), {Position = goalPos}):Play()
    end

    table.insert(activeNotifs, notif)

    TweenService:Create(notif, TweenInfo.new(0.28), {Position = UDim2.new(1, -10, 1, -10)}):Play()

    task.delay(duration or 3, function()
        local tweenOut = TweenService:Create(notif, TweenInfo.new(0.28), {Position = UDim2.new(1, 310, 1, -10)})
        tweenOut:Play()
        tweenOut.Completed:Wait()

        for i, n in ipairs(activeNotifs) do
            if n == notif then
                table.remove(activeNotifs, i)
                break
            end
        end

        for i, n in ipairs(activeNotifs) do
            local goalPos = UDim2.new(1, -10, 1, -10 - (70 * (i-1)))
            TweenService:Create(n, TweenInfo.new(0.18), {Position = goalPos}):Play()
        end

        notif:Destroy()
    end)
end

library.tabs = tabs
return library
