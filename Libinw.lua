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

	if CoreGui:FindFirstChild("redui") then
		CoreGui:FindFirstChild("redui"):Destroy()
	end

	local gui = Instance.new("ScreenGui", CoreGui)
	gui.Name = "redui"
	gui.ResetOnSpawn = false

	local main = Instance.new("Frame", gui)
	main.Name = "MainSceen"
	main.Size = UDim2.new(0, 500, 0, 350)
	main.Position = UDim2.new(0.5, -250, 0.5, -175)
	main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	main.BorderSizePixel = 3
	main.BorderColor3 = Color3.fromRGB(170, 0, 255)
	main.Active = true
	main.Draggable = true
	main.Visible = true

	-- 🔴 ปุ่มเปิด/ปิด อยู่บนมุมซ้ายของ "main"
	local toggleButton = Instance.new("TextButton")
	toggleButton.Name = "BankHubToggle"
	toggleButton.Parent = main -- อยู่ใน Frame หลัก
	toggleButton.Size = UDim2.new(0, 25, 0, 25)
	toggleButton.Position = UDim2.new(0, 5, 0, 5)
	toggleButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
	toggleButton.BackgroundTransparency = 0.3
	toggleButton.Text = "X"
	toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	toggleButton.Font = Enum.Font.GothamBold
	toggleButton.TextSize = 16
	toggleButton.BorderSizePixel = 1
	toggleButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
	toggleButton.ZIndex = 2

	-- สร้างปุ่มเล็กใสไว้หน้าจอเสมอ สำหรับเปิดเมนู
	local reopenButton = Instance.new("TextButton")
	reopenButton.Name = "ReopenButton"
	reopenButton.Parent = gui
	reopenButton.Size = UDim2.new(0, 60, 0, 25)
	reopenButton.Position = UDim2.new(0, 10, 0, 10)
	reopenButton.BackgroundColor3 = Color3.fromRGB(80, 0, 120)
	reopenButton.BackgroundTransparency = 0.4
	reopenButton.Text = "เปิดเมนู"
	reopenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	reopenButton.Font = Enum.Font.Gotham
	reopenButton.TextSize = 14
	reopenButton.BorderSizePixel = 1
	reopenButton.BorderColor3 = Color3.fromRGB(200, 200, 255)
	reopenButton.Visible = false -- ซ่อนไว้ก่อน

	toggleButton.MouseButton1Click:Connect(function()
		main.Visible = false
		reopenButton.Visible = true
	end)

	reopenButton.MouseButton1Click:Connect(function()
		main.Visible = true
		reopenButton.Visible = false
	end)

	-- title bar
	local titleBar = Instance.new("TextLabel", main)
	titleBar.Size = UDim2.new(1, 0, 0, 35)
	titleBar.Position = UDim2.new(0, 0, 0, 0)
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
        
function newPage:Dropdown(title, items, callback)
    local container = Instance.new("Frame", page)
    container.Size = UDim2.new(1, -10, 0, 30)
    container.BackgroundTransparency = 1
    container.LayoutOrder = 0

    local titleLabel = Instance.new("TextLabel", container)
    titleLabel.Size = UDim2.new(0.5, 0, 1, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.SourceSans
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local arrow = Instance.new("TextLabel", container)
    arrow.Size = UDim2.new(0, 20, 1, 0)
    arrow.Position = UDim2.new(1, -20, 0, 0)
    arrow.BackgroundTransparency = 1
    arrow.Text = "◂"
    arrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    arrow.Font = Enum.Font.SourceSans
    arrow.TextSize = 16

    local dropdownButton = Instance.new("TextButton", container)
    dropdownButton.Size = UDim2.new(0.5, -20, 1, 0)
    dropdownButton.Position = UDim2.new(0.5, 0, 0, 0)
    dropdownButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownButton.Font = Enum.Font.SourceSans
    dropdownButton.TextSize = 16
    dropdownButton.Text = "Select"

    local opened = false
    local optionContainer = Instance.new("Frame", page)
    optionContainer.Size = UDim2.new(1, -10, 0, 0)
    optionContainer.BackgroundTransparency = 1
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

        function newPage:Toggle(text, default, callback)
    local toggleFrame = Instance.new("Frame", page)
    toggleFrame.Size = UDim2.new(1, -10, 0, 30)
    toggleFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
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
    circle.AnchorPoint = Vector2.new(0, 0)
    circle:TweenSize(UDim2.new(0, 18, 0, 18), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
    local uicorner = Instance.new("UICorner", circle)
    uicorner.CornerRadius = UDim.new(1, 0)

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

function newPage:Dropdown(title, items, callback)
    local container = Instance.new("Frame", page)
    container.Size = UDim2.new(1, -10, 0, 30)
    container.BackgroundTransparency = 1
    container.LayoutOrder = 0

    local titleLabel = Instance.new("TextLabel", container)
    titleLabel.Size = UDim2.new(0.5, 0, 1, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.SourceSans
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local arrow = Instance.new("TextLabel", container)
    arrow.Size = UDim2.new(0, 20, 1, 0)
    arrow.Position = UDim2.new(1, -20, 0, 0)
    arrow.BackgroundTransparency = 1
    arrow.Text = "◂"
    arrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    arrow.Font = Enum.Font.SourceSans
    arrow.TextSize = 16

    local dropdownButton = Instance.new("TextButton", container)
    dropdownButton.Size = UDim2.new(0.5, -20, 1, 0)
    dropdownButton.Position = UDim2.new(0.5, 0, 0, 0)
    dropdownButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownButton.Font = Enum.Font.SourceSans
    dropdownButton.TextSize = 16
    dropdownButton.Text = "Select"

    local opened = false
    local optionContainer = Instance.new("Frame", page)
    optionContainer.Size = UDim2.new(1, -10, 0, 0)
    optionContainer.BackgroundTransparency = 1
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
