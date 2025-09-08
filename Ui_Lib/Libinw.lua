local library = {}
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

if CoreGui:FindFirstChild("redui") then
    CoreGui:FindFirstChild("redui"):Destroy()
end

function library:Win(title)
    local CoreGui = game:GetService("CoreGui")
    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")

    if CoreGui:FindFirstChild("redui") then
        CoreGui:FindFirstChild("redui"):Destroy()
    end

    local gui = Instance.new("ScreenGui", CoreGui)
    gui.Name = "redui"
    gui.ResetOnSpawn = false

    -- เมนูหลัก
    local main = Instance.new("Frame")
    main.Size = UDim2.new(0, 500, 0, 350)
    main.Position = UDim2.new(0.5, -250, 0.5, -175)
    main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)BackgroundTransparency = 0.4
    main.BackgroundTransparency = 0.3
    main.BorderSizePixel = 0
    main.Parent = gui
    main.ClipsDescendants = true

    -- เส้นขอบขาวรอบกล่อง
    local border = Instance.new("UIStroke", main)
    border.Thickness = 2
    border.Color = Color3.fromRGB(255, 255, 255)

-- toggle close
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "BankHubToggle"
toggleButton.AnchorPoint = Vector2.new(0, 0)
toggleButton.Size = UDim2.new(0, 28, 0, 28)
toggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
toggleButton.BackgroundTransparency = 0.2
toggleButton.Text = " X "
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 16
toggleButton.TextXAlignment = Enum.TextXAlignment.Center
toggleButton.TextYAlignment = Enum.TextYAlignment.Center
toggleButton.ZIndex = 10
toggleButton.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 6)
corner.Parent = toggleButton

local titleBar = Instance.new("TextLabel")
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleBar.BackgroundTransparency = 0.2
titleBar.Text = title or "Bank Hub"
titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBar.Font = Enum.Font.GothamBold
titleBar.TextSize = 20
titleBar.Parent = main
titleBar.Active = true

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

-- ✅ Fix: ตำแหน่งปุ่ม X ให้ติดมุมซ้ายบนของ main
RunService.RenderStepped:Connect(function()
	toggleButton.Position = UDim2.new(0, main.AbsolutePosition.X + 10, 0, main.AbsolutePosition.Y + 5)
end)

-- Toggle hide/show with animation
local isOpen = true
local fullSize = main.Size
local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

toggleButton.MouseButton1Click:Connect(function()
	if isOpen then
		local shrink = TweenService:Create(main, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)})
		shrink:Play()
		shrink.Completed:Once(function()
			main.Visible = false
			main.Size = fullSize
		end)
	else
		main.Visible = true
		main.Size = UDim2.new(0, 0, 0, 0)
		TweenService:Create(main, tweenInfo, {Size = fullSize}):Play()
	end
	isOpen = not isOpen
end)
    
local tabs = {}

function tabs:Taps(name)  
    local tabButton = Instance.new("TextButton", tabButtons)  
    tabButton.Size = UDim2.new(1, -10, 0, 30)  
    tabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    tabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    tabButton.BackgroundTransparency = 0.4  
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
    local btn = Instance.new("TextButton", page)
    btn.Size = UDim2.new(1, -10, 0, 35)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btn.BackgroundTransparency = 0.4
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 16
    btn.Text = text
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

    btn.MouseButton1Click:Connect(function()
        if callback then callback() end
    end)
end

function newPage:Label(text)
    local lbl = Instance.new("TextLabel", page)
    lbl.Size = UDim2.new(1, -10, 0, 30)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(200, 200, 200)
    lbl.Font = Enum.Font.SourceSans
    lbl.TextSize = 16
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Text = text
end

