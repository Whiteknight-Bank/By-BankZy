-- Libinw_final.lua
-- UI Library with Tabs:newpage() structure and toggle open/close button

local library = {}
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

-- destroy old
if CoreGui:FindFirstChild("redui") then
    CoreGui:FindFirstChild("redui"):Destroy()
end

local function uicorner(parent, radius)
    local c = Instance.new("UICorner")
    c.CornerRadius = radius or UDim.new(0,6)
    c.Parent = parent
    return c
end

function library:Win(title)
    if CoreGui:FindFirstChild("redui") then
        CoreGui:FindFirstChild("redui"):Destroy()
    end

    local gui = Instance.new("ScreenGui")
    gui.Name = "redui"
    gui.ResetOnSpawn = false
    gui.Parent = CoreGui

    local main = Instance.new("Frame")
    main.Name = "Main"
    main.Size = UDim2.new(0, 600, 0, 380)
    main.Position = UDim2.new(0.5, -300, 0.5, -190)
    main.BackgroundColor3 = Color3.fromRGB(16,16,16)
    main.BackgroundTransparency = 0.08
    main.BorderSizePixel = 0
    main.Visible = true
    main.Parent = gui
    uicorner(main, UDim.new(0,8))

    local titleBar = Instance.new("Frame", main)
    titleBar.Size = UDim2.new(1,0,0,36)
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

    -- Toggle small button (always on screen)
    local toggleBtn = Instance.new("TextButton", gui)
    toggleBtn.Name = "ToggleMenu"
    toggleBtn.Size = UDim2.new(0,30,0,30)
    toggleBtn.Position = UDim2.new(0,10,0,10)
    toggleBtn.BackgroundColor3 = Color3.fromRGB(30,30,30)
    toggleBtn.Text = "≡"
    toggleBtn.TextColor3 = Color3.fromRGB(255,255,255)
    toggleBtn.Font = Enum.Font.GothamBold
    toggleBtn.TextSize = 18
    uicorner(toggleBtn, UDim.new(0,6))

    local isOpen = true
    toggleBtn.MouseButton1Click:Connect(function()
        isOpen = not isOpen
        main.Visible = isOpen
    end)

    -- Tab frame left
    local tabFrame = Instance.new("Frame", main)
    tabFrame.Size = UDim2.new(0,150,1,-36)
    tabFrame.Position = UDim2.new(0,0,0,36)
    tabFrame.BackgroundColor3 = Color3.fromRGB(28,28,28)
    tabFrame.BorderSizePixel = 0
    uicorner(tabFrame, UDim.new(0,6))

    local tabList = Instance.new("UIListLayout", tabFrame)
    tabList.SortOrder = Enum.SortOrder.LayoutOrder
    tabList.Padding = UDim.new(0,6)

    local pagesHolder = Instance.new("Frame", main)
    pagesHolder.Size = UDim2.new(1,-160,1,-46)
    pagesHolder.Position = UDim2.new(0,160,0,36)
    pagesHolder.BackgroundTransparency = 1

    -- Dragging
    local dragging, dragStart, startPos
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

    local tabs = {}

    local function hideAllPages()
        for _, v in ipairs(pagesHolder:GetChildren()) do
            if v:IsA("ScrollingFrame") then v.Visible = false end
        end
    end

