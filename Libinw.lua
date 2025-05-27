local library = {}
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Remove old UI if exists
if CoreGui:FindFirstChild("redui") then
    CoreGui:FindFirstChild("redui"):Destroy()
end

-- UI Setup
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
        page.Visible = true
        page.ScrollBarThickness = 6
        page.CanvasSize = UDim2.new(0, 0, 0, 0)
        page.BackgroundTransparency = 1
        page.Name = name .. "_Page"

        local layout = Instance.new("UIListLayout", page)
        layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            page.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
        end)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Padding = UDim.new(0, 5)

        
            tabButton.MouseButton1Click:Connect(function()
                for _, v in pairs(pages:GetChildren()) do
                    if v:IsA("ScrollingFrame") then
                        v.Visible = false
                    end
                end
                page.Visible = true
        
            for _, v in pairs(pages:GetChildren()) do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            page.Visible = true
        end)

        -- Show the first created page by default
        if #pages:GetChildren() == 1 then
            page.Visible = true
        end

        local newPage = {}

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
            local button = Instance.new("TextButton", page)
            button.Size = UDim2.new(1, -10, 0, 30)
            button.BackgroundColor3 = default and Color3.fromRGB(0, 180, 0) or Color3.fromRGB(50, 50, 50)
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.Font = Enum.Font.SourceSans
            button.TextSize = 16
            button.Text = txt

            button.MouseButton1Click:Connect(function()
                state = not state
                button.BackgroundColor3 = state and Color3.fromRGB(0, 180, 0) or Color3.fromRGB(50, 50, 50)
                pcall(callback, state)
            end)
        end

        return newPage
    end

    return tabs
end

-- Notification
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
