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

   function newPage:Dropdown(title, items, callback)
    -- container (parent = page เพื่อให้เรียกใช้งานแบบ Tab1:Dropdown เหมือนเดิม)
    local container = Instance.new("Frame", page)
    container.Size = UDim2.new(1, -10, 0, 30)
    container.BackgroundTransparency = 1
    container.LayoutOrder = 0

    local titleLabel = Instance.new("TextLabel", container)
    titleLabel.Size = UDim2.new(0.5, 0, 1, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- แก้ค่าผิด
    titleLabel.Font = Enum.Font.SourceSans
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local arrow = Instance.new("TextLabel", container)
    arrow.Size = UDim2.new(0, 20, 1, 0)
    arrow.Position = UDim2.new(1, -20, 0, 0)
    arrow.BackgroundTransparency = 1
    arrow.Text = "«"
    arrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    arrow.Font = Enum.Font.SourceSans
    arrow.TextSize = 16

    local dropdownButton = Instance.new("TextButton", container)
    dropdownButton.Size = UDim2.new(0.5, -20, 1, 0)
    dropdownButton.Position = UDim2.new(0.5, 0, 0, 0)
    dropdownButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    dropdownButton.BackgroundTransparency = 0.4
    dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownButton.Font = Enum.Font.SourceSans
    dropdownButton.TextSize = 16
    dropdownButton.Text = " . . . "

    local opened = false
    local selectedOption = nil

    -- optionContainer เป็นลูกของ 'page' เหมือนโค้ดต้นฉบับ (เพื่อให้โผล่เหนือ UI ที่อาจอยู่ใน container เดียวกัน)
    local optionContainer = Instance.new("Frame", page)
    optionContainer.Size = UDim2.new(container.Size.X.Scale, container.Size.X.Offset, 0, 0)
    optionContainer.BackgroundTransparency = 0.4
    optionContainer.ClipsDescendants = true
    optionContainer.ZIndex = 60 -- ให้สูงเพื่อไม่ถูกบัง
    optionContainer.BorderSizePixel = 0

    local UIListLayout = Instance.new("UIListLayout", optionContainer)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 0)

    -- search box (อยู่ใน optionContainer)
    local searchBox = Instance.new("TextBox", optionContainer)
    searchBox.Size = UDim2.new(1, 0, 0, 25)
    searchBox.PlaceholderText = "🔍 Search..."
    searchBox.Text = ""
    searchBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    searchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    searchBox.ClearTextOnFocus = false
    searchBox.Font = Enum.Font.SourceSans
    searchBox.TextSize = 16
    searchBox.ZIndex = 61
    searchBox.LayoutOrder = 1

    -- ฟังก์ชันวาง optionContainer ให้อยู่ใต้ container เสมอ
    local function updateOptionPosition()
        -- ใช้ AbsoluteSize เพื่อวางให้ตรงขนาดจริงของ container
        local absY = container.AbsoluteSize.Y
        optionContainer.Position = UDim2.new(
            container.Position.X.Scale, container.Position.X.Offset,
            container.Position.Y.Scale, container.Position.Y.Offset + absY
        )
        optionContainer.Size = UDim2.new(container.Size.X.Scale, container.Size.X.Offset, 0, optionContainer.Size.Y.Offset)
    end
    -- เรียกครั้งแรก (บางครั้ง AbsoluteSize ยังไม่พร้อมทันที — เชื่อมสัญญาณไว้ด้วย)
    updateOptionPosition()
    container:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateOptionPosition)
    container:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateOptionPosition)

    -- สร้างรายการตัวเลือก (และคืนจำนวนตัวเลือกที่แสดงได้)
    local function createOptions(filter)
        -- ลบเฉพาะ TextButton เก่า (ไม่ลบ searchBox)
        for _, child in ipairs(optionContainer:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end

        local shown = 0
        for _, item in ipairs(items) do
            if filter == "" or string.find(string.lower(item), string.lower(filter)) then
                shown = shown + 1
                local option = Instance.new("TextButton", optionContainer)
                option.Size = UDim2.new(1, 0, 0, 25)
                option.BackgroundColor3 = (item == selectedOption) and Color3.fromRGB(90, 90, 90) or Color3.fromRGB(40, 40, 40)
                option.BackgroundTransparency = 0.4
                option.TextColor3 = Color3.fromRGB(255, 255, 255)
                option.Text = item
                option.Font = Enum.Font.SourceSans
                option.TextSize = 16
                option.ZIndex = 61
                option.LayoutOrder = shown + 1 -- searchBox = 1

                option.MouseEnter:Connect(function()
                    if item ~= selectedOption then
                        option.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                    end
                end)
                option.MouseLeave:Connect(function()
                    if item ~= selectedOption then
                        option.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                    end
                end)

                option.MouseButton1Click:Connect(function()
                    selectedOption = item
                    dropdownButton.Text = item
                    if callback then pcall(callback, item) end
                    -- ปิด dropdown
                    opened = false
                    arrow.Text = "«"
                    optionContainer:TweenSize(UDim2.new(optionContainer.Size.X.Scale, optionContainer.Size.X.Offset, 0, 0),
                        Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
                end)
            end
        end

        return shown
    end

    -- เมื่อพิมพ์ค้นหาให้สร้างตัวเลือกใหม่
    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        local count = createOptions(searchBox.Text)
        local totalHeight = (count * 25) + 25 -- options + searchBox
        optionContainer:TweenSize(UDim2.new(container.Size.X.Scale, container.Size.X.Offset, 0, totalHeight),
            Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.12, true)
    end)

    -- เปิด/ปิด dropdown
    dropdownButton.MouseButton1Click:Connect(function()
        opened = not opened
        arrow.Text = opened and "»" or "«"

        if opened then
            searchBox.Text = ""
            local count = createOptions("") -- คืนจำนวนที่แสดง
            local totalHeight = (count * 25) + 25
            updateOptionPosition()
            optionContainer:TweenSize(UDim2.new(container.Size.X.Scale, container.Size.X.Offset, 0, totalHeight),
                Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
        else
            optionContainer:TweenSize(UDim2.new(optionContainer.Size.X.Scale, optionContainer.Size.X.Offset, 0, 0),
                Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.12, true)
        end
    end)

    return container
end

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
