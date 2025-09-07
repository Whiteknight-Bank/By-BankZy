--[[ Revamped UI Library (Full Version)

ปรับ Dropdown ให้โปร่งและโค้ง

เพิ่ม DropdownTab สำหรับใส่ element ย่อย

Toggle/Button รองรับคำอธิบายหลายบรรทัด --]]


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
local RunService = game:GetService("RunService")

if CoreGui:FindFirstChild("redui") then
    CoreGui:FindFirstChild("redui"):Destroy()
end

local gui = Instance.new("ScreenGui", CoreGui)
gui.Name = "redui"
gui.ResetOnSpawn = false

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 550, 0, 380)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BackgroundTransparency = 0.3
main.BorderSizePixel = 0
main.Parent = gui
main.ClipsDescendants = true

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 8)

local border = Instance.new("UIStroke", main)
border.Thickness = 2
border.Color = Color3.fromRGB(255, 255, 255)

local toggleButton = Instance.new("TextButton")
toggleButton.Name = "BankHubToggle"
toggleButton.Size = UDim2.new(0, 28, 0, 28)
toggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
toggleButton.BackgroundTransparency = 0.2
toggleButton.Text = " X "
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 16
toggleButton.ZIndex = 10
toggleButton.Parent = gui

Instance.new("UICorner", toggleButton).CornerRadius = UDim.new(0, 6)

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
main.Active = true
main.Selectable = true

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
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
    
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
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

RunService.RenderStepped:Connect(function()
    toggleButton.Position = UDim2.new(0, main.AbsolutePosition.X + 10, 0, main.AbsolutePosition.Y + 5)
end)

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
            if v:IsA("ScrollingFrame") then v.Visible = false end
        end
    end

    tabButton.MouseButton1Click:Connect(function()
        hideAllPages()
        page.Visible = true
    end)

    local newPage = {}
    
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

