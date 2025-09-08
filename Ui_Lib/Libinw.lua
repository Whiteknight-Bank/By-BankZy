-- Libinw_fixed.lua
-- Cleaner, minimal UI library with page object methods: Button, Toggle, Dropdown, TextBox, Label
local library = {}
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Destroy existing gui if present
if CoreGui:FindFirstChild("redui") then
    CoreGui:FindFirstChild("redui"):Destroy()
end

-- Utility to create UICorner quickly
local function uicorner(parent, radius)
    local c = Instance.new("UICorner")
    c.CornerRadius = radius or UDim.new(0,6)
    c.Parent = parent
    return c
end

-- Create main window and return tabs controller
function library:Win(title)
    -- clean up if called again
    if CoreGui:FindFirstChild("redui") then
        CoreGui:FindFirstChild("redui"):Destroy()
    end

    local gui = Instance.new("ScreenGui")
    gui.Name = "redui"
    gui.ResetOnSpawn = false
    gui.Parent = CoreGui

    -- Main frame
    local main = Instance.new("Frame")
    main.Name = "Main"
    main.Size = UDim2.new(0, 600, 0, 380)
    main.Position = UDim2.new(0.5, -300, 0.5, -190)
    main.BackgroundColor3 = Color3.fromRGB(16,16,16)
    main.BackgroundTransparency = 0.08
    main.BorderSizePixel = 0
    main.Parent = gui
    uicorner(main, UDim.new(0,8))
    main.ClipsDescendants = true

    -- Title bar
    local titleBar = Instance.new("Frame", main)
    titleBar.Name = "TitleBar"
    titleBar.Size = UDim2.new(1,0,0,36)
    titleBar.Position = UDim2.new(0,0,0,0)
    titleBar.BackgroundColor3 = Color3.fromRGB(24,24,24)
    titleBar.BorderSizePixel = 0
    uicorner(titleBar, UDim.new(0,6))

    local titleLabel = Instance.new("TextLabel", titleBar)
    titleLabel.Size = UDim2.new(1, -60, 1, 0)
    titleLabel.Position = UDim2.new(0,12,0,0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title or "Libinw UI"
    titleLabel.TextColor3 = Color3.fromRGB(255,255,255)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 18
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- Close/Toggle button (top-right)
    local closeBtn = Instance.new("TextButton", titleBar)
    closeBtn.Name = "Close"
    closeBtn.Size = UDim2.new(0,36,0,24)
    closeBtn.Position = UDim2.new(1, -46, 0, 6)
    closeBtn.AnchorPoint = Vector2.new(0,0)
    closeBtn.BackgroundColor3 = Color3.fromRGB(30,30,30)
    closeBtn.Text = "X"
    closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 16
    closeBtn.BorderSizePixel = 0
    uicorner(closeBtn, UDim.new(0,6))

    local isOpen = true
    local fullPos = main.Position
    local fullSize = main.Size
    closeBtn.MouseButton1Click:Connect(function()
        if isOpen then
            TweenService:Create(main, TweenInfo.new(0.25), {Size = UDim2.new(0,0,0,0)}):Play()
            task.delay(0.25, function() main.Visible = false end)
        else
            main.Size = UDim2.new(0,0,0,0)
            main.Visible = true
            TweenService:Create(main, TweenInfo.new(0.25), {Size = fullSize}):Play()
        end
        isOpen = not isOpen
    end)

    -- Main layout: left tabs, right pages
    local tabFrame = Instance.new("Frame", main)
    tabFrame.Name = "TabFrame"
    tabFrame.Size = UDim2.new(0, 150, 1, -36)
    tabFrame.Position = UDim2.new(0,0,0,36)
    tabFrame.BackgroundColor3 = Color3.fromRGB(28,28,28)
    tabFrame.BorderSizePixel = 0
    uicorner(tabFrame, UDim.new(0,6))

    local tabList = Instance.new("UIListLayout", tabFrame)
    tabList.SortOrder = Enum.SortOrder.LayoutOrder
    tabList.Padding = UDim.new(0,6)

    local pagesHolder = Instance.new("Frame", main)
    pagesHolder.Name = "PagesHolder"
    pagesHolder.Size = UDim2.new(1, -160, 1, -46)
    pagesHolder.Position = UDim2.new(0,160,0,36)
    pagesHolder.BackgroundTransparency = 1

    -- Dragging support via titleBar
    local dragging, dragStart, startPos = false, nil, nil
    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = main.Position
        end
    end)
    titleBar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    -- tabs controller
    local tabs = {}

    local function hideAllPages()
        for _, v in ipairs(pagesHolder:GetChildren()) do
            if v:IsA("ScrollingFrame") then v.Visible = false end
        end
    end

    function tabs:Taps(name)
        -- create tab button
        local tabBtn = Instance.new("TextButton", tabFrame)
        tabBtn.Size = UDim2.new(1, -12, 0, 36)
        tabBtn.BackgroundColor3 = Color3.fromRGB(38,38,38)
        tabBtn.TextColor3 = Color3.fromRGB(255,255,255)
        tabBtn.Font = Enum.Font.SourceSans
        tabBtn.TextSize = 16
        tabBtn.Text = name
        tabBtn.BorderSizePixel = 0
        uicorner(tabBtn, UDim.new(0,6))

        -- create page (scrolling frame)
        local page = Instance.new("ScrollingFrame", pagesHolder)
        page.Name = name.."_Page"
        page.Size = UDim2.new(1, 0, 1, 0)
        page.BackgroundTransparency = 1
        page.ScrollBarThickness = 6
        page.Visible = false
        page.CanvasSize = UDim2.new(0,0,0,0)
        page.AutomaticCanvasSize = Enum.AutomaticSize.Y
        page.VerticalScrollBarInset = Enum.ScrollBarInset.Always

        local pageLayout = Instance.new("UIListLayout", page)
        pageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        pageLayout.Padding = UDim.new(0,8)

        pageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            page.CanvasSize = UDim2.new(0, 0, 0, pageLayout.AbsoluteContentSize.Y + 12)
        end)

        tabBtn.MouseButton1Click:Connect(function()
            hideAllPages()
            page.Visible = true
        end)

        -- Show first tab automatically if it's the only one
        if #pagesHolder:GetChildren() == 0 then
            page.Visible = true
        end

        -- Page API
        local pageAPI = {}

        function pageAPI:Button(text, callback)
            local btn = Instance.new("TextButton", page)
            btn.Size = UDim2.new(1, -12, 0, 36)
            btn.BackgroundColor3 = Color3.fromRGB(60,60,60)
            btn.TextColor3 = Color3.fromRGB(255,255,255)
            btn.Font = Enum.Font.SourceSansBold
            btn.TextSize = 16
            btn.Text = text or "Button"
            btn.AutoButtonColor = true
            btn.BorderSizePixel = 0
            uicorner(btn, UDim.new(0,6))
            btn.MouseButton1Click:Connect(function()
                if callback then pcall(callback) end
            end)
            return btn
        end

        function pageAPI:Label(text)
            local lbl = Instance.new("TextLabel", page)
            lbl.Size = UDim2.new(1, -12, 0, 26)
            lbl.BackgroundTransparency = 1
            lbl.TextColor3 = Color3.fromRGB(220,220,220)
            lbl.Font = Enum.Font.SourceSans
            lbl.TextSize = 16
            lbl.TextXAlignment = Enum.TextXAlignment.Left
            lbl.Text = text or ""
            return lbl
        end

        function pageAPI:Textbox(title, placeholder, callback)
            local container = Instance.new("Frame", page)
            container.Size = UDim2.new(1, -12, 0, 40)
            container.BackgroundTransparency = 1

            local titleLabel = Instance.new("TextLabel", container)
            titleLabel.Size = UDim2.new(0.4, 0, 1, 0)
            titleLabel.Position = UDim2.new(0,6,0,0)
            titleLabel.BackgroundTransparency = 1
            titleLabel.Text = title or ""
            titleLabel.TextColor3 = Color3.fromRGB(255,255,255)
            titleLabel.Font = Enum.Font.SourceSans
            titleLabel.TextSize = 16
            titleLabel.TextXAlignment = Enum.TextXAlignment.Left

            local box = Instance.new("TextBox", container)
            box.Size = UDim2.new(0.56, -12, 0, 28)
            box.Position = UDim2.new(0.44, 0, 0.5, -14)
            box.PlaceholderText = placeholder or ""
            box.BackgroundColor3 = Color3.fromRGB(42,42,42)
            box.TextColor3 = Color3.fromRGB(255,255,255)
            box.Font = Enum.Font.SourceSans
            box.TextSize = 16
            box.ClearTextOnFocus = false
            uicorner(box, UDim.new(0,6))

            box.FocusLost:Connect(function(enter)
                if enter and callback then pcall(callback, box.Text) end
            end)
            return box
        end

        function pageAPI:Toggle(text, default, callback, subtext)
            local frame = Instance.new("Frame", page)
            frame.Size = UDim2.new(1, -12, 0, subtext and 64 or 42)
            frame.BackgroundTransparency = 1

            local label = Instance.new("TextLabel", frame)
            label.Size = UDim2.new(1, -60, 0, 24)
            label.Position = UDim2.new(0,6,0,4)
            label.BackgroundTransparency = 1
            label.Text = text or ""
            label.TextColor3 = Color3.fromRGB(255,255,255)
            label.Font = Enum.Font.SourceSans
            label.TextSize = 16
            label.TextXAlignment = Enum.TextXAlignment.Left

            if subtext then
                local sub = Instance.new("TextLabel", frame)
                sub.Size = UDim2.new(1, -12, 0, 30)
                sub.Position = UDim2.new(0,6,0,28)
                sub.BackgroundTransparency = 1
                sub.Text = subtext
                sub.Font = Enum.Font.SourceSansItalic
                sub.TextSize = 14
                sub.TextColor3 = Color3.fromRGB(200,200,200)
                sub.TextXAlignment = Enum.TextXAlignment.Left
                sub.TextWrapped = true
            end

            local toggleBtn = Instance.new("TextButton", frame)
            toggleBtn.Size = UDim2.new(0,46,0,24)
            toggleBtn.Position = UDim2.new(1, -56, 0, 8)
            toggleBtn.BackgroundColor3 = Color3.fromRGB(30,30,30)
            toggleBtn.BorderSizePixel = 0
            toggleBtn.AutoButtonColor = false
            uicorner(toggleBtn, UDim.new(0,12))

            local circle = Instance.new("Frame", toggleBtn)
            circle.Size = UDim2.new(0,18,0,18)
            circle.Position = default and UDim2.new(1,-20,0,3) or UDim2.new(0,4,0,3)
            circle.BackgroundColor3 = default and Color3.fromRGB(0,170,255) or Color3.fromRGB(140,140,140)
            circle.BorderSizePixel = 0
            uicorner(circle, UDim.new(0,18))

            local state = default and true or false
            toggleBtn.MouseButton1Click:Connect(function()
                state = not state
                circle:TweenPosition(state and UDim2.new(1,-20,0,3) or UDim2.new(0,4,0,3), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.12, true)
                circle.BackgroundColor3 = state and Color3.fromRGB(0,170,255) or Color3.fromRGB(140,140,140)
                if callback then pcall(callback, state) end
            end)
            return toggleBtn, circle
        end

        function pageAPI:Dropdown(title, items, callback, subtext, multi)
            -- title: string, items: table of strings, callback: function (single) or function (table) if multi
            local height = subtext and 64 or 40
            local container = Instance.new("Frame", page)
            container.Size = UDim2.new(1, -12, 0, height)
            container.BackgroundTransparency = 1

            local titleLabel = Instance.new("TextLabel", container)
            titleLabel.Size = UDim2.new(0.45,0,0,24)
            titleLabel.Position = UDim2.new(0,6,0,4)
            titleLabel.BackgroundTransparency = 1
            titleLabel.Text = title or ""
            titleLabel.TextColor3 = Color3.fromRGB(255,255,255)
            titleLabel.Font = Enum.Font.SourceSans
            titleLabel.TextSize = 16
            titleLabel.TextXAlignment = Enum.TextXAlignment.Left

            local arrow = Instance.new("TextLabel", container)
            arrow.Size = UDim2.new(0,20,0,24)
            arrow.Position = UDim2.new(1,-30,0,4)
            arrow.BackgroundTransparency = 1
            arrow.Text = "▾"
            arrow.Font = Enum.Font.SourceSans
            arrow.TextSize = 16
            arrow.TextColor3 = Color3.fromRGB(200,200,200)

            local display = Instance.new("TextButton", container)
            display.Size = UDim2.new(0.52, -12, 0, 24)
            display.Position = UDim2.new(0.47, 0, 0, 4)
            display.BackgroundColor3 = Color3.fromRGB(35,35,35)
            display.BorderSizePixel = 0
            display.Text = "Select..."
            display.TextColor3 = Color3.fromRGB(220,220,220)
            display.Font = Enum.Font.SourceSans
            display.TextSize = 14
            uicorner(display, UDim.new(0,6))

            if subtext then
                local sub = Instance.new("TextLabel", container)
                sub.Size = UDim2.new(1, -12, 0, 28)
                sub.Position = UDim2.new(0,6,0,34)
                sub.BackgroundTransparency = 1
                sub.Text = subtext
                sub.Font = Enum.Font.SourceSansItalic
                sub.TextSize = 13
                sub.TextColor3 = Color3.fromRGB(190,190,190)
                sub.TextWrapped = true
                sub.TextXAlignment = Enum.TextXAlignment.Left
            end

            local listFrame = Instance.new("ScrollingFrame", container)
            listFrame.Size = UDim2.new(1, 0, 0, 0)
            listFrame.Position = UDim2.new(0,0,0, height)
            listFrame.BackgroundTransparency = 1
            listFrame.BorderSizePixel = 0
            listFrame.ClipsDescendants = true
            listFrame.ScrollBarThickness = 6
            listFrame.Visible = false

            local listLayout = Instance.new("UIListLayout", listFrame)
            listLayout.SortOrder = Enum.SortOrder.LayoutOrder
            listLayout.Padding = UDim.new(0,4)

            local selected = {}

            local function updateDisplay()
                if multi then
                    if #selected == 0 then display.Text = "Select..." else
                        if #selected <= 3 then display.Text = table.concat(selected, ", ") else display.Text = selected[1]..", "..selected[2].." ... ("..#selected..")" end
                    end
                else
                    display.Text = (#selected > 0) and selected[1] or "Select..."
                end
            end

            local function rebuildOptions(filter)
                for _, c in ipairs(listFrame:GetChildren()) do if c:IsA("TextButton") then c:Destroy() end end
                for i, v in ipairs(items or {}) do
                    if not filter or string.find(string.lower(v), string.lower(filter)) then
                        local opt = Instance.new("TextButton", listFrame)
                        opt.Size = UDim2.new(1, -12, 0, 28)
                        opt.Position = UDim2.new(0,6,0,0)
                        opt.BackgroundColor3 = (table.find(selected, v) and Color3.fromRGB(30,100,30)) or Color3.fromRGB(45,45,45)
                        opt.Text = v or ""
                        opt.TextColor3 = Color3.fromRGB(255,255,255)
                        opt.Font = Enum.Font.SourceSans
                        opt.TextSize = 14
                        opt.BorderSizePixel = 0
                        uicorner(opt, UDim.new(0,6))
                        opt.MouseButton1Click:Connect(function()
                            if multi then
                                local idx = table.find(selected, v)
                                if idx then table.remove(selected, idx) else table.insert(selected, v) end
                                rebuildOptions(filter or "")
                                updateDisplay()
                                if callback then pcall(callback, selected) end
                            else
                                selected = {v}
                                updateDisplay()
                                if callback then pcall(callback, v) end
                                listFrame.Visible = false
                            end
                        end)
                    end
                end
                -- adjust canvas
                listFrame.CanvasSize = UDim2.new(0,0,0, math.max(0, #items * 32))
            end

            -- optional search box
            local searchBox
            display.MouseButton1Click:Connect(function()
                listFrame.Visible = not listFrame.Visible
                if listFrame.Visible then
                    -- place list frame below container (absolute positioning inside parent works visually)
                    listFrame.Size = UDim2.new(1, -12, 0, math.min(#items * 32, 8 * 32))
                    rebuildOptions("")
                end
            end)

            return {
                GetSelected = function() return selected end,
                SetItems = function(newItems) items = newItems rebuildOptions("") end,
                UI = container
            }
        end

        return pageAPI
    end

    return tabs
end

-- Simple notification helper (optional)
function library:Notify(text, duration)
    local gui = CoreGui:FindFirstChild("redui")
    if not gui then return end
    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.new(0,300,0,50)
    frame.Position = UDim2.new(1,-320,1,-80)
    frame.BackgroundColor3 = Color3.fromRGB(18,18,18)
    frame.BorderSizePixel = 0
    frame.AnchorPoint = Vector2.new(0,1)
    uicorner(frame)
    local lbl = Instance.new("TextLabel", frame)
    lbl.Size = UDim2.new(1,-10,1,0)
    lbl.Position = UDim2.new(0,5,0,0)
    lbl.Text = text or ""
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(255,255,255)
    lbl.Font = Enum.Font.SourceSans
    lbl.TextSize = 16
    TweenService:Create(frame, TweenInfo.new(0.2), {Position = UDim2.new(1,-10,1,-80)}):Play()
    task.delay(duration or 3, function()
        TweenService:Create(frame, TweenInfo.new(0.2), {Position = UDim2.new(1,320,1,-80)}):Play()
        task.delay(0.25, function() frame:Destroy() end)
    end)
end

return library