function tabs:Taps(name)
    local tabBtn = Instance.new("TextButton", tabFrame)
    tabBtn.Size = UDim2.new(1,-12,0,36)
    tabBtn.BackgroundColor3 = Color3.fromRGB(38,38,38)
    tabBtn.Text = name
    tabBtn.TextColor3 = Color3.fromRGB(255,255,255)

    local page = Instance.new("ScrollingFrame", pagesHolder)
    page.Name = name.."_Page"
    page.Size = UDim2.new(1,0,1,0)
    page.BackgroundTransparency = 1
    page.ScrollBarThickness = 6
    page.Visible = false

    local layout = Instance.new("UIListLayout", page)
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0,8)

    -- ✅ เปิด Tab แรกโดยอัตโนมัติ
    if #tabFrame:GetChildren() == 1 then
        page.Visible = true
        end

        local tabAPI = {}

        function tabAPI:newpage()
            local pageAPI = {}

            function pageAPI:Label(text)
                local lbl = Instance.new("TextLabel", page)
                lbl.Size = UDim2.new(1,-12,0,26)
                lbl.BackgroundTransparency = 1
                lbl.TextColor3 = Color3.fromRGB(220,220,220)
                lbl.Font = Enum.Font.SourceSans
                lbl.TextSize = 16
                lbl.TextXAlignment = Enum.TextXAlignment.Left
                lbl.Text = text or ""
                return lbl
            end

            function pageAPI:Button(text, callback)
                local btn = Instance.new("TextButton", page)
                btn.Size = UDim2.new(1,-12,0,36)
                btn.BackgroundColor3 = Color3.fromRGB(60,60,60)
                btn.TextColor3 = Color3.fromRGB(255,255,255)
                btn.Font = Enum.Font.SourceSansBold
                btn.TextSize = 16
                btn.Text = text
                uicorner(btn, UDim.new(0,6))
                btn.MouseButton1Click:Connect(function()
                    if callback then pcall(callback) end
                end)
                return btn
            end

            function pageAPI:Toggle(text, default, callback)
                local frame = Instance.new("Frame", page)
                frame.Size = UDim2.new(1,-12,0,40)
                frame.BackgroundTransparency = 1

                local label = Instance.new("TextLabel", frame)
                label.Size = UDim2.new(1,-60,0,24)
                label.Position = UDim2.new(0,6,0,8)
                label.BackgroundTransparency = 1
                label.Text = text or ""
                label.TextColor3 = Color3.fromRGB(255,255,255)
                label.Font = Enum.Font.SourceSans
                label.TextSize = 16
                label.TextXAlignment = Enum.TextXAlignment.Left

                local toggleBtn = Instance.new("TextButton", frame)
                toggleBtn.Size = UDim2.new(0,46,0,24)
                toggleBtn.Position = UDim2.new(1,-56,0,8)
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

                local state = default
                toggleBtn.MouseButton1Click:Connect(function()
                    state = not state
                    circle:TweenPosition(state and UDim2.new(1,-20,0,3) or UDim2.new(0,4,0,3), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.12, true)
                    circle.BackgroundColor3 = state and Color3.fromRGB(0,170,255) or Color3.fromRGB(140,140,140)
                    if callback then pcall(callback, state) end
                end)

                return frame
            end

            function pageAPI:Textbox(title, placeholder, callback)
                local container = Instance.new("Frame", page)
                container.Size = UDim2.new(1,-12,0,40)
                container.BackgroundTransparency = 1

                local lbl = Instance.new("TextLabel", container)
                lbl.Size = UDim2.new(0.4,0,1,0)
                lbl.Position = UDim2.new(0,6,0,0)
                lbl.BackgroundTransparency = 1
                lbl.Text = title or ""
                lbl.TextColor3 = Color3.fromRGB(255,255,255)
                lbl.Font = Enum.Font.SourceSans
                lbl.TextSize = 16
                lbl.TextXAlignment = Enum.TextXAlignment.Left

                local box = Instance.new("TextBox", container)
                box.Size = UDim2.new(0.56,-12,0,28)
                box.Position = UDim2.new(0.44,0,0.5,-14)
                box.BackgroundColor3 = Color3.fromRGB(42,42,42)
                box.PlaceholderText = placeholder or ""
                box.Text = ""
                box.TextColor3 = Color3.fromRGB(255,255,255)
                box.Font = Enum.Font.SourceSans
                box.TextSize = 16
                uicorner(box, UDim.new(0,6))

                box.FocusLost:Connect(function(enter)
                    if enter and callback then pcall(callback, box.Text) end
                end)
                return box
            end

            function pageAPI:Dropdown(title, items, callback)
                local container = Instance.new("Frame", page)
                container.Size = UDim2.new(1,-12,0,40)
                container.BackgroundTransparency = 1

                local lbl = Instance.new("TextLabel", container)
                lbl.Size = UDim2.new(0.4,0,1,0)
                lbl.Position = UDim2.new(0,6,0,0)
                lbl.BackgroundTransparency = 1
                lbl.Text = title or ""
                lbl.TextColor3 = Color3.fromRGB(255,255,255)
                lbl.Font = Enum.Font.SourceSans
                lbl.TextSize = 16
                lbl.TextXAlignment = Enum.TextXAlignment.Left

                local btn = Instance.new("TextButton", container)
                btn.Size = UDim2.new(0.56,-12,0,28)
                btn.Position = UDim2.new(0.44,0,0.5,-14)
                btn.BackgroundColor3 = Color3.fromRGB(45,45,45)
                btn.Text = "Select..."
                btn.TextColor3 = Color3.fromRGB(255,255,255)
                btn.Font = Enum.Font.SourceSans
                btn.TextSize = 14
                uicorner(btn, UDim.new(0,6))

                local listFrame = Instance.new("Frame", container)
                listFrame.Size = UDim2.new(1,0,0,0)
                listFrame.Position = UDim2.new(0,0,1,0)
                listFrame.BackgroundColor3 = Color3.fromRGB(32,32,32)
                listFrame.Visible = false
                uicorner(listFrame, UDim.new(0,6))

                local layout = Instance.new("UIListLayout", listFrame)
                layout.SortOrder = Enum.SortOrder.LayoutOrder

                btn.MouseButton1Click:Connect(function()
                    listFrame.Visible = not listFrame.Visible
                    listFrame.Size = listFrame.Visible and UDim2.new(1,0,0,#items*28) or UDim2.new(1,0,0,0)
                    if listFrame.Visible then
                        for _,c in ipairs(listFrame:GetChildren()) do if c:IsA("TextButton") then c:Destroy() end end
                        for _,v in ipairs(items) do
                            local opt = Instance.new("TextButton", listFrame)
                            opt.Size = UDim2.new(1,-12,0,28)
                            opt.Text = v
                            opt.BackgroundColor3 = Color3.fromRGB(50,50,50)
                            opt.TextColor3 = Color3.fromRGB(255,255,255)
                            uicorner(opt, UDim.new(0,6))
                            opt.MouseButton1Click:Connect(function()
                                btn.Text = v
                                listFrame.Visible = false
                                listFrame.Size = UDim2.new(1,0,0,0)
                                if callback then pcall(callback, v) end
                            end)
                        end
                    end
                end)

                return container
            end

            return pageAPI
        end

        tabBtn.MouseButton1Click:Connect(function()
            hideAllPages()
            page.Visible = true
        end)

        return tabAPI
    end

    return tabs
end

return library