function newPage:Dropdown(a1, a2, a3, a4, a5, a6)
    local parent, title, items, callback, subtext, multi, opts = nil, nil, nil, nil, nil, false, {}

    if typeof(a1) == "Instance" then
        parent   = a1
        title    = a2
        items    = a3 or {}
        callback = a4
        subtext  = a5
        multi    = a6
    else
        parent   = page -- assumes `page` exists in your scope likeก่อน
        title    = a1
        items    = a2 or {}
        callback = a3
        subtext  = a4
        multi    = a5
    end

    if typeof(subtext) == "table" then
        opts = subtext
        subtext = opts.subtext or opts.label or nil
        if type(opts.multi) == "boolean" then multi = opts.multi end
        if opts.showNames ~= nil then opts.showNames = opts.showNames else opts.showNames = true end
        if opts.maxNames then opts.maxNames = tonumber(opts.maxNames) or 3 else opts.maxNames = 3 end
        if opts.placeholder then opts.placeholder = tostring(opts.placeholder) else opts.placeholder = "🔍 ค้นหา..." end
    else
        if type(subtext) == "string" then opts.subtext = subtext end
        if type(multi) ~= "boolean" then multi = false end
        opts.showNames = (opts.showNames ~= nil) and opts.showNames or true
        opts.maxNames = opts.maxNames or 3
        opts.placeholder = opts.placeholder or "🔍 ค้นหา..."
    end

    items = items or {}
    callback = callback or function() end

    local baseHeight = (opts.subtext and #tostring(opts.subtext) > 0) and 55 or 35
    local dropFrame = Instance.new("Frame")
    dropFrame.Name = "DropdownFrame"
    dropFrame.Parent = parent
    dropFrame.Size = UDim2.new(1, -10, 0, baseHeight)
    dropFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    dropFrame.BackgroundTransparency = 0.5
    dropFrame.ClipsDescendants = false -- important: ให้ children (listFrame) โผล่ออกมาได้
    Instance.new("UICorner", dropFrame).CornerRadius = UDim.new(0, 6)

    local btn = Instance.new("TextButton")
    btn.Parent = dropFrame
    btn.Size = UDim2.new(1, -10, 0, 30)
    btn.Position = UDim2.new(0, 5, 0, 0)
    btn.BackgroundTransparency = 1
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 16
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Text = title .. " ▼"

    if opts.subtext and typeof(opts.subtext) == "string" and opts.subtext ~= "" then
        local sub = Instance.new("TextLabel")
        sub.Parent = dropFrame
        sub.Size = UDim2.new(1, -20, 0, 20)
        sub.Position = UDim2.new(0, 10, 0, 32)
        sub.BackgroundTransparency = 1
        sub.TextColor3 = Color3.fromRGB(200,200,200)
        sub.Font = Enum.Font.SourceSansItalic
        sub.TextSize = 14
        sub.TextXAlignment = Enum.TextXAlignment.Left
        sub.TextWrapped = true
        sub.Text = opts.subtext
    elseif opts.subtext and typeof(opts.subtext) ~= "string" and typeof(opts.subtext) == "Instance" then
        opts.subtext.Parent = dropFrame
    end

    local listFrame = Instance.new("Frame")
    listFrame.Name = "DropdownList"
    listFrame.Parent = dropFrame
    listFrame.Position = UDim2.new(0, 5, 1, 5) -- อยู่ด้านล่างของ dropFrame (offset 5px)
    listFrame.Size = UDim2.new(1, -10, 0, 0) -- เริ่มด้วยสูง 0 แล้วค่อย Tween
    listFrame.BackgroundTransparency = 1
    listFrame.ClipsDescendants = true
    listFrame.ZIndex = dropFrame.ZIndex + 50

    local searchBox = Instance.new("TextBox")
    searchBox.Parent = listFrame
    searchBox.Size = UDim2.new(1, 0, 0, 30)
    searchBox.Position = UDim2.new(0, 0, 0, 0)
    searchBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    searchBox.Text = ""
    searchBox.PlaceholderText = opts.placeholder or "🔍 ค้นหา..."
    searchBox.TextColor3 = Color3.fromRGB(255,255,255)
    searchBox.Font = Enum.Font.SourceSans
    searchBox.TextSize = 14
    Instance.new("UICorner", searchBox).CornerRadius = UDim.new(0, 6)
    searchBox.ZIndex = listFrame.ZIndex + 1

    local opened = false
    local selected = {} -- เก็บค่าที่เลือก (table)
    local function isSelected(val) return table.find(selected, val) ~= nil end

    local function updateButtonText()
        if multi then
            if #selected == 0 then
                btn.Text = title .. " ▼"
            else
                if opts.showNames then
                    if #selected <= opts.maxNames then
                        btn.Text = table.concat(selected, ", ") .. " ▼"
                    else
                        local t = {}
                        for i=1, opts.maxNames do table.insert(t, selected[i]) end
                        btn.Text = table.concat(t, ", ") .. " ..." .. " ("..#selected..") ▼"
                    end
                else
                    btn.Text = title .. " (" .. #selected .. " เลือกแล้ว) ▼"
                end
            end
        else
            if #selected == 0 then
                btn.Text = title .. " ▼"
            else
                btn.Text = selected[1] .. " ▼"
            end
        end
    end

    local function refreshOptions(filterText)
        for _, child in ipairs(listFrame:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end

        local y = 30 -- เริ่มที่ใต้ searchBox (height = 30)
        local visibleCount = 0
        local lowerFilter = (filterText and #filterText>0) and string.lower(filterText) or nil

        for _, v in ipairs(items) do
            if (not lowerFilter) or (string.find(string.lower(tostring(v)), lowerFilter, 1, true)) then
                local opt = Instance.new("TextButton")
                opt.Parent = listFrame
                opt.Size = UDim2.new(1, 0, 0, 30)
                opt.Position = UDim2.new(0, 0, 0, y)
                opt.Text = tostring(v)
                opt.TextColor3 = Color3.fromRGB(255,255,255)
                opt.Font = Enum.Font.SourceSans
                opt.TextSize = 16
                opt.BackgroundColor3 = isSelected(v) and Color3.fromRGB(80,120,80) or Color3.fromRGB(60,60,60)
                Instance.new("UICorner", opt).CornerRadius = UDim.new(0, 6)
                opt.ZIndex = listFrame.ZIndex + 1

                opt.MouseButton1Click:Connect(function()
                    if multi then
                        if isSelected(v) then
                            for i,val in ipairs(selected) do
                                if val == v then table.remove(selected, i); break end
                            end
                        else
                            table.insert(selected, v)
                     end
                        refreshOptions(searchBox.Text)
                        updateButtonText()
                        if callback then
                            local copy = {}
                            for i,val in ipairs(selected) do copy[i] = val end
                            callback(copy)
                        end
                    else
                        selected = {v}
                        updateButtonText()
                        if callback then callback(v) end
                        opened = false
                        listFrame:TweenSize(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.15, true)
                    end
                end)

                y = y + 30
                visibleCount = visibleCount + 1
            end
        end

        local finalHeight = (visibleCount > 0) and (y + 5) or 30 -- ถ้าไม่มี option, ให้โชว์แค่ searchBox
        if opened then
            listFrame:TweenSize(UDim2.new(1, 0, 0, finalHeight), "Out", "Quad", 0.18, true)
        else
            listFrame.Size = UDim2.new(1, 0, 0, 0)
        end
    end

    btn.MouseButton1Click:Connect(function()
        opened = not opened
        if opened then
            btn.Text = btn.Text:gsub("▼", "▶")
            refreshOptions(searchBox.Text)
        else
            updateButtonText()
            listFrame:TweenSize(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.15, true)
        end
    end)

    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        if opened then refreshOptions(searchBox.Text) end
    end)

    local UserInputService = game:GetService("UserInputService")
    local function pointInGui(point, gui)
        local ap = gui.AbsolutePosition
        local asz = gui.AbsoluteSize
        return point.X >= ap.X and point.X <= ap.X + asz.X and point.Y >= ap.Y and point.Y <= ap.Y + asz.Y
    end
    local conn
    conn = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not opened then return end
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local loc = UserInputService:GetMouseLocation()
            -- ตรวจว่า click อยู่ใน dropFrame หรือ listFrame หรือไม่, ถ้าไม่ ให้ปิด
            if not (pointInGui(loc, dropFrame) or pointInGui(loc, listFrame)) then
                opened = false
                updateButtonText()
                listFrame:TweenSize(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.12, true)
            end
        end
    end)

    updateButtonText()

    return {
        Frame = dropFrame,
        Button = btn,
        List = listFrame,
        GetSelected = function() local c = {}; for i,v in ipairs(selected) do c[i]=v end; return c end,
        SetSelected = function(t)
            selected = {}
            if type(t) == "table" then
                for _,v in ipairs(t) do table.insert(selected, v) end
            elseif t ~= nil then
                table.insert(selected, t)
            end
            updateButtonText()
        end,
        Destroy = function()
            if conn then conn:Disconnect() end
            dropFrame:Destroy()
        end
    }
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

function newPage:DropdownTab(title)
    local tabFrame = Instance.new("Frame", page)
    tabFrame.Size = UDim2.new(1, -10, 0, 30)
    tabFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    tabFrame.BackgroundTransparency = 0.8
    Instance.new("UICorner", tabFrame).CornerRadius = UDim.new(0, 6)

    local header = Instance.new("TextButton", tabFrame)
    header.Size = UDim2.new(1, -10, 1, 0)
    header.Position = UDim2.new(0, 5, 0, 0)
    header.BackgroundTransparency = 1
    header.Text = "▶ " .. title
    header.TextColor3 = Color3.fromRGB(255, 255, 255)
    header.Font = Enum.Font.SourceSansBold
    header.TextSize = 16
    header.TextXAlignment = Enum.TextXAlignment.Left

local container = Instance.new("ScrollingFrame", page)
container.Size = UDim2.new(1, -10, 0, 0)
container.BackgroundTransparency = 1
container.ClipsDescendants = true
container.ScrollBarThickness = 4  -- เพิ่ม scrollbar บาง ๆ
container.CanvasSize = UDim2.new(0,0,0,0) -- เริ่มเป็น 0

local layout = Instance.new("UIListLayout", container)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 4)

layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    container.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
end)

    local opened = false
    header.MouseButton1Click:Connect(function()
        opened = not opened
        header.Text = opened and "▼ " .. title or "▶ " .. title
        container:TweenSize(
            opened and UDim2.new(1, -10, 0, layout.AbsoluteContentSize.Y + 10) or UDim2.new(1, -10, 0, 0),
            "Out", "Quad", 0.25, true
        )
    end)

    local subPage = {}

    function subPage:Button(text, callback)
        local btn = Instance.new("TextButton", container) -- 🔹 parent = container
        btn.Size = UDim2.new(1, -10, 0, 30)
        btn.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.SourceSans
        btn.TextSize = 16
        btn.Text = text
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        btn.MouseButton1Click:Connect(function()
            if callback then callback() end
        end)
    end

    function subPage:Toggle(parent, text, default, callback, subtext)
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
            
   function subPage:Toggle(text, default, callback)
    return newPage:Toggle(container, text, default, callback)
end

    function subPage:Label(text)
        local lbl = Instance.new("TextLabel", container) -- 🔹 parent = container
        lbl.Size = UDim2.new(1, -10, 0, 25)
        lbl.BackgroundTransparency = 1
        lbl.TextColor3 = Color3.fromRGB(200, 200, 200)
        lbl.Font = Enum.Font.SourceSans
        lbl.TextSize = 15
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.Text = text
    end