function newPage:Dropdown(parent, title, items, callback, subtext, multi)
    if typeof(parent) ~= "Instance" then
        multi = subtext
        subtext = callback
        callback = items
        items = title
        title = parent
        parent = page
    end

    local height = (subtext and #tostring(subtext) > 0) and 55 or 35
    local dropFrame = Instance.new("Frame", parent)
    dropFrame.Size = UDim2.new(1, -10, 0, height)
    dropFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    dropFrame.BackgroundTransparency = 0.5
    Instance.new("UICorner", dropFrame).CornerRadius = UDim.new(0, 6)

    local btn = Instance.new("TextButton", dropFrame)
    btn.Size = UDim2.new(1, -10, 0, 30)
    btn.Position = UDim2.new(0, 5, 0, 0)
    btn.BackgroundTransparency = 1
    btn.Text = ""

    local titleLabel = Instance.new("TextLabel", btn)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Size = UDim2.new(0.4, 0, 1, 0)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255,255,255)
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local valueLabel = Instance.new("TextLabel", btn)
    valueLabel.BackgroundTransparency = 1
    valueLabel.Size = UDim2.new(0.6, -5, 1, 0)
    valueLabel.Position = UDim2.new(0.4, 5, 0, 0)
    valueLabel.Text = "▼"
    valueLabel.TextColor3 = Color3.fromRGB(200,200,200)
    valueLabel.Font = Enum.Font.SourceSans
    valueLabel.TextSize = 16
    valueLabel.TextXAlignment = Enum.TextXAlignment.Right

    if subtext and typeof(subtext) == "string" and subtext ~= "" then
        local sub = Instance.new("TextLabel", dropFrame)
        sub.Size = UDim2.new(1, -20, 0, 20)
        sub.Position = UDim2.new(0, 10, 0, 32)
        sub.BackgroundTransparency = 1
        sub.TextColor3 = Color3.fromRGB(200, 200, 200)
        sub.Font = Enum.Font.SourceSansItalic
        sub.TextSize = 14
        sub.TextXAlignment = Enum.TextXAlignment.Left
        sub.TextWrapped = true
        sub.Text = subtext
    end

    local listFrame = Instance.new("ScrollingFrame", parent)
    listFrame.Size = UDim2.new(1, -10, 0, 0)
    listFrame.BackgroundTransparency = 1
    listFrame.ClipsDescendants = true
    listFrame.CanvasSize = UDim2.new(0,0,0,0)
    listFrame.ScrollBarThickness = 4

    local layout = Instance.new("UIListLayout", listFrame)
    layout.SortOrder = Enum.SortOrder.LayoutOrder

    local searchBox
    local selected = {}
    local opened = false

    local function updateButtonText()
        if multi then
            if #selected == 0 then
                valueLabel.Text = "▼"
            else
                if #selected <= 3 then
                    valueLabel.Text = table.concat(selected, ", ") .. " ▼"
                else
                    local shown = {selected[1], selected[2], selected[3]}
                    valueLabel.Text = table.concat(shown, ", ") .. " ... ("..#selected..") ▼"
                end
            end
        else
            if #selected == 0 then
                valueLabel.Text = "▼"
            else
                valueLabel.Text = selected[1] .. " ▼"
            end
        end
    end

    local function buildOptions(filter)
        for _, child in ipairs(listFrame:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end
        for i, v in ipairs(items) do
            if not filter or string.find(string.lower(v), string.lower(filter)) then
                local opt = Instance.new("TextButton", listFrame)
                opt.Size = UDim2.new(1, -10, 0, 30)
                opt.Position = UDim2.new(0, 5, 0, 0)
                opt.BackgroundColor3 = table.find(selected, v) and Color3.fromRGB(0,150,0) or Color3.fromRGB(60, 60, 60)
                opt.Text = v
                opt.TextColor3 = Color3.fromRGB(255, 255, 255)
                opt.Font = Enum.Font.SourceSans
                opt.TextSize = 16
                Instance.new("UICorner", opt).CornerRadius = UDim.new(0, 6)

                opt.MouseButton1Click:Connect(function()
                    if multi then
                        local idx = table.find(selected, v)
                        if idx then
                            table.remove(selected, idx)
                            opt.BackgroundColor3 = Color3.fromRGB(60,60,60)
                        else
                            table.insert(selected, v)
                            opt.BackgroundColor3 = Color3.fromRGB(0,150,0)
                        end
                        updateButtonText()
                        if callback then callback(selected) end
                    else
                        selected = {v}
                        updateButtonText()
                        if callback then callback(v) end
                        opened = false
                        listFrame:TweenSize(UDim2.new(1, -10, 0, 0), "Out", "Quad", 0.25, true)
                    end
                end)
            end
        end
        listFrame.CanvasSize = UDim2.new(0,0,0,#items*30 + 35)
    end

    btn.MouseButton1Click:Connect(function()
        opened = not opened
        listFrame:TweenSize(
            opened and UDim2.new(1, -10, 0, math.min(#items+1, 8) * 30) or UDim2.new(1, -10, 0, 0),
            "Out", "Quad", 0.25, true
        )
        if opened then
            if not searchBox then
                searchBox = Instance.new("TextBox", listFrame)
                searchBox.Size = UDim2.new(1, -10, 0, 25)
                searchBox.Position = UDim2.new(0, 5, 0, 0)
                searchBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                searchBox.Text = ""
                searchBox.PlaceholderText = "ค้นหา..."
                searchBox.TextColor3 = Color3.fromRGB(255,255,255)
                searchBox.Font = Enum.Font.SourceSans
                searchBox.TextSize = 14
                Instance.new("UICorner", searchBox).CornerRadius = UDim.new(0, 6)

                searchBox:GetPropertyChangedSignal("Text"):Connect(function()
                    buildOptions(searchBox.Text)
                end)
            end
            buildOptions(searchBox.Text)
        end
    end)
end

function newPage:Toggle(parent, text, default, callback, subtext)
    if typeof(parent) ~= "Instance" then
        subtext = callback
        callback = default
        default = text
        text = parent
        parent = page
    end

    local height = subtext and 65 or 45
    local toggleFrame = Instance.new("Frame", parent)
    toggleFrame.Size = UDim2.new(1, -10, 0, height)
    toggleFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    toggleFrame.BackgroundTransparency = 0.6
    toggleFrame.BorderSizePixel = 0
    Instance.new("UICorner", toggleFrame).CornerRadius = UDim.new(0, 6)

    local label = Instance.new("TextLabel", toggleFrame)
    label.Size = UDim2.new(1, -60, 0, 20)
    label.Position = UDim2.new(0, 10, 0, 5)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.SourceSans
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Text = text

    -- Subtext
    if subtext then
        local sub = Instance.new("TextLabel", toggleFrame)
        sub.Size = UDim2.new(1, -20, 0, 30)
        sub.Position = UDim2.new(0, 10, 0, 28)
        sub.BackgroundTransparency = 1
        sub.TextColor3 = Color3.fromRGB(200, 200, 200)
        sub.Font = Enum.Font.SourceSansItalic
        sub.TextSize = 14
        sub.TextXAlignment = Enum.TextXAlignment.Left
        sub.TextWrapped = true
        sub.Text = subtext
    end

    local toggleBtn = Instance.new("TextButton", toggleFrame)
    toggleBtn.Size = UDim2.new(0, 40, 0, 20)
    toggleBtn.Position = UDim2.new(1, -45, 0, 10)
    toggleBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    toggleBtn.BackgroundTransparency = 0.6
    toggleBtn.Text = ""
    toggleBtn.BorderSizePixel = 0
    toggleBtn.AutoButtonColor = false
    Instance.new("UICorner", toggleBtn).CornerRadius = UDim.new(1, 0)

    local circle = Instance.new("Frame", toggleBtn)
    circle.Size = UDim2.new(0, 18, 0, 18)
    circle.Position = default and UDim2.new(1, -19, 0, 1) or UDim2.new(0, 1, 0, 1)
    circle.BackgroundColor3 = default and Color3.fromRGB(0, 170, 255) or Color3.fromRGB(150, 150, 150)
    circle.BorderSizePixel = 0
    Instance.new("UICorner", circle).CornerRadius = UDim.new(1, 0)

    local toggled = default
    toggleBtn.MouseButton1Click:Connect(function()
        toggled = not toggled
        circle:TweenPosition(toggled and UDim2.new(1, -19, 0, 1) or UDim2.new(0, 1, 0, 1), "Out", "Quad", 0.15, true)
        circle.BackgroundColor3 = toggled and Color3.fromRGB(0, 170, 255) or Color3.fromRGB(150, 150, 150)
        if callback then callback(toggled) end
    end)
end

function newPage:Textbox(title, placeholder, callback)
    local container = Instance.new("Frame", page)
    container.Size = UDim2.new(1, -10, 0, 30)
    container.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    container.BackgroundTransparency = 1
    container.BorderSizePixel = 0

    local label = Instance.new("TextLabel", container)
    label.Size = UDim2.new(0.4, 0, 1, 0)
    label.Position = UDim2.new(0, 10, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = title
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.SourceSans
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left

    local box = Instance.new("TextBox", container)
    box.Size = UDim2.new(0.5, -20, 0, 25)
    box.Position = UDim2.new(0.5, 0, 0.5, -12)
    box.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    box.BackgroundTransparency = 0.4
    box.PlaceholderText = placeholder or "Type..."
    box.Text = ""
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.Font = Enum.Font.SourceSans
    box.TextSize = 16

    box.FocusLost:Connect(function(enter)
        if enter and callback then
            pcall(callback, box.Text)
        end
    end)

    -- มุมโค้ง
    local uic1 = Instance.new("UICorner", container)
    uic1.CornerRadius = UDim.new(0, 6)

    local uic2 = Instance.new("UICorner", box)
    uic2.CornerRadius = UDim.new(0, 4)
end

function newPage:Dropdown(title, items, callback)
    local container = Instance.new("Frame", page)
    container.Size = UDim2.new(1, -10, 0, 30)
    container.BackgroundTransparency = 0.4
    container.LayoutOrder = 0

    local titleLabel = Instance.new("TextLabel", container)
    titleLabel.Size = UDim2.new(0.5, 0, 1, 0)
    titleLabel.BackgroundTransparency = 0.4
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.SourceSans
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local arrow = Instance.new("TextLabel", container)
    arrow.Size = UDim2.new(0, 20, 1, 0)
    arrow.Position = UDim2.new(1, -20, 0, 0)
    arrow.BackgroundTransparency = 0.4
    arrow.Text = "◂"
    arrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    arrow.Font = Enum.Font.SourceSans
    arrow.TextSize = 16

    local dropdownButton = Instance.new("TextButton", container)
    dropdownButton.Size = UDim2.new(0.5, -20, 1, 0)
    dropdownButton.Position = UDim2.new(0.5, 0, 0, 0)
    dropdownButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    dropdownButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    dropdownButton.BackgroundTransparency = 0.4
    dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownButton.Font = Enum.Font.SourceSans
    dropdownButton.TextSize = 16
    dropdownButton.Text = " . . . "

    local opened = false
    local optionContainer = Instance.new("Frame", page)
    optionContainer.Size = UDim2.new(1, -10, 0, 0)
    optionContainer.BackgroundTransparency = 0.4
    optionContainer.ClipsDescendants = true

    local UIListLayout = Instance.new("UIListLayout", optionContainer)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    dropdownButton.MouseButton1Click:Connect(function()
        opened = not opened
        arrow.Text = opened and "↓" or "←"
        optionContainer:TweenSize(
            UDim2.new(1, -10, 0, opened and (#items * 25) or 0),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quad,
            0.2,
            true
        )
        if opened then
            for _, child in ipairs(optionContainer:GetChildren()) do
                if child:IsA("TextButton") then child:Destroy() end
            end
            for _, item in ipairs(items) do
                local option = Instance.new("TextButton", optionContainer)
                option.Size = UDim2.new(1, 0, 0, 25)
                option.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                option.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                option.BackgroundTransparency = 0.4
                option.TextColor3 = Color3.fromRGB(255, 255, 255)
                option.Text = item
                option.Font = Enum.Font.SourceSans
                option.TextSize = 16
                option.MouseButton1Click:Connect(function()
                    dropdownButton.Text = item
                    if callback then callback(item) end
                    opened = false
                    arrow.Text = "←"
                    optionContainer:TweenSize(
                        UDim2.new(1, -10, 0, 0),
                        Enum.EasingDirection.Out,
                        Enum.EasingStyle.Quad,
                        0.2,
                        true
                    )
                end)
            end
        else
            for _, child in ipairs(optionContainer:GetChildren()) do
                if child:IsA("TextButton") then child:Destroy() end
            end
        end
    end)
end

return newPage
    end

    return tabs
end

local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local activeNotifs = {}

function library:Notifile(title, msg, duration)
    local gui = CoreGui:FindFirstChild("redui")
    if not gui then return end

    -- Limit to 3 notifications
    if #activeNotifs >= 3 then
        local oldest = table.remove(activeNotifs, 1)
        oldest:Destroy()
    end

    -- Create Notification
    local notif = Instance.new("Frame")
    notif.Size = UDim2.new(0, 300, 0, 60)
    notif.Position = UDim2.new(1, 310, 1, -80) -- Start offscreen
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

    -- Shift up all current notifications
    for i, n in ipairs(activeNotifs) do
        local goalPos = UDim2.new(1, -10, 1, -10 - (70 * (i)))
        TweenService:Create(n, TweenInfo.new(0.2), { Position = goalPos }):Play()
    end

    table.insert(activeNotifs, notif)

    -- Tween In (Slide in from right)
    TweenService:Create(notif, TweenInfo.new(0.3), {
        Position = UDim2.new(1, -10, 1, -10)
    }):Play()

    -- Delay and Tween Out (Slide out to right then destroy)
    task.delay(duration or 3, function()
        local tweenOut = TweenService:Create(notif, TweenInfo.new(0.3), {
            Position = UDim2.new(1, 310, 1, -10)
        })
        tweenOut:Play()
        tweenOut.Completed:Wait()

        -- Remove from active list
        for i, n in ipairs(activeNotifs) do
            if n == notif then
                table.remove(activeNotifs, i)
                break
            end
        end

        -- Shift remaining notifs down
        for i, n in ipairs(activeNotifs) do
            local goalPos = UDim2.new(1, -10, 1, -10 - (70 * (i - 1)))
            TweenService:Create(n, TweenInfo.new(0.2), { Position = goalPos }):Play()
        end

        notif:Destroy()
    end)
end

local activeNotifs = {}

function library:Notifile(title, msg, duration)
    local gui = CoreGui:FindFirstChild("redui")
    if not gui then return end

    -- Limit to 3 notifications
    if #activeNotifs >= 3 then
        local oldest = table.remove(activeNotifs, 1)
        oldest:Destroy()
    end

    -- Create Notification
    local notif = Instance.new("Frame")
    notif.Size = UDim2.new(0, 300, 0, 60)
    notif.Position = UDim2.new(1, 310, 1, -80) -- Start offscreen
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

    -- Shift up all current notifications
    for i, n in ipairs(activeNotifs) do
        local goalPos = UDim2.new(1, -10, 1, -10 - (70 * (i)))
        TweenService:Create(n, TweenInfo.new(0.2), { Position = goalPos }):Play()
    end

    table.insert(activeNotifs, notif)

    -- Tween In (Slide in from right)
    TweenService:Create(notif, TweenInfo.new(0.3), {
        Position = UDim2.new(1, -10, 1, -10)
    }):Play()

    -- Delay and Tween Out (Slide out to right then destroy)
    task.delay(duration or 3, function()
        local tweenOut = TweenService:Create(notif, TweenInfo.new(0.3), {
            Position = UDim2.new(1, 310, 1, -10)
        })
        tweenOut:Play()
        tweenOut.Completed:Wait()

        -- Remove from active list
        for i, n in ipairs(activeNotifs) do
            if n == notif then
                table.remove(activeNotifs, i)
                break
            end
        end

        -- Shift remaining notifs down
        for i, n in ipairs(activeNotifs) do
            local goalPos = UDim2.new(1, -10, 1, -10 - (70 * (i - 1)))
            TweenService:Create(n, TweenInfo.new(0.2), { Position = goalPos }):Play()
        end

        notif:Destroy()
    end)
end

return library