function subPage:Dropdown(a1, a2, a3, a4, a5, a6)
    local parent, title, items, callback, subtext, multi, opts = nil, nil, nil, nil, nil, false, {}

    if typeof(a1) == "Instance" then
        parent   = a1
        title    = a2
        items    = a3 or {}
        callback = a4
        subtext  = a5
        multi    = a6
    else
        parent   = page -- assumes `page` exists in your scope likeก่อน
        title    = a1
        items    = a2 or {}
        callback = a3
        subtext  = a4
        multi    = a5
    end

    if typeof(subtext) == "table" then
        opts = subtext
        subtext = opts.subtext or opts.label or nil
        if type(opts.multi) == "boolean" then multi = opts.multi end
        if opts.showNames ~= nil then opts.showNames = opts.showNames else opts.showNames = true end
        if opts.maxNames then opts.maxNames = tonumber(opts.maxNames) or 3 else opts.maxNames = 3 end
        if opts.placeholder then opts.placeholder = tostring(opts.placeholder) else opts.placeholder = "🔍 ค้นหา..." end
    else
        if type(subtext) == "string" then opts.subtext = subtext end
        if type(multi) ~= "boolean" then multi = false end
        opts.showNames = (opts.showNames ~= nil) and opts.showNames or true
        opts.maxNames = opts.maxNames or 3
        opts.placeholder = opts.placeholder or "🔍 ค้นหา..."
    end

    items = items or {}
    callback = callback or function() end

    local baseHeight = (opts.subtext and #tostring(opts.subtext) > 0) and 55 or 35
    local dropFrame = Instance.new("Frame")
    dropFrame.Name = "DropdownFrame"
    dropFrame.Parent = parent
    dropFrame.Size = UDim2.new(1, -10, 0, baseHeight)
    dropFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    dropFrame.BackgroundTransparency = 0.5
    dropFrame.ClipsDescendants = false -- important: ให้ children (listFrame) โผล่ออกมาได้
    Instance.new("UICorner", dropFrame).CornerRadius = UDim.new(0, 6)

    local btn = Instance.new("TextButton")
    btn.Parent = dropFrame
    btn.Size = UDim2.new(1, -10, 0, 30)
    btn.Position = UDim2.new(0, 5, 0, 0)
    btn.BackgroundTransparency = 1
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 16
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Text = title .. " ▼"

    if opts.subtext and typeof(opts.subtext) == "string" and opts.subtext ~= "" then
        local sub = Instance.new("TextLabel")
        sub.Parent = dropFrame
        sub.Size = UDim2.new(1, -20, 0, 20)
        sub.Position = UDim2.new(0, 10, 0, 32)
        sub.BackgroundTransparency = 1
        sub.TextColor3 = Color3.fromRGB(200,200,200)
        sub.Font = Enum.Font.SourceSansItalic
        sub.TextSize = 14
        sub.TextXAlignment = Enum.TextXAlignment.Left
        sub.TextWrapped = true
        sub.Text = opts.subtext
    elseif opts.subtext and typeof(opts.subtext) ~= "string" and typeof(opts.subtext) == "Instance" then
        opts.subtext.Parent = dropFrame
    end

    local listFrame = Instance.new("Frame")
    listFrame.Name = "DropdownList"
    listFrame.Parent = dropFrame
    listFrame.Position = UDim2.new(0, 5, 1, 5) -- อยู่ด้านล่างของ dropFrame (offset 5px)
    listFrame.Size = UDim2.new(1, -10, 0, 0) -- เริ่มด้วยสูง 0 แล้วค่อย Tween
    listFrame.BackgroundTransparency = 1
    listFrame.ClipsDescendants = true
    listFrame.ZIndex = dropFrame.ZIndex + 50

    local searchBox = Instance.new("TextBox")
    searchBox.Parent = listFrame
    searchBox.Size = UDim2.new(1, 0, 0, 30)
    searchBox.Position = UDim2.new(0, 0, 0, 0)
    searchBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    searchBox.Text = ""
    searchBox.PlaceholderText = opts.placeholder or "🔍 ค้นหา..."
    searchBox.TextColor3 = Color3.fromRGB(255,255,255)
    searchBox.Font = Enum.Font.SourceSans
    searchBox.TextSize = 14
    Instance.new("UICorner", searchBox).CornerRadius = UDim.new(0, 6)
    searchBox.ZIndex = listFrame.ZIndex + 1

    local opened = false
    local selected = {} -- เก็บค่าที่เลือก (table)
    local function isSelected(val) return table.find(selected, val) ~= nil end

    local function updateButtonText()
        if multi then
            if #selected == 0 then
                btn.Text = title .. " ▼"
            else
                if opts.showNames then
                    if #selected <= opts.maxNames then
                        btn.Text = table.concat(selected, ", ") .. " ▼"
                    else
                        local t = {}
                        for i=1, opts.maxNames do table.insert(t, selected[i]) end
                        btn.Text = table.concat(t, ", ") .. " ..." .. " ("..#selected..") ▼"
                    end
                else
                    btn.Text = title .. " (" .. #selected .. " เลือกแล้ว) ▼"
                end
            end
        else
            if #selected == 0 then
                btn.Text = title .. " ▼"
            else
                btn.Text = selected[1] .. " ▼"
            end
        end
    end

    local function refreshOptions(filterText)
        for _, child in ipairs(listFrame:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end

        local y = 30 -- เริ่มที่ใต้ searchBox (height = 30)
        local visibleCount = 0
        local lowerFilter = (filterText and #filterText>0) and string.lower(filterText) or nil

        for _, v in ipairs(items) do
            if (not lowerFilter) or (string.find(string.lower(tostring(v)), lowerFilter, 1, true)) then
                local opt = Instance.new("TextButton")
                opt.Parent = listFrame
                opt.Size = UDim2.new(1, 0, 0, 30)
                opt.Position = UDim2.new(0, 0, 0, y)
                opt.Text = tostring(v)
                opt.TextColor3 = Color3.fromRGB(255,255,255)
                opt.Font = Enum.Font.SourceSans
                opt.TextSize = 16
                opt.BackgroundColor3 = isSelected(v) and Color3.fromRGB(80,120,80) or Color3.fromRGB(60,60,60)
                Instance.new("UICorner", opt).CornerRadius = UDim.new(0, 6)
                opt.ZIndex = listFrame.ZIndex + 1

                opt.MouseButton1Click:Connect(function()
                    if multi then
                        if isSelected(v) then
                            for i,val in ipairs(selected) do
                                if val == v then table.remove(selected, i); break end
                            end
                        else
                            table.insert(selected, v)
                     end
                        refreshOptions(searchBox.Text)
                        updateButtonText()
                        if callback then
                            local copy = {}
                            for i,val in ipairs(selected) do copy[i] = val end
                            callback(copy)
                        end
                    else
                        selected = {v}
                        updateButtonText()
                        if callback then callback(v) end
                        opened = false
                        listFrame:TweenSize(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.15, true)
                    end
                end)

                y = y + 30
                visibleCount = visibleCount + 1
            end
        end

        local finalHeight = (visibleCount > 0) and (y + 5) or 30 -- ถ้าไม่มี option, ให้โชว์แค่ searchBox
        if opened then
            listFrame:TweenSize(UDim2.new(1, 0, 0, finalHeight), "Out", "Quad", 0.18, true)
        else
            listFrame.Size = UDim2.new(1, 0, 0, 0)
        end
    end

    btn.MouseButton1Click:Connect(function()
        opened = not opened
        if opened then
            btn.Text = btn.Text:gsub("▼", "▶")
            refreshOptions(searchBox.Text)
        else
            updateButtonText()
            listFrame:TweenSize(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.15, true)
        end
    end)

    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        if opened then refreshOptions(searchBox.Text) end
    end)

    local UserInputService = game:GetService("UserInputService")
    local function pointInGui(point, gui)
        local ap = gui.AbsolutePosition
        local asz = gui.AbsoluteSize
        return point.X >= ap.X and point.X <= ap.X + asz.X and point.Y >= ap.Y and point.Y <= ap.Y + asz.Y
    end
    local conn
    conn = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not opened then return end
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local loc = UserInputService:GetMouseLocation()
            -- ตรวจว่า click อยู่ใน dropFrame หรือ listFrame หรือไม่, ถ้าไม่ ให้ปิด
            if not (pointInGui(loc, dropFrame) or pointInGui(loc, listFrame)) then
                opened = false
                updateButtonText()
                listFrame:TweenSize(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.12, true)
            end
        end
    end)

    updateButtonText()

    return {
        Frame = dropFrame,
        Button = btn,
        List = listFrame,
        GetSelected = function() local c = {}; for i,v in ipairs(selected) do c[i]=v end; return c end,
        SetSelected = function(t)
            selected = {}
            if type(t) == "table" then
                for _,v in ipairs(t) do table.insert(selected, v) end
            elseif t ~= nil then
                table.insert(selected, t)
            end
            updateButtonText()
        end,
        Destroy = function()
            if conn then conn:Disconnect() end
            dropFrame:Destroy()
        end
    }
end

function subPage:Dropdown(title, items, callback)
    return newPage:Dropdown(container, title, items, callback)
end

    return subPage
end

return newPage
  end

return tabs
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
Instance.new("UICorner", notif).CornerRadius = UDim.new(0, 6) 
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
TweenService:Create(notif, TweenInfo.new(0.3), {Position = UDim2.new(1, -10, 1, -10)}):Play()

task.delay(duration or 3, function()
    local tweenOut = TweenService:Create(notif, TweenInfo.new(0.3), {Position = UDim2.new(1, 310, 1, -10)})
    tweenOut:Play()
    tweenOut.Completed:Wait()
    for i, n in ipairs(activeNotifs) do
        if n == notif then table.remove(activeNotifs, i) break end
    end
    for i, n in ipairs(activeNotifs) do
        local goalPos = UDim2.new(1, -10, 1, -10 - (70 * (i - 1)))
        TweenService:Create(n, TweenInfo.new(0.2), { Position = goalPos }):Play()
    end
    notif:Destroy()
end)

end

return library

