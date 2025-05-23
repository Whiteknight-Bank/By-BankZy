-- สร้าง ScreenGui และ UI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- สร้าง KeyFrame (หน้ากรอกคีย์)
local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0.4, 0, 0.3, 0)
keyFrame.Position = UDim2.new(0.3, 0, -0.4, 0)  -- เริ่มจากข้างบน
keyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- สีดำเท่ห์
keyFrame.BorderSizePixel = 0
keyFrame.Visible = true
keyFrame.Parent = screenGui

-- ใส่ขอบมนและเงา
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0.1, 0)
uiCorner.Parent = keyFrame

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 2
uiStroke.Color = Color3.fromRGB(255, 255, 255) -- ขอบสีขาว
uiStroke.Parent = keyFrame

-- สร้าง KeyInput (ช่องใส่คีย์)
local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.8, 0, 0.3, 0)
keyInput.Position = UDim2.new(0.1, 0, 0.2, 0)
keyInput.PlaceholderText = "กรอกคีย์ที่นี่"
keyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.Parent = keyFrame

-- ปุ่มยืนยัน (SubmitButton)
local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0.8, 0, 0.3, 0)
submitButton.Position = UDim2.new(0.1, 0, 0.6, 0)
submitButton.Text = "ยืนยัน"
submitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
submitButton.TextColor3 = Color3.fromRGB(0, 0, 0)
submitButton.Parent = keyFrame

-- เอฟเฟกต์ปุ่มเมื่อกด
submitButton.MouseButton1Down:Connect(function()
    submitButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200) -- สีเทาเมื่อกด
end)
submitButton.MouseButton1Up:Connect(function()
    submitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- กลับเป็นสีขาว
end)

-- ใส่ขอบมนให้ MainMenu
local menuCorner = Instance.new("UICorner")
menuCorner.CornerRadius = UDim.new(0.1, 0)
menuCorner.Parent = mainMenu

-- ข้อความแจ้งเตือน (มีอนิเมชั่น)
local notification = Instance.new("TextLabel")
notification.Size = UDim2.new(0.3, 0, 0.05, 0)
notification.Position = UDim2.new(0.7, 0, 1.1, 0) -- เริ่มต้นอยู่นอกจอด้านล่าง
notification.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
notification.TextColor3 = Color3.fromRGB(255, 255, 255)
notification.Text = ""
notification.Visible = false
notification.Parent = screenGui

local notificationCorner = Instance.new("UICorner")
notificationCorner.CornerRadius = UDim.new(0.2, 0)
notificationCorner.Parent = notification

-- คีย์ที่ถูกต้อง
local correctKey = "7090"

-- ฟังก์ชันแจ้งเตือน (มีอนิเมชั่น)
local function showNotification(message)
    notification.Text = message
    notification.Visible = true
    notification:TweenPosition(UDim2.new(0.7, 0, 0.9, 0), "Out", "Quad", 0.5, true) -- เลื่อนขึ้น
    wait(2)
    notification:TweenPosition(UDim2.new(0.7, 0, 1.1, 0), "Out", "Quad", 0.5, true) -- เลื่อนลง
    wait(0.5)
    notification.Visible = false
end

-- ฟังก์ชันตรวจสอบคีย์
local function checkKey()
    if keyInput.Text == correctKey then
    keyFrame:TweenPosition(UDim2.new(0.3, 0, -0.4, 0), "Out", "Quad", 0.5, true) -- เมนูเลื่อนออก
        wait(0.5)
        keyFrame:Destroy()
local GC = getconnections
for i, v in pairs(GC(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

--Properties:



repeat wait() until game:IsLoaded() 
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil
do  local ui =  game:GetService("CoreGui"):FindFirstChild("redui")  if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local tween = game:GetService("TweenService")
local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
local PresetColor = Color3.fromRGB(66, 134, 255)


coroutine.wrap(
    function()
        while wait() do
            Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255
            Red.HueSelectionPosition = Red.HueSelectionPosition + 1

            if Red.RainbowColorValue >= 1 then
                Red.RainbowColorValue = 0
            end

            if Red.HueSelectionPosition == 160 then
                Red.HueSelectionPosition = 0
            end
        end
    end
)()

local Reduisceen = Instance.new("ScreenGui")
Reduisceen.Parent = game:GetService("CoreGui")
Reduisceen.Name = "redui"
Reduisceen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if msg == "n" then
		game.CoreGui["redui"].Enabled =  not game.CoreGui["redui"].Enabled
	end
end)



local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )
        local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

local function Tween(instance, properties,style,wa)
    if style == nil or "" then
        return Back
    end
    tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

local create = {}
function create:Win(text)
    local fs = false

    local MainSceen = Instance.new("Frame")
    MainSceen.Name = "MainSceen"
    MainSceen.Parent = Reduisceen
    MainSceen.AnchorPoint = Vector2.new(0.6, 0.6)
    MainSceen.BackgroundColor3 = Color3.fromRGB(0,0,0)
    MainSceen.BorderSizePixel = 0
    MainSceen.Position = UDim2.new(0.6, 0, 0.6, 0)
    MainSceen.Size = UDim2.new(0, 0, 0, 0)
    MainSceen.ClipsDescendants = true

    local Main_UiConner  = Instance.new("UICorner")

    Main_UiConner.CornerRadius = UDim.new(0, 4)
    Main_UiConner.Name = "Main_UiConner"
    Main_UiConner.Parent = MainSceen

    local ClickFrame = Instance.new("Frame")
    ClickFrame.Name = "ClickFrame"
    ClickFrame.Parent = MainSceen
    ClickFrame.AnchorPoint = Vector2.new(0.6, 0.6)
    ClickFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ClickFrame.BorderSizePixel = 0
    ClickFrame.Position = UDim2.new(0.6, 0, 0.036, 0)
    ClickFrame.Size = UDim2.new(0, 550, 0, 60)
    ClickFrame.ClipsDescendants = true
    ClickFrame.BackgroundTransparency = 1

    MakeDraggable(ClickFrame,MainSceen)
    tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 474)}):Play()
	
    local library = {toggledui = false;}
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        pcall(function()
            if input.KeyCode == Enum.KeyCode.LeftControl then
                if library.toggledui == false then
                    library.toggledui = true
                    tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
                    wait(.3)
                    Reduisceen.Enabled = false
                else
                    library.toggledui = false
                    tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 534, 0, 474)}):Play()
                    Reduisceen.Enabled = true
                end
            end
        end)
    end)

    local NameReal = Instance.new("TextLabel")

    NameReal.Parent = MainSceen
    NameReal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    NameReal.BackgroundTransparency = 1
    NameReal.BorderSizePixel = 0
    NameReal.Position = UDim2.new(0.6, 0, 0.05, 0)
    NameReal.AnchorPoint = Vector2.new(0.6, 0.6)
    NameReal.Size = UDim2.new(0, 136, 0, 34)
    NameReal.Font = Enum.Font.GothamBold
    NameReal.Text = tostring(text)
    NameReal.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameReal.TextSize = 14.000


    local MainSceen2 = Instance.new("Frame")
    MainSceen2.Name = "MainSceen2"
    MainSceen2.Parent = MainSceen
    MainSceen2.AnchorPoint = Vector2.new(0.6, 0.6)
    MainSceen2.BackgroundColor3 = Color3.fromRGB(0,0,0)
    MainSceen2.BorderSizePixel = 0
    MainSceen2.Position = UDim2.new(0.6, 0, 0.6, 0)
    MainSceen2.Size = UDim2.new(0, 0, 0, 0)
    MainSceen2.ClipsDescendants = true

    local Main_UiConner2  = Instance.new("UICorner")

    Main_UiConner2.CornerRadius = UDim.new(0, 4)
    Main_UiConner2.Name = "Main_UiConner"
    Main_UiConner2.Parent = MainSceen

    MainSceen2:TweenSizeAndPosition(UDim2.new(0, 550-20, 0, 474-50), UDim2.new(0.6, 0, 0.63, 0), "Out", "Back", 0.6, true)


    local ScolTapBarFrame = Instance.new("Frame")
    ScolTapBarFrame.Name = "MainSceen2"
    ScolTapBarFrame.Parent = MainSceen2
    ScolTapBarFrame.AnchorPoint = Vector2.new(0.6, 0.6)
    ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ScolTapBarFrame.BorderSizePixel = 0
    ScolTapBarFrame.BackgroundTransparency = 1
    ScolTapBarFrame.Position = UDim2.new(0.6, 0, 0.07, 0)
    ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)
    ScolTapBarFrame.ClipsDescendants = true

    local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")

    ScrollingFrame_Menubar.Parent = ScolTapBarFrame
    ScrollingFrame_Menubar.Active = true
    ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame_Menubar.BackgroundTransparency = 1
    ScrollingFrame_Menubar.BorderSizePixel = 0
    ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 35)
    ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
    ScrollingFrame_Menubar.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame_Menubar.ScrollBarThickness = 3


    local UIListLayout_Menubar = Instance.new("UIListLayout")

    UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
    UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_Menubar.Padding = UDim.new(0, 10)

    local UIPadding_Menubar = Instance.new("UIPadding")

    UIPadding_Menubar.Parent = ScrollingFrame_Menubar
    UIPadding_Menubar.PaddingTop = UDim.new(0, 2)


    local PageOrders = -1

    local Container_Page = Instance.new('Frame',MainSceen2)
    Container_Page.Size = UDim2.new(0, 516, 0, 268)
    Container_Page.Position = UDim2.new(0.6, 0, 0.45, 0)
    Container_Page.BackgroundTransparency = 1
    Container_Page.Name = "Page "
    Container_Page.AnchorPoint = Vector2.new(0.6, 0.6)

    local pagesFolder = Instance.new("Folder")

    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = Container_Page


    local UIPage = Instance.new('UIPageLayout',pagesFolder)
    UIPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIPage.EasingDirection = Enum.EasingDirection.InOut
    UIPage.EasingStyle = Enum.EasingStyle.Quad
    UIPage.Padding = UDim.new(0, 10)
    UIPage.TweenTime = 0.600

    local top = {}

    local NotiFrame = Instance.new("Frame")
    NotiFrame.Name = "NotiFrame"
    NotiFrame.Parent = Reduisceen
    NotiFrame.AnchorPoint = Vector2.new(0.6, 0.6)
    NotiFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
    NotiFrame.BorderSizePixel = 0
    NotiFrame.Position =  UDim2.new(1, -210, 1, -500)
    NotiFrame.Size = UDim2.new(0, 400, 0, 500)
    NotiFrame.ClipsDescendants = true
    NotiFrame.BackgroundTransparency = 1


    local Notilistlayout = Instance.new("UIListLayout")
    Notilistlayout.Parent = NotiFrame
    Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
    Notilistlayout.Padding = UDim.new(0, 5)


    function create:Notifile(titel,text,delays)
        local TitleFrame = Instance.new("Frame")
        TitleFrame.Name = "TitleFrame"
        TitleFrame.Parent = NotiFrame
        TitleFrame.AnchorPoint = Vector2.new(0.6, 0.6)
        TitleFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
        TitleFrame.BorderSizePixel = 0
        TitleFrame.Position =  UDim2.new(0.6, 0, 0.6,0)
        TitleFrame.Size = UDim2.new(0, 0, 0, 0)
        TitleFrame.ClipsDescendants = true
        TitleFrame.BackgroundTransparency = 0

        local ConnerTitile = Instance.new("UICorner")

        ConnerTitile.CornerRadius = UDim.new(0, 4)
        ConnerTitile.Name = ""
        ConnerTitile.Parent = TitleFrame

        TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.6, 0, 0.6,0), "Out", "Quad", 0.3, true)

        local imagenoti = Instance.new("ImageLabel")

        imagenoti.Parent = TitleFrame
        imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        imagenoti.BackgroundTransparency = 1.000
        imagenoti.AnchorPoint = Vector2.new(0.6, 0.6)
        imagenoti.Position = UDim2.new(0.9, 0, 0.6, 0)
        imagenoti.Size = UDim2.new(0, 50, 0, 50)
    --  imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=7578496318&width=0&height=0&format=png"

        local txdlid = Instance.new("TextLabel")

        txdlid.Parent = TitleFrame
        txdlid.Name = "TextLabel_Tap"
        txdlid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        txdlid.Size =UDim2.new(0, 160, 0,25 )
        txdlid.Font = Enum.Font.GothamBold
        txdlid.Text = titel
        txdlid.TextColor3 = Color3.fromRGB(255, 255, 255)
        txdlid.TextSize = 13.000
        txdlid.AnchorPoint = Vector2.new(0.6, 0.6)
        txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)
        -- txdlid.TextYAlignment = Enum.TextYAlignment.Top
        txdlid.TextXAlignment = Enum.TextXAlignment.Left
        txdlid.BackgroundTransparency = 1

        local LableFrame = Instance.new("Frame")
        LableFrame.Name = "LableFrame"
        LableFrame.Parent = TitleFrame
        LableFrame.AnchorPoint = Vector2.new(0.6, 0.6)
        LableFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LableFrame.BorderSizePixel = 0
        LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
        LableFrame.Size = UDim2.new(0, 260, 0,25 )
        LableFrame.ClipsDescendants = true
        LableFrame.BackgroundTransparency = 1

        local TextNoti = Instance.new("TextLabel")

        TextNoti.Parent = LableFrame
        TextNoti.Name = "TextLabel_Tap"
        TextNoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextNoti.Size =UDim2.new(0, 260, 0,25 )
        TextNoti.Font = Enum.Font.GothamBold
        TextNoti.Text = text
        TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextNoti.TextSize = 13.000
        TextNoti.AnchorPoint = Vector2.new(0.6, 0.6)
        TextNoti.Position = UDim2.new(0.6, 0, 0.6, 0)
        -- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
        TextNoti.TextXAlignment = Enum.TextXAlignment.Left
        TextNoti.BackgroundTransparency = 1

        repeat wait() until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)

        local Time = Instance.new("Frame")
        Time.Name = "Time"
        Time.Parent = TitleFrame
        --Time.AnchorPoint = Vector2.new(0.6, 0.6)--
        Time.BackgroundColor3 =  Color3.fromRGB(255, 255, 255)
        Time.BorderSizePixel = 0
        Time.Position =  UDim2.new(0, 0, 0.,0)
        Time.Size = UDim2.new(0, 0,0,0)
        Time.ClipsDescendants = false
        Time.BackgroundTransparency = 0

        local ConnerTitile_Time = Instance.new("UICorner")

        ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
        ConnerTitile_Time.Name = ""
        ConnerTitile_Time.Parent = Time


        Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Quad", 0.3, true)
        repeat wait() until Time.Size == UDim2.new(0, 400-10, 0, 3)

        TweenService:Create(
            Time,
            TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        delay(tonumber(delays),function()
            TweenService:Create(
                TitleFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.3)
            TitleFrame:Destroy()
        end
    )
    end


    function top:Taps(text)
        PageOrders = PageOrders + 1
        local name = tostring(text) or tostring(math.random(1,5000))

        local Frame_Tap = Instance.new("Frame")
        Frame_Tap.Parent = ScrollingFrame_Menubar
        Frame_Tap.Name = text.."Server"
        Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame_Tap.BackgroundTransparency = 1
        Frame_Tap.Position = UDim2.new(0.0, 0, 0.0, 0)
        Frame_Tap.Size = UDim2.new(0, 100, 0, 25)
        Frame_Tap.Visible = true

        local TextLabel_Tap = Instance.new("TextLabel")

        TextLabel_Tap.Parent = Frame_Tap
        TextLabel_Tap.Name = "TextLabel_Tap"
        TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_Tap.Position = UDim2.new(0.6, 0, 0.8, 0)
        TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
        TextLabel_Tap.Font = Enum.Font.SourceSans
        TextLabel_Tap.Text = " "
        TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel_Tap.TextSize = 14.000
        TextLabel_Tap.AnchorPoint = Vector2.new(0.6, 0.6)

        local TextButton_Tap = Instance.new("TextButton")

        TextButton_Tap.Parent = Frame_Tap
        TextButton_Tap.Name = "TextButton_Tap"
        TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Tap.BackgroundTransparency = 1.000
        TextButton_Tap.Position = UDim2.new(0.114491031, 0, -0.0216345787, 0)
        TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
        TextButton_Tap.Font = Enum.Font.GothamSemibold
        TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
        TextButton_Tap.TextSize = 13.000
        TextButton_Tap.Text = tostring(text)

        local MainPage = Instance.new("Frame")

        MainPage.Name = name.."_MainPage"
        MainPage.Parent = pagesFolder
        MainPage.BackgroundColor3 = Color3.fromRGB(255,255, 255)
        MainPage.BorderSizePixel = 0
        MainPage.Position = UDim2.new(0.6, 0, 0.6, 0) -- UDim2.new(0.0149812736, 0, 0.13, 0)
        MainPage.Size = UDim2.new(0, 516, 0, 375)
        MainPage.BackgroundTransparency = 1
        MainPage.ClipsDescendants = true
        MainPage.Visible = true
        MainPage.LayoutOrder = PageOrders




        TextButton_Tap.MouseButton1Click:connect(function()
            if MainPage.Name == text.."_MainPage" then
                UIPage:JumpToIndex(MainPage.LayoutOrder)

            end
            for i ,v in next , ScrollingFrame_Menubar:GetChildren() do
                if v:IsA("Frame") then
                    TweenService:Create(
                        v.TextButton_Tap,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)}
                    ):Play()
                end

                TweenService:Create(
                    TextButton_Tap,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                ):Play()
            end
        end)

        if fs == false then
            -- TweenService:Create(
            --     TextLabel_Tap,
            --     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            --     {Size = UDim2.new(0, 70, 0, 2)}
            -- ):Play()
            TweenService:Create(
                TextButton_Tap,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255, 255, 255)}
            ):Play()

            MainPage.Visible = true
            Frame_Tap.Name  = text .. "Server"
            fs  = true
        end
        local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")

        ScrollingFrame_Pagefrist.Parent = MainPage
        ScrollingFrame_Pagefrist.Active = true
        ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- 255, 255, 255
        ScrollingFrame_Pagefrist.BorderSizePixel = 0
        ScrollingFrame_Pagefrist.Size = UDim2.new(0, 516, 0, 375)
        ScrollingFrame_Pagefrist.ScrollBarThickness = 4
        ScrollingFrame_Pagefrist.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255) -- 255, 255, 255

        local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
        local UIPadding_Pagefrist = Instance.new("UIPadding")

        UIGridLayout_Pagefrist.Archivable = false
        UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
        UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
        UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 370)

        UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
        UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
        UIPadding_Pagefrist.PaddingTop = UDim.new(0, 20)

        local page = {}

        function page:newpage()

            local Pageframe = Instance.new("Frame")


            Pageframe.Parent = ScrollingFrame_Pagefrist
            Pageframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Pageframe.BorderSizePixel = 0
            Pageframe.Position = UDim2.new(0.028957529, 0, 0.0496277921, 0)
            Pageframe.Size = UDim2.new(0, 240, 0, 379)


            local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")


            ScrollingFrame_Pageframe.Parent = Pageframe
            ScrollingFrame_Pageframe.Active = true
            ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            ScrollingFrame_Pageframe.BorderSizePixel = 0
            ScrollingFrame_Pageframe.Position = UDim2.new(0, 0, -0.0101253344, 0)
            ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 379)
            ScrollingFrame_Pageframe.ScrollBarThickness = 4
            ScrollingFrame_Pageframe.ScrollBarImageColor3 = Color3.fromRGB(222, 222, 222)



            local UIPadding_Pageframe = Instance.new("UIPadding")
            local UIListLayout_Pageframe = Instance.new("UIListLayout")


            UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
            UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
            UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)


            UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
            UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_Pageframe.Padding = UDim.new(0, 7)

            UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )
            end)

            UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )
            end)

            game:GetService("RunService").Stepped:Connect(function ()
                pcall(function ()
                    ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)
                    ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y +20 )
                    ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 40)
                end)
            end)
        local items = {}

        function items:Toggle(text,config,callback)
            local Toggle = Instance.new("Frame")

            Toggle.Parent = ScrollingFrame_Pageframe
            Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.BorderSizePixel = 0
            Toggle.Position = UDim2.new(0.6, 0, 0.6, 0)
            Toggle.Size = UDim2.new(0, 213, 0, 35)
            Toggle.BackgroundTransparency = 1
            Toggle.AnchorPoint = Vector2.new(0.6, 0.6)

            local TextButton_Toggle = Instance.new("TextButton")

            TextButton_Toggle.Parent = Toggle
            TextButton_Toggle.BackgroundTransparency =1
            TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            TextButton_Toggle.BorderSizePixel = 0
            TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
            TextButton_Toggle.AutoButtonColor = false
            TextButton_Toggle.Font = Enum.Font.SourceSans
            TextButton_Toggle.Text = " "
            TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle.TextSize = 12.000

            local TextButton_2_Toggle = Instance.new("TextButton")

            TextButton_2_Toggle.Parent = TextButton_Toggle
            TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    --        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_2_Toggle.BorderSizePixel = 0
            TextButton_2_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
            TextButton_2_Toggle.Position = UDim2.new(0.9, 0, 0.6, 0)
            TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
            TextButton_2_Toggle.Font = Enum.Font.SourceSans
            TextButton_2_Toggle.Text = " "
            TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_2_Toggle.TextSize = 12.000
            TextButton_2_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner.Name = ""
            TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

            local TextButton_3_Toggle = Instance.new("TextButton")

            TextButton_3_Toggle.Parent = TextButton_2_Toggle
            TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
    --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_3_Toggle.BorderSizePixel = 0
            TextButton_3_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
            TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.6, 0)
            TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
            TextButton_3_Toggle.Font = Enum.Font.SourceSans
            TextButton_3_Toggle.Text = " "
            TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_3_Toggle.TextSize = 12.000
            TextButton_3_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

            local TextButton_4_Toggle = Instance.new("TextButton")

            TextButton_4_Toggle.Parent = TextButton_3_Toggle
            TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
    --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_4_Toggle.BorderSizePixel = 0
            TextButton_4_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
            TextButton_4_Toggle.Position = UDim2.new(0.6, 0, 0.6, 0)
            TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
            TextButton_4_Toggle.Font = Enum.Font.SourceSans
            TextButton_4_Toggle.Text = " "
            TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_4_Toggle.TextSize = 12.000
            TextButton_4_Toggle.AutoButtonColor = false
            TextButton_4_Toggle.BackgroundTransparency = 1
            TextButton_4_Toggle.Visible = true

            local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner4.Name = ""
            TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle

            local TextLabel_Toggle = Instance.new("TextLabel")

            TextLabel_Toggle.Parent = Toggle
            TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_Toggle.BackgroundTransparency = 1
            TextLabel_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
            TextLabel_Toggle.Position = UDim2.new(0.4, 0, 0.6, 0)
            TextLabel_Toggle.BorderSizePixel = 0
            TextLabel_Toggle.Size = UDim2.new(0, 130, 0, 25)
            TextLabel_Toggle.Font = Enum.Font.GothamSemibold
            TextLabel_Toggle.Text = text
            TextLabel_Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
            TextLabel_Toggle.TextSize = 13.000
            TextLabel_Toggle.ClipsDescendants = true
            TextLabel_Toggle.TextWrapped = true
            TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

            local TextButton_Toggle2 = Instance.new("TextButton")

            TextButton_Toggle2.Parent = TextButton_Toggle
            TextButton_Toggle2.BackgroundTransparency =1
            TextButton_Toggle2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            TextButton_Toggle2.BorderSizePixel = 0
            TextButton_Toggle2.Size = UDim2.new(0, 213, 0, 35)
            TextButton_Toggle2.AutoButtonColor = false
            TextButton_Toggle2.Font = Enum.Font.SourceSans
            TextButton_Toggle2.Text = " "
            TextButton_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle2.TextSize = 12.000

            TextButton_Toggle2.MouseEnter:Connect(function()
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        TextButton_Toggle2.MouseLeave:Connect(function()
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(200, 200, 200)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        local check = {toogle = false ; loacker = true ; togfunction = {

        };
    }
    TextButton_Toggle2.MouseButton1Click:Connect(function()
            if check.toogle == false and check.loacker == true  then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.6, 0), "Out", "Quad", 0.3, true)
            elseif  check.loacker ==  true then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.6, 0), "Out", "Quad", 0.3, true)
            end
            if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
            end
        end
    )

        if config == true then
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextButton_3_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextButton_2_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.6, 0), "Out", "Quad", 0.3, true)
            check.toogle = true
            callback(check.toogle)
        end
        local lockerframe = Instance.new("Frame")

        lockerframe.Name = "lockerframe"
        lockerframe.Parent = Toggle
        lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        lockerframe.BackgroundTransparency = 1
        lockerframe.Size = UDim2.new(0, 320, 0, 35)
        lockerframe.Position = UDim2.new(0.6, 0, 0.6, 0)
        lockerframe.AnchorPoint = Vector2.new(0.6, 0.6)

        local LockerImageLabel = Instance.new("ImageLabel")
        LockerImageLabel.Parent = lockerframe
        LockerImageLabel.BackgroundTransparency = 1.000
        LockerImageLabel.BorderSizePixel = 0
        LockerImageLabel.Position = UDim2.new(0.6, 0, 0.6, 0)
        LockerImageLabel.AnchorPoint = Vector2.new(0.6, 0.6)
        LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
        LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"


        function check.togfunction:lock()
            TweenService:Create(
                lockerframe,
                TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {BackgroundTransparency = 0.7}
            ):Play()
            TweenService:Create(
                LockerImageLabel,
                TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {Size = UDim2.new(0, 30, 0, 30)}
            ):Play()

            check.loacker  = false
            pcall(callback,locker)
        end
        function check.togfunction:unlock()
            TweenService:Create(
                lockerframe,
                TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {BackgroundTransparency = 1}
            ):Play()
            TweenService:Create(
                LockerImageLabel,
                TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            check.loacker  = true
           pcall(callback,locker)
        end

            return  check.togfunction
        end

        function items:Button(text,callback)

            local ButtonFrame = Instance.new("Frame")

            ButtonFrame.Name = "ButtonFrame"
            ButtonFrame.Parent = ScrollingFrame_Pageframe
            ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonFrame.BorderSizePixel = 0
            ButtonFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
            ButtonFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            ButtonFrame.Size = UDim2.new(0, 213, 0, 25) -- UDim2.new(0, 213, 0, 35)
            ButtonFrame.BackgroundTransparency  = 1
            ButtonFrame.ClipsDescendants = true



            local MheeFrameStroke = Instance.new("UIStroke")

            MheeFrameStroke.Thickness = 0
            MheeFrameStroke.Name = ""
            MheeFrameStroke.Parent = ButtonFrame
            MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            MheeFrameStroke.Color = Color3.fromRGB(255, 255, 255)
            MheeFrameStroke.Transparency = 0.7

            local Button = Instance.new("TextButton")

            Button.Parent = ButtonFrame
            Button.Name = "Button"
            Button.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
            Button.Size = UDim2.new(0,150, 0, 25)
            Button.Font = Enum.Font.SourceSansSemibold
            Button.Text = tostring(text)
            Button.TextColor3 = Color3.fromRGB(155, 155, 155)--button
            Button.TextSize = 13.000
            Button.AnchorPoint = Vector2.new(0.6, 0.6)
            Button.Position = UDim2.new(0.6, 0, 0.6, 0)
            Button.TextXAlignment = Enum.TextXAlignment.Center
            Button.BackgroundTransparency = 0.6
            Button.TextWrapped = true
            Button.AutoButtonColor = false
            Button.ClipsDescendants = true

            local ConnerPageMhee = Instance.new("UICorner")

            ConnerPageMhee.CornerRadius = UDim.new(0, 4)
            ConnerPageMhee.Name = ""
            ConnerPageMhee.Parent = Button

            Button.MouseEnter:Connect(function()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size =  UDim2.new(0, 213, 0, 25)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )
            Button.MouseLeave:Connect(function()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size =  UDim2.new(0, 150, 0, 25)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        Button.MouseButton1Click:Connect(function()
        --    Ripple(Button)
            callback()
            TweenService:Create(
                Button,
                TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {TextSize =  16} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
                Button,
                TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {TextSize =  13} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

        end

        function items:Slider(text,check,floor,min,max,de,lol,tog,callback)

        if check then

            local SliderFrame = Instance.new("Frame")

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = ScrollingFrame_Pageframe
            SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- Color3.fromRGB(255, 255, 255)
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
            SliderFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            SliderFrame.Size = UDim2.new(0, 214, 0, 50) -- UDim2.new(0, 213, 0, 35)
            SliderFrame.BackgroundTransparency  = 0
            SliderFrame.ClipsDescendants = true

            local SliderFrameConner = Instance.new("UICorner")

            SliderFrameConner.CornerRadius = UDim.new(0, 4)
            SliderFrameConner.Name = ""
            SliderFrameConner.Parent = SliderFrame

            local SliderFrameStroke = Instance.new("UIStroke")

            SliderFrameStroke.Thickness = 1
            SliderFrameStroke.Name = ""
            SliderFrameStroke.Parent = SliderFrame
            SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            SliderFrameStroke.Color = Color3.fromRGB(255, 255, 255)
            SliderFrameStroke.Transparency = 0.7


            SliderFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            SliderFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )


            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = SliderFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.4, 0, 0.2, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.TextSize = 11.000
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


            local ShowValueFarm = Instance.new("Frame")

            ShowValueFarm.Name = "ShowValueFarm"
            ShowValueFarm.Parent = SliderFrame
            ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
            ShowValueFarm.BackgroundTransparency = 0
            ShowValueFarm.BorderSizePixel = 0
            ShowValueFarm.AnchorPoint = Vector2.new(0.6, 0.6)
            ShowValueFarm.Position = UDim2.new(0.8, 0, 0.25, 0)
            ShowValueFarm.ClipsDescendants = false

            local CustomValue = Instance.new("TextBox")

            CustomValue.Parent = ShowValueFarm
            CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
            CustomValue.BorderSizePixel = 0
            CustomValue.ClipsDescendants = true
            CustomValue.AnchorPoint = Vector2.new(0.6, 0.6)
            CustomValue.Position = UDim2.new(0.6, 0, 0.6, 0)
            CustomValue.Size = UDim2.new(0, 158, 0, 26)
            CustomValue.Font = Enum.Font.GothamSemibold
            CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
            CustomValue.PlaceholderText =  ""
            if floor == true then
                CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
            else
                CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
            end
            CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            CustomValue.TextSize = 8.000
            CustomValue.BackgroundTransparency = 1

            local ValueFrame = Instance.new("Frame")

            ValueFrame.Name = "ValueFrame"
            ValueFrame.Parent = SliderFrame
            ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ValueFrame.Size = UDim2.new(0, 140, 0, 5)
            ValueFrame.BackgroundTransparency = 0
            ValueFrame.BorderSizePixel = 0
            ValueFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            ValueFrame.Position = UDim2.new(0.4, 0, 0.8, 0)
            ValueFrame.ClipsDescendants = false


            local PartValue = Instance.new("Frame")

            PartValue.Name = "PartValue"
            PartValue.Parent = ValueFrame
            PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
            PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            PartValue.Size = UDim2.new(0, 140, 0, 5)
            PartValue.BackgroundTransparency = 1
            PartValue.BorderSizePixel = 0
            PartValue.AnchorPoint = Vector2.new(0.6, 0.6)
            PartValue.Position = UDim2.new(0.6, 0, 0.6, 0)
            PartValue.ClipsDescendants = false

            local MainValue = Instance.new("Frame")

            MainValue.Name = "MainValue"
            MainValue.Parent = PartValue
            MainValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
            MainValue.BackgroundTransparency = 0
            MainValue.BorderSizePixel = 0
            -- MainValue.AnchorPoint = Vector2.new(0.6, 0.6)
            MainValue.Position = UDim2.new(0., 0, 0.0, 0)
            MainValue.ClipsDescendants = false

            local Conner_S1 = Instance.new("UICorner")

            Conner_S1.CornerRadius = UDim.new(0, 8)
            Conner_S1.Name = ""
            Conner_S1.Parent = MainValue

            local Conner_S2 = Instance.new("UICorner")

            Conner_S2.CornerRadius = UDim.new(0, 8)
            Conner_S2.Name = ""
            Conner_S2.Parent = ValueFrame

            local ConneValue = Instance.new("Frame")

            ConneValue.Name = "ConneValue"
            ConneValue.Parent = PartValue
            ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ConneValue.Size = UDim2.new(0, 13, 0,13)
            ConneValue.BackgroundTransparency = 0
            ConneValue.BorderSizePixel = 0
            ConneValue.AnchorPoint = Vector2.new(0.6, 0.6)
            ConneValue.Position = UDim2.new((de or 0)/max, 0.6, 0.3,0.6, 0)
            ConneValue.ClipsDescendants = false


            local Conner_Conne = Instance.new("UICorner")

            Conner_Conne.CornerRadius = UDim.new(0, 300)
            Conner_Conne.Name = ""
            Conner_Conne.Parent = ConneValue

            local Addvalue = Instance.new("ImageButton")

            Addvalue.Name = "Imatog"
            Addvalue.Parent = SliderFrame
            Addvalue.BackgroundTransparency = 1.000
            Addvalue.BorderSizePixel = 0
            Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
            Addvalue.Size = UDim2.new(0, 15, 0, 15)
            Addvalue.Image = ""--http://www.roblox.com/asset/?id=6035067836"
            Addvalue.ImageColor3 =  Color3.fromRGB(255, 255, 255)

            local Deletevalue = Instance.new("ImageButton")

            Deletevalue.Name = "Imatog"
            Deletevalue.Parent = SliderFrame
            Deletevalue.BackgroundTransparency = 1.000
            Deletevalue.BorderSizePixel = 0
            Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
            Deletevalue.Size = UDim2.new(0, 15, 0, 15)
            Deletevalue.Image = ""--"http://www.roblox.com/asset/?id=6035047377"
            Deletevalue.ImageColor3 =  Color3.fromRGB(255, 255, 255)


            local TextButton_2_Toggle = Instance.new("TextButton")

            TextButton_2_Toggle.Parent = ValueFrame
            TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    --        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_2_Toggle.BorderSizePixel = 0
            TextButton_2_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
            TextButton_2_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)
            TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
            TextButton_2_Toggle.Font = Enum.Font.SourceSans
            TextButton_2_Toggle.Text = " "
            TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_2_Toggle.TextSize = 12.000
            TextButton_2_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner.Name = ""
            TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

            local TextButton_3_Toggle = Instance.new("TextButton")

            TextButton_3_Toggle.Parent = TextButton_2_Toggle
            TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
    --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_3_Toggle.BorderSizePixel = 0
            TextButton_3_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
            TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.6, 0)
            TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
            TextButton_3_Toggle.Font = Enum.Font.SourceSans
            TextButton_3_Toggle.Text = " "
            TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_3_Toggle.TextSize = 12.000
            TextButton_3_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

            local TextButton_4_Toggle = Instance.new("TextButton")

            TextButton_4_Toggle.Parent = TextButton_3_Toggle
            TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
    --        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_4_Toggle.BorderSizePixel = 0
            TextButton_4_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
            TextButton_4_Toggle.Position = UDim2.new(0.6, 0, 0.6, 0)
            TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
            TextButton_4_Toggle.Font = Enum.Font.SourceSans
            TextButton_4_Toggle.Text = " "
            TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_4_Toggle.TextSize = 12.000
            TextButton_4_Toggle.AutoButtonColor = false
            TextButton_4_Toggle.BackgroundTransparency = 1
            TextButton_4_Toggle.Visible = true

            local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner4.Name = ""
            TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


            local TextButton_Toggle = Instance.new("TextButton")

            TextButton_Toggle.Parent = ValueFrame
            TextButton_Toggle.BackgroundTransparency =1
            TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_Toggle.BorderSizePixel = 0
            TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
            TextButton_Toggle.AutoButtonColor = false
            TextButton_Toggle.Font = Enum.Font.SourceSans
            TextButton_Toggle.Text = " "
            TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle.TextSize = 12.000
            TextButton_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
            TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)



        -- local value = de
        local check2 = {toogle2 = false;}
            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0.3,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        5
                    )

                    MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

                    ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                    if floor == true then
                        local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                    --   callback[2] = value
                    callback({
                        ["s"] = value;
                        ["t"] = check2.toogle2
                    })
                    --callback({value,check2.toogle2})
                        --callback(value)
                    else
                        local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback({
                            ["s"] = value;
                            ["t"] = check2.toogle2
                        })
                --       callback({value,check2.toogle2})

                    end



                end

                local dragging = false
                ConneValue.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ConneValue.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )
                SliderFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                SliderFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )


                ValueFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ValueFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )

                game:GetService("UserInputService").InputChanged:Connect(
                    function(input)
                        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            move(input)
                        end
                    end
                    )

                    CustomValue.FocusLost:Connect(function()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) <= min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2;
                        })
                --       callback({ tonumber(CustomValue.Text),check2.toogle2})
                --  pcall(callback, CustomValue.Text)
                    end)


                    Addvalue.MouseButton1Click:Connect(function ()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        pcall(function()
                            CustomValue.Text  = CustomValue.Text  - tonumber(lol)
                        end)
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) < min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2
                        })
                    --   callback({ tonumber(CustomValue.Text),check2.toogle2})
                    --  pcall(callback, CustomValue.Text)
                    end)

                    Deletevalue.MouseButton1Click:Connect(function ()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        pcall(function()
                            CustomValue.Text  = CustomValue.Text  + tonumber(lol)
                        end)
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) < min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2;
                        })
            --callback({ tonumber(CustomValue.Text),check2.toogle2})
                    --  pcall(callback, CustomValue.Text)
                    end)




            ---
                    TextButton_Toggle.MouseEnter:Connect(function()
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )

                TextButton_Toggle.MouseLeave:Connect(function()
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )



            TextButton_Toggle.MouseButton1Click:Connect(function()
                if check2.toogle2 == false   then
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_3_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_2_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.6, 0), "Out", "Quad", 0.3, true)
                else
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_3_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_2_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.6, 0), "Out", "Quad", 0.3, true)
                end
                    check2.toogle2 = not check2.toogle2
                    callback({
                        ["t"] = check2.toogle2;

                    })
                --   callback({value,check2.toogle2})
                    --callback(check2.toogle2)
            end
        )

            if tog == true then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.6, 0), "Out", "Quad", 0.3, true)
                check2.toogle2 = true
                callback({
                    ["t"] = check2.toogle2;
                })
        --        callback({value,check2.toogle2})
            --  callback(check2.toogle2)
            end


        else
            tog = nil
            local SliderFrame = Instance.new("Frame")

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = ScrollingFrame_Pageframe
            SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- Color3.fromRGB(255, 255, 255)
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
            SliderFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            SliderFrame.Size = UDim2.new(0, 214, 0, 50) -- UDim2.new(0, 213, 0, 35)
            SliderFrame.BackgroundTransparency  = 0
            SliderFrame.ClipsDescendants = true

            local SliderFrameConner = Instance.new("UICorner")

            SliderFrameConner.CornerRadius = UDim.new(0, 4)
            SliderFrameConner.Name = ""
            SliderFrameConner.Parent = SliderFrame

            local SliderFrameStroke = Instance.new("UIStroke")

            SliderFrameStroke.Thickness = 1
            SliderFrameStroke.Name = ""
            SliderFrameStroke.Parent = SliderFrame
            SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            SliderFrameStroke.Color = Color3.fromRGB(255, 255, 255)
            SliderFrameStroke.Transparency = 0.7



            SliderFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            SliderFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = SliderFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.4, 0, 0.2, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.TextSize = 11.000
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


            local ShowValueFarm = Instance.new("Frame")

            ShowValueFarm.Name = "ShowValueFarm"
            ShowValueFarm.Parent = SliderFrame
            ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
            ShowValueFarm.BackgroundTransparency = 0
            ShowValueFarm.BorderSizePixel = 0
            ShowValueFarm.AnchorPoint = Vector2.new(0.6, 0.6)
            ShowValueFarm.Position = UDim2.new(0.8, 0, 0.25, 0)
            ShowValueFarm.ClipsDescendants = false

            local CustomValue = Instance.new("TextBox")

            CustomValue.Parent = ShowValueFarm
            CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
            CustomValue.BorderSizePixel = 0
            CustomValue.ClipsDescendants = true
            CustomValue.AnchorPoint = Vector2.new(0.6, 0.6)
            CustomValue.Position = UDim2.new(0.6, 0, 0.6, 0)
            CustomValue.Size = UDim2.new(0, 158, 0, 26)
            CustomValue.Font = Enum.Font.GothamSemibold
            CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
            CustomValue.PlaceholderText =  ""
            if floor == true then
                CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
            else
                CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
            end
            CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            CustomValue.TextSize = 8.000
            CustomValue.BackgroundTransparency = 1

            local ValueFrame = Instance.new("Frame")

            ValueFrame.Name = "ValueFrame"
            ValueFrame.Parent = SliderFrame
            ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ValueFrame.Size = UDim2.new(0, 190, 0, 5)
            ValueFrame.BackgroundTransparency = 0
            ValueFrame.BorderSizePixel = 0
            ValueFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            ValueFrame.Position = UDim2.new(0.6, 0, 0.8, 0)
            ValueFrame.ClipsDescendants = false


            local PartValue = Instance.new("Frame")

            PartValue.Name = "PartValue"
            PartValue.Parent = ValueFrame
            PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
            PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            PartValue.Size = UDim2.new(0, 190, 0, 5)
            PartValue.BackgroundTransparency = 1
            PartValue.BorderSizePixel = 0
            PartValue.AnchorPoint = Vector2.new(0.6, 0.6)
            PartValue.Position = UDim2.new(0.6, 0, 0.6, 0)
            PartValue.ClipsDescendants = false

            local MainValue = Instance.new("Frame")

            MainValue.Name = "MainValue"
            MainValue.Parent = PartValue
            MainValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
            MainValue.BackgroundTransparency = 0
            MainValue.BorderSizePixel = 0
            -- MainValue.AnchorPoint = Vector2.new(0.6, 0.6)
            MainValue.Position = UDim2.new(0., 0, 0.0, 0)
            MainValue.ClipsDescendants = false

            local Conner_S1 = Instance.new("UICorner")

            Conner_S1.CornerRadius = UDim.new(0, 8)
            Conner_S1.Name = ""
            Conner_S1.Parent = MainValue

            local Conner_S2 = Instance.new("UICorner")

            Conner_S2.CornerRadius = UDim.new(0, 8)
            Conner_S2.Name = ""
            Conner_S2.Parent = ValueFrame

            local ConneValue = Instance.new("Frame")

            ConneValue.Name = "ConneValue"
            ConneValue.Parent = PartValue
            ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ConneValue.Size = UDim2.new(0, 13, 0,13)
            ConneValue.BackgroundTransparency = 0
            ConneValue.BorderSizePixel = 0
            ConneValue.AnchorPoint = Vector2.new(0.6, 0.6)
            ConneValue.Position = UDim2.new((de or 0)/max, 0.6, 0.3,0.6, 0)
            ConneValue.ClipsDescendants = false


            local Conner_Conne = Instance.new("UICorner")

            Conner_Conne.CornerRadius = UDim.new(0, 300)
            Conner_Conne.Name = ""
            Conner_Conne.Parent = ConneValue

            local Addvalue = Instance.new("ImageButton")

            Addvalue.Name = "Imatog"
            Addvalue.Parent = SliderFrame
            Addvalue.BackgroundTransparency = 1.000
            Addvalue.BorderSizePixel = 0
            Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
            Addvalue.Size = UDim2.new(0, 15, 0, 15)
            Addvalue.Image = ""--"http://www.roblox.com/asset/?id=6035067836"
            Addvalue.ImageColor3 =  Color3.fromRGB(255, 255, 255)

            local Deletevalue = Instance.new("ImageButton")

            Deletevalue.Name = "Imatog"
            Deletevalue.Parent = SliderFrame
            Deletevalue.BackgroundTransparency = 1.000
            Deletevalue.BorderSizePixel = 0
            Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
            Deletevalue.Size = UDim2.new(0, 15, 0, 15)
            Deletevalue.Image = ""--"http://www.roblox.com/asset/?id=6035047377"
            Deletevalue.ImageColor3 =  Color3.fromRGB(255, 255, 255)

            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0.3,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        5
                    )

                    MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

                    ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                    if floor == true then
                        local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback(value)
                    else
                        local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback(value)
                    end



                end

                local dragging = false
                ConneValue.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ConneValue.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )
                SliderFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                SliderFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )


                ValueFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ValueFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )

                game:GetService("UserInputService").InputChanged:Connect(
                    function(input)
                        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            move(input)
                        end
                    end
                    )

                    CustomValue.FocusLost:Connect(function()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        pcall(callback, CustomValue.Text)
                    end)


            Addvalue.MouseButton1Click:Connect(function ()
                if CustomValue.Text == "" then
                    CustomValue.Text  = de
                end
                CustomValue.Text  = CustomValue.Text  - tonumber(lol)
                if  tonumber(CustomValue.Text) > max then
                    CustomValue.Text  = max
                end
                if  tonumber(CustomValue.Text) < min then
                    CustomValue.Text  = min
                end
                MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
                if floor == true then
                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                else
                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                end
                pcall(callback, CustomValue.Text)
            end)

            Deletevalue.MouseButton1Click:Connect(function ()
                if CustomValue.Text == "" then
                    CustomValue.Text  = de
                end
                CustomValue.Text  = CustomValue.Text  + tonumber(lol)
                if  tonumber(CustomValue.Text) > max then
                    CustomValue.Text  = max
                end
                if  tonumber(CustomValue.Text) < min then
                    CustomValue.Text  = min
                end
                MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
                if floor == true then
                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                else
                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                end
                pcall(callback, CustomValue.Text)
            end)

        end

        end

        function items:Drop(text,use,option,callback)

        if use == false then
            local DropFrame = Instance.new("Frame")

            DropFrame.Name = "DropFrame"
            DropFrame.Parent = ScrollingFrame_Pageframe
            DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- Color3.fromRGB(255, 255, 255)
            DropFrame.BorderSizePixel = 0
            DropFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
            DropFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
            DropFrame.BackgroundTransparency  = 0
            DropFrame.ClipsDescendants = true

            local ConnerDropFrame = Instance.new("UICorner")

            ConnerDropFrame.CornerRadius = UDim.new(0, 4)
            ConnerDropFrame.Name = ""
            ConnerDropFrame.Parent = DropFrame

            local DropFrameStroke = Instance.new("UIStroke")

            DropFrameStroke.Thickness = 1
            DropFrameStroke.Name = ""
            DropFrameStroke.Parent = DropFrame
            DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            DropFrameStroke.Color = Color3.fromRGB(255, 255, 255)
            DropFrameStroke.Transparency = 0.7





            local LabelFrameDrop = Instance.new("TextLabel")

            LabelFrameDrop.Parent = DropFrame
            LabelFrameDrop.Name = "LabelFrameDrop"
            LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
            LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
            LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
            LabelFrameDrop.Text = ""
            LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelFrameDrop.TextSize = 14.000
        --   LabelFrameDrop.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelFrameDrop.BackgroundTransparency = 1
            LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


            local TextLabel_TapDrop = Instance.new("TextLabel")

            TextLabel_TapDrop.Parent = LabelFrameDrop
            TextLabel_TapDrop.Name = "TextLabel_TapDrop"
            TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
            TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
            TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
            TextLabel_TapDrop.Text = tostring(text).." :"
            TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextLabel_TapDrop.TextSize = 14.000
    --     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.6, 0.6)
            TextLabel_TapDrop.BackgroundTransparency = 1
            TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


            local DropArbt_listimage = Instance.new("ImageButton")

            DropArbt_listimage.Parent = LabelFrameDrop
            DropArbt_listimage.BackgroundTransparency = 1.000
            DropArbt_listimage.AnchorPoint = Vector2.new(0.6, 0.6)
            DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.6, 0)
            DropArbt_listimage.BorderSizePixel = 0
            DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
            DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
            DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

            local ScolDown = Instance.new("ScrollingFrame")

            ScolDown.Name = "ScolDown"
            ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
            ScolDown.Parent = LabelFrameDrop
            ScolDown.Active = true
            ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScolDown.BorderSizePixel = 0
            ScolDown.Size = UDim2.new(0, 205, 0, 115)
            ScolDown.ScrollBarThickness = 3
            ScolDown.ClipsDescendants = true
            ScolDown.BackgroundTransparency = 1
            ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

            local UIListLayoutlist = Instance.new("UIListLayout")
            local UIPaddinglist = Instance.new("UIPadding")

            UIListLayoutlist.Name = "UIListLayoutlist"
            UIListLayoutlist.Parent = ScolDown
            UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayoutlist.Padding = UDim.new(0, 5)

            UIPaddinglist.Name = "UIPaddinglist"
            UIPaddinglist.Parent = ScolDown
            UIPaddinglist.PaddingTop = UDim.new(0, 5)
            UIPaddinglist.PaddingLeft = UDim.new(0, 12)

            local ButtonDrop = Instance.new("TextButton")

            ButtonDrop.Parent = DropFrame
            ButtonDrop.Name = "ButtonDrop"
            ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
            ButtonDrop.Font = Enum.Font.SourceSansSemibold
            ButtonDrop.Text = ""
            ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            ButtonDrop.TextSize = 13.000
        --   ButtonDrop.AnchorPoint = Vector2.new(0.6, 0.6)
            ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
            ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
            ButtonDrop.BackgroundTransparency = 1
            ButtonDrop.TextWrapped = true
            ButtonDrop.AutoButtonColor = false
            ButtonDrop.ClipsDescendants = true

            local dog = false

            local FrameSize = 75
            local cout = 0
            for i , v in pairs(option) do
                cout =cout + 1
                if cout == 1 then
                    FrameSize = 75
                elseif cout == 2 then
                    FrameSize = 110
                elseif cout >= 3 then
                    FrameSize = 150
                end

                local ListFrame = Instance.new("Frame")

                ListFrame.Name = "ListFrame"
                ListFrame.Parent = ScolDown
                ListFrame.BackgroundColor3 =  Color3.fromRGB(255,255,255)-- Color3.fromRGB(255, 255, 255)
                ListFrame.BorderSizePixel = 0
                ListFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
                ListFrame.AnchorPoint = Vector2.new(0.6, 0.6)
                ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
                ListFrame.BackgroundTransparency  = 1
                ListFrame.ClipsDescendants = true

                local TextLabel_TapDro2p = Instance.new("TextLabel")

                TextLabel_TapDro2p.Parent = ListFrame
                TextLabel_TapDro2p.Name =  tostring(v).."Dropdown"
                TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_TapDro2p.Position = UDim2.new(0.6, 0, 0.6, 0)
                TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
                TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold
                TextLabel_TapDro2p.Text = tostring(v)
                TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
                TextLabel_TapDro2p.TextSize = 14.000
                TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.6, 0.6)
                TextLabel_TapDro2p.BackgroundTransparency = 1
                TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

                local ButtonDrop2 = Instance.new("TextButton")

                ButtonDrop2.Parent = ListFrame
                ButtonDrop2.Name = "ButtonDrop2"
                ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
                ButtonDrop2.Font = Enum.Font.SourceSansSemibold
                ButtonDrop2.Text = ""
                ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
                ButtonDrop2.TextSize = 13.000
            --   ButtonDrop2.AnchorPoint = Vector2.new(0.6, 0.6)
                ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
                ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
                ButtonDrop2.BackgroundTransparency = 1
                ButtonDrop2.TextWrapped = true
                ButtonDrop2.AutoButtonColor = false
                ButtonDrop2.ClipsDescendants = true

                ButtonDrop2.MouseEnter:Connect(function ()
                    TweenService:Create(
                        TextLabel_TapDro2p,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end)

                ButtonDrop2.MouseLeave:Connect(function ()
                    TweenService:Create(
                        TextLabel_TapDro2p,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end)

                ButtonDrop2.MouseButton1Click:Connect(function()
                    TweenService:Create(
                        DropFrame,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        DropArbt_listimage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    TextLabel_TapDrop.Text =  text.." : "..tostring(v)
                    callback(v)
                    dog = not dog
                end
            )


                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            end


            DropFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    DropFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_TapDrop,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        DropFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    DropFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_TapDrop,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )


        ButtonDrop.MouseButton1Click:Connect(function()
            if dog == false then
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = -180}
                ):Play()
                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            else
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play()
                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            end
            dog = not dog
        end
    )
    ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

        local dropfunc = {}

        function dropfunc:Clear()
            TextLabel_TapDrop.Text = tostring(text).." :"
            for i, v in next, ScolDown:GetChildren() do
                if v:IsA("Frame") then
                    v:Destroy()
                end
            end
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end

        function dropfunc:Add(t)
            local ListFrame = Instance.new("Frame")

            ListFrame.Name = "ListFrame"
            ListFrame.Parent = ScolDown
            ListFrame.BackgroundColor3 =  Color3.fromRGB(255,255,255)-- Color3.fromRGB(255, 255, 255)
            ListFrame.BorderSizePixel = 0
            ListFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
            ListFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
            ListFrame.BackgroundTransparency  = 1
            ListFrame.ClipsDescendants = true

            local TextLabel_TapDro2p = Instance.new("TextLabel")

            TextLabel_TapDro2p.Parent = ListFrame
            TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
            TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_TapDro2p.Position = UDim2.new(0.6, 0, 0.6, 0)
            TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
            TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold
            TextLabel_TapDro2p.Text = tostring(t)
            TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextLabel_TapDro2p.TextSize = 14.000
            TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.6, 0.6)
            TextLabel_TapDro2p.BackgroundTransparency = 1
            TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

            local ButtonDrop2 = Instance.new("TextButton")

            ButtonDrop2.Parent = ListFrame
            ButtonDrop2.Name = "ButtonDrop2"
            ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
            ButtonDrop2.Font = Enum.Font.SourceSansSemibold
            ButtonDrop2.Text = ""
            ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
            ButtonDrop2.TextSize = 13.000
        --   ButtonDrop2.AnchorPoint = Vector2.new(0.6, 0.6)
            ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
            ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
            ButtonDrop2.BackgroundTransparency = 1
            ButtonDrop2.TextWrapped = true
            ButtonDrop2.AutoButtonColor = false
            ButtonDrop2.ClipsDescendants = true

            ButtonDrop2.MouseEnter:Connect(function ()
                TweenService:Create(
                    TextLabel_TapDro2p,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end)

            ButtonDrop2.MouseLeave:Connect(function ()
                TweenService:Create(
                    TextLabel_TapDro2p,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end)

            ButtonDrop2.MouseButton1Click:Connect(function()
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play()
                TextLabel_TapDrop.Text =  text.." : "..tostring(t)
                callback(t)
                dog = not dog
            end
        )

            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end
        return dropfunc

    else

        local location = option.location or self.flags
        local flag = not use and option.flag or ""
        local callback = callback or function() end
        local list = option.list or {}
        local default = list.default or list[1].Name

        if not use then
            location[flag] = default
        end


        local DropFrame = Instance.new("Frame")

        DropFrame.Name = "DropFrame"
        DropFrame.Parent = ScrollingFrame_Pageframe
        DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- Color3.fromRGB(255, 255, 255)
        DropFrame.BorderSizePixel = 0
        DropFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
        DropFrame.AnchorPoint = Vector2.new(0.6, 0.6)
        DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
        DropFrame.BackgroundTransparency  = 0
        DropFrame.ClipsDescendants = true

        local ConnerDropFrame = Instance.new("UICorner")

        ConnerDropFrame.CornerRadius = UDim.new(0, 4)
        ConnerDropFrame.Name = ""
        ConnerDropFrame.Parent = DropFrame

        local DropFrameStroke = Instance.new("UIStroke")

        DropFrameStroke.Thickness = 1
        DropFrameStroke.Name = ""
        DropFrameStroke.Parent = DropFrame
        DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
        DropFrameStroke.Color = Color3.fromRGB(255, 255, 255)
        DropFrameStroke.Transparency = 0.7





        local LabelFrameDrop = Instance.new("TextLabel")

        LabelFrameDrop.Parent = DropFrame
        LabelFrameDrop.Name = "LabelFrameDrop"
        LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
        LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
        LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
        LabelFrameDrop.Text = ""
        LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        LabelFrameDrop.TextSize = 14.000
    --   LabelFrameDrop.AnchorPoint = Vector2.new(0.6, 0.6)
        LabelFrameDrop.BackgroundTransparency = 1
        LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


        local TextLabel_TapDrop = Instance.new("TextLabel")

        TextLabel_TapDrop.Parent = LabelFrameDrop
        TextLabel_TapDrop.Name = "TextLabel_TapDrop"
        TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
        TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
        TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
        TextLabel_TapDrop.Text = tostring(text).." :"
        TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        TextLabel_TapDrop.TextSize = 14.000
--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.6, 0.6)
        TextLabel_TapDrop.BackgroundTransparency = 1
        TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


        local DropArbt_listimage = Instance.new("ImageButton")

        DropArbt_listimage.Parent = LabelFrameDrop
        DropArbt_listimage.BackgroundTransparency = 1.000
        DropArbt_listimage.AnchorPoint = Vector2.new(0.6, 0.6)
        DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.6, 0)
        DropArbt_listimage.BorderSizePixel = 0
        DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
        DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
        DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

        local ScolDown = Instance.new("ScrollingFrame")

        ScolDown.Name = "ScolDown"
        ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
        ScolDown.Parent = LabelFrameDrop
        ScolDown.Active = true
        ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScolDown.BorderSizePixel = 0
        ScolDown.Size = UDim2.new(0, 205, 0, 115)
        ScolDown.ScrollBarThickness = 3
        ScolDown.ClipsDescendants = true
        ScolDown.BackgroundTransparency = 1
        ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

        local UIListLayoutlist = Instance.new("UIListLayout")
        local UIPaddinglist = Instance.new("UIPadding")

        UIListLayoutlist.Name = "UIListLayoutlist"
        UIListLayoutlist.Parent = ScolDown
        UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayoutlist.Padding = UDim.new(0, 5)

        UIPaddinglist.Name = "UIPaddinglist"
        UIPaddinglist.Parent = ScolDown
        UIPaddinglist.PaddingTop = UDim.new(0, 5)
        UIPaddinglist.PaddingLeft = UDim.new(0, 12)

        local ButtonDrop = Instance.new("TextButton")

        ButtonDrop.Parent = DropFrame
        ButtonDrop.Name = "ButtonDrop"
        ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
        ButtonDrop.Font = Enum.Font.SourceSansSemibold
        ButtonDrop.Text = ""
        ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        ButtonDrop.TextSize = 13.000
    --   ButtonDrop.AnchorPoint = Vector2.new(0.6, 0.6)
        ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
        ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
        ButtonDrop.BackgroundTransparency = 1
        ButtonDrop.TextWrapped = true
        ButtonDrop.AutoButtonColor = false
        ButtonDrop.ClipsDescendants = true

        local dog = false

        local FrameSize = 75
        local cout = 0
        for i , v in pairs(list) do
            cout =cout + 1
            if cout == 1 then
                FrameSize = 75
            elseif cout == 2 then
                FrameSize = 110
            elseif cout >= 3 then
                FrameSize = 150
            end

            local listtog = Instance.new("Frame")

            listtog.Name = "listtog"
            listtog.Parent = ScolDown
            listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            listtog.BackgroundTransparency =1
            listtog.BorderSizePixel = 0
            listtog.ClipsDescendants = true
            listtog.AnchorPoint = Vector2.new(0.6, 0.6)
            listtog.Position = UDim2.new(0.6, 0, 0.6, 0)
            listtog.Size = UDim2.new(0, 210, 0, 33)


            local listtextbutton = Instance.new("TextButton")

            listtextbutton.Parent = listtog
            listtextbutton.BackgroundTransparency =1
            listtextbutton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            listtextbutton.BorderSizePixel = 0
            listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
            listtextbutton.AutoButtonColor = false
            listtextbutton.Font = Enum.Font.SourceSans
            listtextbutton.Text = " "
            listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
            listtextbutton.TextSize = 14.000

            local farmtoglist = Instance.new("TextButton")

            farmtoglist.Parent = listtextbutton
            farmtoglist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            farmtoglist.BorderColor3 = Color3.fromRGB(255, 255, 255)
            farmtoglist.BorderSizePixel = 0
            farmtoglist.AnchorPoint = Vector2.new(0.6, 0.6)
            farmtoglist.Position = UDim2.new(0.1, 0, 0.6, 0)
            farmtoglist.Size = UDim2.new(0, 23, 0, 23)
            farmtoglist.Font = Enum.Font.SourceSans
            farmtoglist.Text = " "
            farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)
            farmtoglist.TextSize = 14.000
            farmtoglist.AutoButtonColor = false


            local farmtoglist2 = Instance.new("TextButton")

            farmtoglist2.Parent = farmtoglist
            farmtoglist2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
            farmtoglist2.BorderColor3 = Color3.fromRGB(255, 255, 255)
            farmtoglist2.BorderSizePixel = 0
            farmtoglist2.AnchorPoint = Vector2.new(0.6, 0.6)
            farmtoglist2.Position = UDim2.new(0.6, 0, 0.6, 0)
            farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
            farmtoglist2.Font = Enum.Font.SourceSans
            farmtoglist2.Text = " "
            farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)
            farmtoglist2.TextSize = 14.000
            farmtoglist2.AutoButtonColor = false


            local listimage = Instance.new("ImageButton")

            listimage.Parent = farmtoglist2
            listimage.BackgroundTransparency = 1.000
            listimage.AnchorPoint = Vector2.new(0.6, 0.6)
            listimage.Position = UDim2.new(0.6, 0, 0.6, 0)
            listimage.BorderSizePixel = 0
            listimage.Size = UDim2.new(0, 0, 0, 0)
            listimage.Image = "http://www.roblox.com/asset/?id=5880482965"


            local textlist = Instance.new("TextLabel")


            textlist.Parent = listtextbutton
            textlist.Name = "textlist"
            textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textlist.BackgroundTransparency = 1.000
            textlist.AnchorPoint = Vector2.new(0.6, 0.6)
            textlist.Position = UDim2.new(0.6, 0, 0.6, 0)
            textlist.BorderSizePixel = 0
            textlist.Size = UDim2.new(0, 91, 0, 25)
            textlist.Font = Enum.Font.GothamSemibold
            textlist.Text = tostring(v.Name)
            textlist.TextColor3 = Color3.fromRGB(255, 255, 255)
            textlist.TextSize = 13.000



            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = farmtoglist

            local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
            TextButton_Pageframe_Uiconner22.Name = ""
            TextButton_Pageframe_Uiconner22.Parent = farmtoglist2



            listtextbutton.MouseButton1Click:Connect(function()
                if not  location[v.flag] then
                    listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.6, 0, 0.6, 0), "In", "Bounce", 0.1, true)
                    wait(0.1)
                    listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.6, 0, 0.6, 0), "In", "Bounce", 0.1, true)
                else
                    listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.6, 0, 0.6, 0), "In", "Bounce", 0.1, true)
                    wait(0.1)
                    listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.6, 0, 0.6, 0), "In", "Bounce", 0.1, true)
                end
                location[v.flag] = not location[v.flag]
                callback(location[v.flag])
            end
        )

        if  location[v.flag] then
            listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.6, 0, 0.6, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.6, 0, 0.6, 0), "In", "Bounce", 0.1, true)

            callback(location[v.flag])
        end

            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end


        DropFrame.MouseEnter:Connect(function()
            TweenService:Create(
                DropFrameStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextLabel_TapDrop,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    DropFrame.MouseLeave:Connect(function()
            TweenService:Create(
                DropFrameStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextLabel_TapDrop,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )


    ButtonDrop.MouseButton1Click:Connect(function()
        if dog == false then
            TweenService:Create(
                DropFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        else
            TweenService:Create(
                DropFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = 0}
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end
        dog = not dog
    end
)
ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )



        end



        end

        function items:TextBox(text,text2,callback)
            local TextFrame = Instance.new("Frame")

            TextFrame.Name = "TextFrame"
            TextFrame.Parent = ScrollingFrame_Pageframe
            TextFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            TextFrame.BorderSizePixel = 0
            TextFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
            TextFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            TextFrame.Size = UDim2.new(0, 213, 0, 40)
            TextFrame.BackgroundTransparency  = 1
            TextFrame.ClipsDescendants = true

            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = TextFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.23, 0, 0.65, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.TextSize = 12.000
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Center

            local ConerTextBox = Instance.new("UICorner")

            ConerTextBox.CornerRadius = UDim.new(0, 4)
            ConerTextBox.Name = ""
            ConerTextBox.Parent = TextFrame

            local FrameBox = Instance.new("Frame")

            FrameBox.Name = "TextFrame"
            FrameBox.Parent = TextFrame
            FrameBox.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            FrameBox.BorderSizePixel = 0
            FrameBox.Position = UDim2.new(0.88, 0, 0.65, 0)
            FrameBox.AnchorPoint = Vector2.new(0.6, 0.6)
            FrameBox.Size = UDim2.new(0, 60, 0, 30)
            FrameBox.BackgroundTransparency  = 0.2
            FrameBox.ClipsDescendants = true
            FrameBox.AnchorPoint = Vector2.new(0.6, 0.6)

            local TextFrame2 = Instance.new("TextBox")

            TextFrame2.Parent = FrameBox
            TextFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextFrame2.BorderSizePixel = 0
            TextFrame2.ClipsDescendants = true
            TextFrame2.Position = UDim2.new(0.75, 0, 0.6, 0)
            TextFrame2.AnchorPoint = Vector2.new(0.6, 0.6)
            TextFrame2.Size = UDim2.new(0, 158, 0, 35)
            TextFrame2.Font = Enum.Font.GothamSemibold
            TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
            TextFrame2.PlaceholderText = text2
            TextFrame2.Text = ""
            TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextFrame2.TextSize = 12.000
            TextFrame2.BackgroundTransparency = 1

            local ConerTextBox2 = Instance.new("UICorner")

            ConerTextBox2.CornerRadius = UDim.new(0, 4)
            ConerTextBox2.Name = ""
            ConerTextBox2.Parent = FrameBox

            local TextBoxStroke = Instance.new("UIStroke")

            TextBoxStroke.Thickness = 1
            TextBoxStroke.Name = ""
            TextBoxStroke.Parent = FrameBox
            TextBoxStroke.LineJoinMode = Enum.LineJoinMode.Round
            TextBoxStroke.Color = Color3.fromRGB(255, 255, 255)
            TextBoxStroke.Transparency = 0.7


            TextFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    FrameBox,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 70, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    FrameBox,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextFrame2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextFrame2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelNameSliderxd,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextBoxStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Thickness = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        TextFrame.MouseLeave:Connect(function()
            TweenService:Create(
                FrameBox,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 60, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                FrameBox,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 = Color3.fromRGB(23, 23, 23)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextFrame2,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextBoxStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Thickness = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                LabelNameSliderxd,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextFrame2,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
        )
            TextFrame2.FocusLost:Connect(function ()
                if #TextFrame2.Text > 0 then
                    pcall(callback,TextFrame2.Text)
                end
            end)
        end

        function items:Bind(text,bi,callback)
            local BindFrame = Instance.new("Frame")

            BindFrame.Name = "BindFrame"
            BindFrame.Parent = ScrollingFrame_Pageframe
            BindFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            BindFrame.BorderSizePixel = 0
            BindFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
            BindFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            BindFrame.Size = UDim2.new(0, 213, 0, 35)
            BindFrame.BackgroundTransparency  = 0
            BindFrame.ClipsDescendants = true

            local BindConner = Instance.new("UICorner")

            BindConner.CornerRadius = UDim.new(0, 4)
            BindConner.Name = ""
            BindConner.Parent = BindFrame

            local BindStroke = Instance.new("UIStroke")

            BindStroke.Thickness = 1
            BindStroke.Name = ""
            BindStroke.Parent = BindFrame
            BindStroke.LineJoinMode = Enum.LineJoinMode.Round
            BindStroke.Color = Color3.fromRGB(255, 255, 255)
            BindStroke.Transparency = 0.7

            local LabelBind = Instance.new("TextLabel")

            LabelBind.Parent = BindFrame
            LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind.BackgroundTransparency = 1
            LabelBind.BorderSizePixel = 0
            LabelBind.Position = UDim2.new(0.4, 0, 0.6, 0)
            LabelBind.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelBind.Size = UDim2.new(0, 140, 0, 35)
            LabelBind.Font = Enum.Font.GothamBold
            LabelBind.Text = tostring(text)
            LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind.TextSize = 11.000
            LabelBind.TextXAlignment = Enum.TextXAlignment.Left

            local key = bi.Name
            local LabelBind2 = Instance.new("TextButton")

            LabelBind2.Parent = BindFrame
            LabelBind2.Name = "LabelBind2"
            LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind2.Size = UDim2.new(0, 100, 0, 19)
            LabelBind2.Font = Enum.Font.GothamBold
            LabelBind2.Text =  "KEY : "..key
            LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind2.TextSize = 11.000
            LabelBind2.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelBind2.Position = UDim2.new(0.75, 0, 0.6, 0)
            LabelBind2.TextXAlignment = Enum.TextXAlignment.Center
            LabelBind2.BackgroundTransparency = 1
            LabelBind2.TextWrapped = true

            local LabelBind22 = Instance.new("TextButton")

            LabelBind22.Parent = BindFrame
            LabelBind22.Name = "LabelBind22"
            LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind22.Size = UDim2.new(0, 213, 0, 35)
            LabelBind22.Font = Enum.Font.GothamBold
            LabelBind22.Text =  ""
            LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind22.TextSize = 11.000
            LabelBind22.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelBind22.Position = UDim2.new(0.6, 0, 0.6, 0)
            LabelBind22.TextXAlignment = Enum.TextXAlignment.Center
            LabelBind22.BackgroundTransparency = 1
            LabelBind22.TextWrapped = true

            BindFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    BindStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind22,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )
            BindFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    BindStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind22,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            LabelBind22.MouseButton1Click:Connect(function ()


                LabelBind2.Text = "KEY : ".."..."
                local inputwait = game:GetService("UserInputService").InputBegan:wait()
                local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

                if
                fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
                then
                    LabelBind2.Text =  "KEY : "..fuckulop.Name
                    key = fuckulop.Name
                end
                -- if fuckulop.Name ~= "Unknown" then
                --     LabelBind2.Text = fuckulop.Name
                --     key = fuckulop.Name
                -- end

            end)


            game:GetService("UserInputService").InputBegan:connect(
                function(current)
                    local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

                        if fuckulop2.Name ==  key then
                            pcall(callback)

                    end
                end
                )

        end
			
        function items:Line()
            local LineFrame = Instance.new("Frame")

            LineFrame.Name = "LineFrame"
            LineFrame.Parent = ScrollingFrame_Pageframe
            LineFrame.BackgroundColor3 =  Color3.fromRGB(255, 255, 255)
            LineFrame.BorderSizePixel = 0
            LineFrame.Position = UDim2.new(0.6, 0, 0.6, 0)
            LineFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            LineFrame.Size = UDim2.new(0, 213, 0, 1)
            LineFrame.BackgroundTransparency  = 0
            LineFrame.ClipsDescendants = true

            local LineFrame_BindConner = Instance.new("UICorner")

            LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
            LineFrame_BindConner.Name = ""
            LineFrame_BindConner.Parent = LineFrame

        end

        function items:Color(text,preset,callback)
            local Pixker = Instance.new("Frame")

            Pixker.Name = "Pixker"
            Pixker.Parent = ScrollingFrame_Pageframe
            Pixker.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            Pixker.Size = UDim2.new(0, 213, 0, 33)
            Pixker.BackgroundTransparency = 0
            Pixker.BorderSizePixel = 0
            Pixker.AnchorPoint = Vector2.new(0.6, 0.6)
            Pixker.Position = UDim2.new(0.6, 0, 0.6, 0)
            Pixker.ClipsDescendants = true


            local BoxColorCorner2 = Instance.new("UICorner")

            BoxColorCorner2.CornerRadius = UDim.new(0, 4)
            BoxColorCorner2.Name = "BoxColorCorner"
            BoxColorCorner2.Parent = Pixker

            local MheeFrameStroke2 = Instance.new("UIStroke")

            MheeFrameStroke2.Thickness = 1
            MheeFrameStroke2.Name = ""
            MheeFrameStroke2.Parent = Pixker
            MheeFrameStroke2.LineJoinMode = Enum.LineJoinMode.Round
            MheeFrameStroke2.Color = Color3.fromRGB(255, 255, 255)
            MheeFrameStroke2.Transparency = 0.7


            local TextFrameColor = Instance.new("TextLabel")

            TextFrameColor.Parent = Pixker
            TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextFrameColor.BorderSizePixel = 0
            TextFrameColor.Size = UDim2.new(0, 200, 0, 34)
            TextFrameColor.Font = Enum.Font.SourceSans
            TextFrameColor.Text = "  "
            TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextFrameColor.TextSize = 14.000
            TextFrameColor.BackgroundTransparency = 1
            TextFrameColor.Position = UDim2.new(0., 0, 0., 0)

            local TextReal = Instance.new("TextLabel")

            TextReal.Parent = TextFrameColor
            TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextReal.BorderSizePixel = 0
            TextReal.Size = UDim2.new(0, 140, 0, 34)
            TextReal.Font = Enum.Font.GothamSemibold
            TextReal.Text = text
            TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
            TextReal.TextSize = 12.000
            TextReal.BackgroundTransparency = 1
            TextReal.Position = UDim2.new(0.05, 0, 0., 0)
            TextReal.TextXAlignment = Enum.TextXAlignment.Left

            local BoxColor = Instance.new("Frame")

            BoxColor.Name = "BoxColor"
            BoxColor.Parent = TextFrameColor
            BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BoxColor.Position = UDim2.new(0.85, 0, 0.6, 0)
            BoxColor.Size = UDim2.new(0, 35, 0, 19)
            BoxColor.AnchorPoint = Vector2.new(0.6, 0.6)

            local BoxColorCorner = Instance.new("UICorner")

            BoxColorCorner.CornerRadius = UDim.new(0, 4)
            BoxColorCorner.Name = "BoxColorCorner"
            BoxColorCorner.Parent = BoxColor

            local TextButton_Dropdown = Instance.new("TextButton")


            TextButton_Dropdown.Parent = TextFrameColor
            TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            TextButton_Dropdown.BorderSizePixel = 0
            TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)
            TextButton_Dropdown.Size = UDim2.new(0, 200, 0, 33)
            TextButton_Dropdown.Font = Enum.Font.SourceSans
            TextButton_Dropdown.Text = "  "
            TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Dropdown.TextSize = 14.000
            TextButton_Dropdown.AutoButtonColor = false
            --TextButton_Dropdown.AnchorPoint = Vector2.new(0.6, 0.6)
            TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)
            TextButton_Dropdown.BackgroundTransparency = 1



            Pixker.MouseEnter:Connect(function()
                TweenService:Create(
                    MheeFrameStroke2,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.}
                ):Play()
                TweenService:Create(
                    TextReal,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255,255, 255)}
                ):Play()

            end)
            Pixker.MouseLeave:Connect(function()
                TweenService:Create(
                    MheeFrameStroke2,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7}
                ):Play()
                TweenService:Create(
                    TextReal,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155,155, 155)}
                ):Play()
            end)
        -- Rainbow Toggle


        local TextButton_2_Toggle = Instance.new("TextButton")

        TextButton_2_Toggle.Parent = TextFrameColor
        TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
--        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_2_Toggle.BorderSizePixel = 0
        TextButton_2_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
        TextButton_2_Toggle.Position = UDim2.new(0.2, 0, 1.87, 0)
        TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
        TextButton_2_Toggle.Font = Enum.Font.SourceSans
        TextButton_2_Toggle.Text = " "
        TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle.TextSize = 12.000
        TextButton_2_Toggle.AutoButtonColor = false

        local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner.Name = ""
        TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

        local TextButton_3_Toggle = Instance.new("TextButton")

        TextButton_3_Toggle.Parent = TextButton_2_Toggle
        TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_3_Toggle.BorderSizePixel = 0
        TextButton_3_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
        TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.6, 0)
        TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
        TextButton_3_Toggle.Font = Enum.Font.SourceSans
        TextButton_3_Toggle.Text = " "
        TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_3_Toggle.TextSize = 12.000
        TextButton_3_Toggle.AutoButtonColor = false

        local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner2.Name = ""
        TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

        local TextButton_4_Toggle = Instance.new("TextButton")

        TextButton_4_Toggle.Parent = TextButton_3_Toggle
        TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_4_Toggle.BorderSizePixel = 0
        TextButton_4_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
        TextButton_4_Toggle.Position = UDim2.new(0.6, 0, 0.6, 0)
        TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
        TextButton_4_Toggle.Font = Enum.Font.SourceSans
        TextButton_4_Toggle.Text = " "
        TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_4_Toggle.TextSize = 12.000
        TextButton_4_Toggle.AutoButtonColor = false
        TextButton_4_Toggle.BackgroundTransparency = 1
        TextButton_4_Toggle.Visible = true

        local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner4.Name = ""
        TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


        local TextButton_Toggle = Instance.new("TextButton")

        TextButton_Toggle.Parent = ValueFrame
        TextButton_Toggle.BackgroundTransparency =1
        TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Toggle.BorderSizePixel = 0
        TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
        TextButton_Toggle.AutoButtonColor = false
        TextButton_Toggle.Font = Enum.Font.SourceSans
        TextButton_Toggle.Text = " "
        TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_Toggle.TextSize = 12.000
        TextButton_Toggle.AnchorPoint = Vector2.new(0.6, 0.6)
        TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

        local TextButton_3_Toggle2 = Instance.new("TextLabel")

        TextButton_3_Toggle2.Parent = TextButton_2_Toggle
        TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
        TextButton_3_Toggle2.BorderColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_3_Toggle2.BorderSizePixel = 0
        TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.6, 0.6)
        TextButton_3_Toggle2.Position = UDim2.new(1.9, 0, 0.6, 0)
        TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
        TextButton_3_Toggle2.Font = Enum.Font.SourceSansBold
        TextButton_3_Toggle2.Text = "Rainbow"
        TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_3_Toggle2.TextSize = 13.000
        TextButton_3_Toggle2.BackgroundTransparency = 1

        local OMF = Instance.new("TextButton")

        OMF.Parent = TextButton_2_Toggle
        OMF.BackgroundTransparency =1
        OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        OMF.BorderSizePixel = 0
        OMF.Size = UDim2.new(0, 100, 0, 20)
        OMF.AutoButtonColor = false
        OMF.Font = Enum.Font.SourceSans
        OMF.Text = " "
        OMF.TextColor3 = Color3.fromRGB(0, 0, 0)
        OMF.TextSize = 12.000
        OMF.AnchorPoint = Vector2.new(0.6, 0.6)
        OMF.Position = UDim2.new(1.3, 0, 0.6, 0)

        local Color =  Instance.new("ImageLabel")

        Color.Name = "Color"
        Color.Parent = TextFrameColor
        Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
        Color.Position = UDim2.new(0.05,0,4,0)
        Color.Size = UDim2.new(0, 195, 0, 40)
        Color.ZIndex = 0
        Color.BorderSizePixel = 0
        Color.Image = "rbxassetid://4155801252"

        local ColorFucj = Instance.new("UICorner")

        ColorFucj.CornerRadius = UDim.new(0, 4)
        ColorFucj.Name = ""
        ColorFucj.Parent = Color

        local ColorSelection =  Instance.new("ImageLabel")

        ColorSelection.Name = "ColorSelection"
        ColorSelection.Parent = Color
        ColorSelection.AnchorPoint = Vector2.new(0.6, 0.6)
        ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ColorSelection.BackgroundTransparency = 1.000
        ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
        ColorSelection.Size = UDim2.new(0, 18, 0, 18)
        ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
        ColorSelection.ScaleType = Enum.ScaleType.Fit
        ColorSelection.Visible = true

        local Hue =  Instance.new("ImageLabel")

        Hue.Name = "Hue2"
        Hue.Parent = TextFrameColor
        Hue.Position = UDim2.new(0.14,0,3,0)
        Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hue.Size = UDim2.new(0, 160, 0, 25)
        Hue.ZIndex = 0
        Hue.BorderSizePixel = 0

        local ColorFucj2 = Instance.new("UICorner")

        ColorFucj2.CornerRadius = UDim.new(0, 4)
        ColorFucj2.Name = ""
        ColorFucj2.Parent = Hue

        local HueGradient = Instance.new("UIGradient")

        HueGradient.Color = ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
            ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
            ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
            ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
            ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
            ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
        }
        HueGradient.Rotation = 0
        HueGradient.Name = "HueGradient"
        HueGradient.Parent = Hue

        local HueSelection =  Instance.new("ImageLabel")

        HueSelection.Name = "HueSelection"
        HueSelection.Parent = Hue
        HueSelection.AnchorPoint = Vector2.new(0.6, 0.6)
        HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        HueSelection.BackgroundTransparency = 1.000
        HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
        HueSelection.Size = UDim2.new(0, 18, 0, 18)
        HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
        HueSelection.ScaleType = Enum.ScaleType.Fit
        HueSelection.Visible = true


        local BTN_XD = Instance.new("TextButton")

        BTN_XD.Parent = TextFrameColor
        BTN_XD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BTN_XD.BorderColor3 = Color3.fromRGB(255, 255, 255)
        BTN_XD.BorderSizePixel = 0
        BTN_XD.AnchorPoint = Vector2.new(0.6, 0.6)
        BTN_XD.Position = UDim2.new(0.8, 0, 1.9, 0)
        BTN_XD.Size = UDim2.new(0, 50, 0, 25)
        BTN_XD.Font = Enum.Font.GothamSemibold
        BTN_XD.Text = "Confirm"
        BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)
        BTN_XD.TextSize = 11.000
        BTN_XD.AutoButtonColor = false

        local BTN_XD_COnner = Instance.new("UICorner")

        BTN_XD_COnner.CornerRadius = UDim.new(0, 4)
        BTN_XD_COnner.Name = ""
        BTN_XD_COnner.Parent = BTN_XD



        local MheeFrameStroke3 = Instance.new("UIStroke")

        MheeFrameStroke3.Thickness = 1
        MheeFrameStroke3.Name = ""
        MheeFrameStroke3.Parent = BTN_XD
        MheeFrameStroke3.LineJoinMode = Enum.LineJoinMode.Round
        MheeFrameStroke3.Color = Color3.fromRGB(255, 255, 255)
        MheeFrameStroke3.Transparency = 0.7


        local UwU = false


        OMF.MouseButton1Click:Connect(function()
            if       UwU == false  then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.6, 0), "Out", "Quad", 0.3, true)
            else
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.6, 0), "Out", "Quad", 0.3, true)
            end
            UwU = not UwU
        end
    )


    OMF.MouseEnter:Connect(function()
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    OMF.MouseLeave:Connect(function()
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    OMF.MouseButton1Down:Connect(
            function()
                RainbowColorPicker = not RainbowColorPicker

                if ColorInput then
                    ColorInput:Disconnect()
                end

                if HueInput then
                    HueInput:Disconnect()
                end

                if RainbowColorPicker then


                    OldToggleColor = BoxColor.BackgroundColor3
                    OldColor = Color.BackgroundColor3
                    OldColorSelectionPosition = ColorSelection.Position
                    OldHueSelectionPosition = HueSelection.Position

                    while RainbowColorPicker do
                        BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                        Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

                        ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                        HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.6,0)

                        pcall(callback, BoxColor.BackgroundColor3)
                        wait()
                    end
                elseif not RainbowColorPicker then

                    BoxColor.BackgroundColor3 = OldToggleColor
                    Color.BackgroundColor3 = OldColor

                    ColorSelection.Position = OldColorSelectionPosition
                    HueSelection.Position = OldHueSelectionPosition

                    pcall(callback, BoxColor.BackgroundColor3)
                end
            end
        )
        TextButton_3_Toggle.MouseButton1Down:Connect(
            function()
                RainbowColorPicker = not RainbowColorPicker

                if ColorInput then
                    ColorInput:Disconnect()
                end

                if HueInput then
                    HueInput:Disconnect()
                end

                if RainbowColorPicker then


                    OldToggleColor = BoxColor.BackgroundColor3
                    OldColor = Color.BackgroundColor3
                    OldColorSelectionPosition = ColorSelection.Position
                    OldHueSelectionPosition = HueSelection.Position

                    while RainbowColorPicker do
                        BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                        Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

                        ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                        HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.6,0)

                        pcall(callback, BoxColor.BackgroundColor3)
                        wait()
                    end
                elseif not RainbowColorPicker then

                    BoxColor.BackgroundColor3 = OldToggleColor
                    Color.BackgroundColor3 = OldColor

                    ColorSelection.Position = OldColorSelectionPosition
                    HueSelection.Position = OldHueSelectionPosition

                    pcall(callback, BoxColor.BackgroundColor3)
                end
            end
        )


        local function UpdateColorPicker(nope)
            BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
            Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

            pcall(callback, BoxColor.BackgroundColor3)
        end
        ColorH =
        1 -
        (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
            Hue.AbsoluteSize.Y)
        ColorS =
            (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                Color.AbsoluteSize.X)
        ColorV =
            1 -
            (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                Color.AbsoluteSize.Y)

        BoxColor.BackgroundColor3 = preset
        Color.BackgroundColor3 = preset
        pcall(callback, BoxColor.BackgroundColor3)

        local RainbowColorPicker = false

        Color.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    if RainbowColorPicker then
                        return
                    end

                    if ColorInput then
                        ColorInput:Disconnect()
                    end

                    ColorInput =
                        RunService.RenderStepped:Connect(
                            function()
                            local ColorX =
                                (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                    Color.AbsoluteSize.X)
                            local ColorY =
                                (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                    Color.AbsoluteSize.Y)

                            ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                            ColorS = ColorX
                            ColorV = 1 - ColorY

                            UpdateColorPicker(true)
                        end
                        )
                end
            end
        )


            Color.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if ColorInput then
                            ColorInput:Disconnect()
                        end
                    end
                end
            )

            Hue.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if HueInput then
                            HueInput:Disconnect()
                        end

                        HueInput =
                            RunService.RenderStepped:Connect(
                                function()
                                local HueY =
                                    (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                        Hue.AbsoluteSize.Y)
                                local HueX =
                                    (math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /
                                        Hue.AbsoluteSize.X)

                                HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)
                                ColorH = 1 - HueY

                                UpdateColorPicker(true)
                            end
                            )
                    end
                end
            )

            Hue.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if HueInput then
                            HueInput:Disconnect()
                        end
                    end
                end
            )
            local sk = false
            TextButton_Dropdown.MouseButton1Click:Connect(function()
                if sk == false then
                TweenService:Create(
                    Pixker,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 180)}
                ):Play()
            else
                TweenService:Create(
                    Pixker,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 33)}
                ):Play()
            end
            sk = not sk
            end
        )
            BTN_XD.MouseButton1Click:Connect(
                function()
                    TweenService:Create(
                        Pixker,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 213, 0, 33)}
                    ):Play()
                    sk = not sk
                end
            )


        end
        function items:Label(text,image)
            if image == nil then
                image = ""--"6031229361"
            end
            local labaelchange = {}
            local LabelFrame = Instance.new("Frame")


            LabelFrame.Name = "Mainframenoti"
            LabelFrame.Parent = ScrollingFrame_Pageframe
            LabelFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            LabelFrame.BackgroundTransparency = 0
            LabelFrame.BorderSizePixel = 0
            LabelFrame.ClipsDescendants = false
            LabelFrame.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelFrame.Position = UDim2.new(0.498, 0, 0.6, 0)
            LabelFrame.Size = UDim2.new(0, 213, 0, 28)

            local LabelFarm2 = Instance.new("TextLabel")

            LabelFarm2.Parent = LabelFrame
            LabelFarm2.Name = "TextLabel_Tap"
            LabelFarm2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            LabelFarm2.Size =UDim2.new(0, 130, 0,24 )
            LabelFarm2.Font = Enum.Font.SourceSansSemibold
            LabelFarm2.Text = text
            LabelFarm2.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelFarm2.TextSize = 12.000
            LabelFarm2.AnchorPoint = Vector2.new(0.6, 0.6)
            LabelFarm2.Position = UDim2.new(0.6, 0, 0.6, 0)
            LabelFarm2.TextXAlignment = Enum.TextXAlignment.Center
            LabelFarm2.BackgroundTransparency = 1
            LabelFarm2.TextWrapped = true

            local ImageLabel_gx = Instance.new("ImageLabel")

            ImageLabel_gx.Parent = LabelFrame
            ImageLabel_gx.BackgroundTransparency = 1.000
            ImageLabel_gx.BorderSizePixel = 0
            ImageLabel_gx.Size = UDim2.new(0, 18, 0, 18)
            ImageLabel_gx.AnchorPoint = Vector2.new(0.6, 0.6)
            ImageLabel_gx.Position = UDim2.new(0.06, 0, 0.45, 0)
            ImageLabel_gx.Image = "http://www.roblox.com/asset/?id="..tostring(image)
            ImageLabel_gx.BackgroundTransparency = 1

            local noticore55 = Instance.new("UICorner")

            noticore55.CornerRadius = UDim.new(0, 4)
            noticore55.Name = ""
            noticore55.Parent = LabelFarm2

            local noticore2777 = Instance.new("UICorner")

            noticore2777.CornerRadius = UDim.new(0, 4)
            noticore2777.Name = ""
            noticore2777.Parent = LabelFrame

            local LabelStroke = Instance.new("UIStroke")

            LabelStroke.Thickness = 1
            LabelStroke.Name = ""
            LabelStroke.Parent = LabelFrame
            LabelStroke.LineJoinMode = Enum.LineJoinMode.Round
            LabelStroke.Color = Color3.fromRGB(255, 255, 255)
            LabelStroke.Transparency = 0.7

            LabelFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    LabelStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency =0}
                ):Play()
            end
        )
            LabelFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    LabelStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency =0.7}
                ):Play()
            end
        )
            function labaelchange:Change(text2)
                LabelFarm2.Text = text2
            end
            return  labaelchange
        end
        return  items
        end
    return  page
    end
return top
end

-- ToggleGui --
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
 
local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 90, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "InW Hub"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function() game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.LeftControl,false,game)
end)
 
local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle

--MaxCharge
local mta = getrawmetatable(game)
local namecall = mta.__namecall
local setreadonly = setreadonly or make_writable


setreadonly(mta, false)

mta.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local arguments = args
    local a = {}
    for i = 1, #arguments - 1 do
        a[i] = arguments[i]
    end
    local method = getnamecallmethod() 

    if method == 'FireServer' or method == "InvokeServer" then
        if self.Name == 'Drown' and _G.nodmgwater then
            if args[1] then
                return nil
            end
        end
    end
    
    return namecall(self, ...)    
end)

local attackremote = {}    

local a
a=hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
            attackremote[self.Name] = args[1]
            return a(self,unpack(args))
        elseif self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            attackremote[self.Name] = ""
        end
    end
      return a(self,...)
end)

aaxc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and _G.skillmax then
            args[6] = 100
            return aaxc(self, unpack(args))
        end
    end
    return aaxc(self, ...)
end)

local remotes = {}
    local azc
    azc=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RemoteEvent" and args[3] == "StopCharging" then
                remotes[self.Name] = args[1]
                return azc(self,unpack(args))
            end
        end
          return azc(self,...)
    end)
    
    function serializeTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0
 
    local tmp = string.rep("", depth)
 
    if name then tmp = tmp end
 
    if type(val) == "table" then
        tmp = tmp .. (not skipnewlines and "" or "")
 
        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. (not skipnewlines and "" or "")
        end
 
        tmp = tmp .. string.rep("", depth) 
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    elseif type(val) == "function" then
        tmp = tmp  .. "func: " .. debug.getinfo(val).name
    else
        tmp = tmp .. tostring(val)
    end
 
    return tmp
end


local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBox1"] = {"Common Box"};
Cache.DevConfig["ListOfBox2"] = {"Uncommon Box"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"};
Cache.DevConfig["ListOfDropCompass"] = {"Compass"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
if v.Name == "Menu" then
  v.Frame.C.Frame.Nametag.Text = " ".."Protect Name by: InW Hub"
end
end

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local SafeZoneLightFarm = Instance.new("Part",game.Workspace)
    SafeZoneLightFarm.Name = "SafeZoneLightPart2"
    SafeZoneLightFarm.Size = Vector3.new(30,2,30)
    SafeZoneLightFarm.Position = Vector3.new(3750, 3623, -615)
    SafeZoneLightFarm.Anchored = true

local b1 = Instance.new("Part",game.Workspace)
        b1.Name = "SafeZoneLightPart1"
        b1.Position = Vector3.new(-169, 630, -54)
        b1.Size = Vector3.new(5, 0.1, 5)
        b1.Anchored = true

local SafeZoneUnderSea = Instance.new("Part",game.Workspace)
    SafeZoneUnderSea.Name = "SafeZoneUnderSeaPart"
    SafeZoneUnderSea.Size = Vector3.new(200,3,200)
    SafeZoneUnderSea.Position = Vector3.new((math.random(-5000, 5000)), -491, (math.random(-5000, 5000)))
    SafeZoneUnderSea.Anchored = true

spawn(function() -- autofarm velocity
    while wait(0) do
        pcall(function()
            if AutoFish or AutoPack or _G.behindfarm or _G.chillykill or _G.bombkill then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            elseif  AutoFish == false or AutoPack == false or _G.behindfarm == false or _G.chillykill == false or _G.bombkill == false then
                --if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                --end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoshave then
	for i,v in pairs(game:GetService("Workspace")[SelectPlayer]:GetChildren()) do
if string.find(v.Name, "ShaveServer") then
v:Destroy()
end
	end
            end
        end)
    end
end)

local Wapon = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
end

local Npc = {}
local Weaponlist = {}
local drinklist = {
    "Lemonade+",
    "Smoothie+",
    "Juice+",
    "Cider+",
 }

local islandlist = {
    "Cave Island",
    "Kaizu Island",
    "Sand Island",
    "Sam Island",
    "Club Island",
    "Gunslingers Island",
    "Merlin Island",
    "Snow Island",
    "Orange House Island",
    "Desert Castle",
    "Pyramid Island",
    "Red House Island",
    "3 House Island",
    "Pursuer Island",
    "Vokun Island",
}

--script
local Window = create:Win("InW Hub : For Map OPL: Anarchy / No Update Now.")
game:GetService("CoreGui").redui.MainSceen.Visible = false

create:Notifile("", "   Welcome " .. game.Players.LocalPlayer.Name .. " To OP:L", 5)

game:GetService("CoreGui").redui.MainSceen.Visible = true

local Tap1 = Window:Taps("Autos")
local page1 = Tap1:newpage()

page1:Label(" ┇ Function Autos ┇ ")

page1:Toggle("Auto Claim Mission", false,function(dmmsv)
    AutoMission = dmmsv
end)

spawn(function()
    while wait() do 
        if AutoMission then 
            pcall(function() 
                workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
            end) 
        end 
    end 
end)

page1:Toggle("Bring Devil Fruit", false,function(brdf)
    BringDF = brdf
end)

spawn(function()
    while wait() do
        if BringDF then
            pcall(function()
                for i,v in pairs(game.Workspace.Trees.Tree.Model:GetChildren()) do 
                    if v.ClassName == "Tool" then 
                        fireclickdetector(v.Main.ClickDetector)
                    end
                end
            end)
        end
    end
 end)

page1:Toggle("Auto Claim Gift (Beri)", false,function(bbri)
    _G.berigift = bbri
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.berigift then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardHourly
    Event:FireServer(A_1)
            end
        end)
    end
end)

page1:Toggle("Auto Claim Gift (Gems)", false,function(gmms)
    _G.gemsgift = gmms
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.gemsgift then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardDaily
    Event:FireServer(A_1)
            end
        end)
    end
end)

page1:Toggle("Auto Claim Challange", false,function(chllge)
    _G.autoclaim = chllge
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Daily1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily4"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Weekly1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Weekly2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Weekly3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Monthly1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Monthly2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Challenge1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge4"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge5"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge6"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge7"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge8"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge9"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge10"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge11"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge12"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge13"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge14"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)
page1:Toggle("Auto Buso Haki", false,function(bsoh)
    _G.autobuso = bsoh
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autobuso then
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end

            end
        end)
    end
end)

local page1_5 = Tap1:newpage()
page1_5:Label(" ┇ Quest Sam ┇ ")

page1_5:Toggle("Auto Find Compass", false,function(acpp)
    AutoComp = acpp
end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoComp then return end;
            local Compass = game.Players.LocalPlayer.Backpack:FindFirstChild("Compass");
            local Compass2 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
	    local Compass3 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
            if Compass or Compass2 or Compass3 then
                local OldPostiton = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                Compass.Parent = game.Players.LocalPlayer.Character;
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Compass.Poser.Value);
                Compass:Activate();
                wait(0.2);
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(OldPostiton);
            end
        end)
    end
end);
page1_5:Toggle("Auto Claim Compass", false,function(acmp)
    AutoClaimComp = acmp
end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoClaimComp then return end;
            game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10");
            game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10");
        end)
    end
end)

page1_5:Toggle("Auto Drop Compass", false,function(acdp)
    AutoDropComp = acdp
end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoDropComp then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDropCompass"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end)

page1_5:Label(" ┇ Function Misc Farm ┇ ")

page1_5:Toggle("Auto Package", false,function(abcd)
    AutoPack = abcd
end)

spawn(function()
    while wait() do
        pcall(function()
         if AutoPack then
            wait(0.6)
                game.workspace:WaitForChild("Merchants"):WaitForChild("QuestFishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
            wait(0.001)
             local playernameuser = game.Players.LocalPlayer.Name
            if  game.Players.LocalPlayer.Backpack:FindFirstChild("Package") or game.Players.LocalPlayer.Character:FindFirstChild("Package") or game.workspace.playernameuser:FindFirstChild("Package") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.AffinityMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat1Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat2Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat3Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat4Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.DrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.BetterDrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.ExpertiseMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SniperMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1549, 264, 2136)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SwordMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.KrizmaMerch.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FishMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FlailMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.EmoteMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2610, 254, 1114)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 218, 567)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
            end
        end
        end)
    end
end)

page1_5:Toggle("Auto Fishing", false,function(afsh)
    AutoFish = afsh
end)

spawn(function() -- fish farm
    while wait(0) do
        pcall(function()
            if AutoFish then
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20000, 218, 20000)
                wait(0.5)
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if string.find(v.Name, "Rod") then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                            end
                        end
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for _, x in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if string.find(x.Name, "Rod") then
                                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                    if v:FindFirstChild("Bobber") then
                                        if v.Bobber.Effect.Enabled == true then
                                            wait(0.6)
                                            local args = {
                                                [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        end
                                    elseif v.Name == "Cast" and not v:FindFirstChild("Bobber") then
                                        wait(0.6)
                                        local args = {
                                            [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                        }
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
                                    end
                                end
                            end
                        end
                    end
                end       
            end
        end)
    end
end)

page1_5:Toggle("Auto Bring Chest", false,function(achst)
    _G.autochest = achst
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autochest then
for _, v in pairs(game.Workspace:GetDescendants()) do
                            if v.Name == "Touch" and v.Parent.Name == "TreasureChestPart" then
                                v.Parent.CFrame = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
                            end
						end            end
        end)
    end
end)

local Tap2 = Window:Taps("Farming")
local page2 = Tap2:newpage()

page2:Label(" ┇ Teleport Farm ┇ ")

page2:Toggle("Auto Farm [Weapon]", false,function(atfm)
    _G.behindFarm = atfm
end)

local MobList = { "Boar", "Crab", "Angry", "Thief", "Gunslinger", "Freddy" }

local function IsMobAllowed(mobName)
    for _, allowedMob in ipairs(MobList) do
        if string.find(mobName, allowedMob) then
            return true
        end
    end
    return false
end

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.behindFarm then
                for _, mob in pairs(game.Workspace.Enemies:GetChildren()) do
                    if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") 
                       and mob.Humanoid.Health > 0 and IsMobAllowed(mob.Name) then
                        while mob.Humanoid.Health > 0 and _G.behindFarm do
                            local mobRoot = mob.HumanoidRootPart
                            local playerRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
                            playerRoot.CFrame = mobRoot.CFrame * CFrame.new(0, 0, 4)
                            local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            if tool then
                                tool:Activate()
                            else
                                game.Players.LocalPlayer.Character.Humanoid:MoveTo(mobRoot.Position)
                            end
                            task.wait(0.1)
                        end
                        break
                    end
                end
            end
        end)
    end
end)

local Dropdown = page2:Drop("Select Weapon",false, Wapon , function(abcdef) -- Use Selected <table> to auto select multiselection dropdown
    Weapon = abcdef
end)

page2:Button("Refresh", function()
    Dropdown:Clear()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            Dropdown:Add(v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            Dropdown:Add(v.Name)
        end
    end
end)

page2:Toggle("Auto Click", false,function(aeqp)
    _G.autoclick = aeqp
end)

spawn(function() 
game:GetService("RunService").RenderStepped:Connect(function() 
pcall(function() 
if _G.autoclick then 
game:GetService'VirtualUser':CaptureController() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end 
end) 
end) 
end)

page2:Toggle("Auto Equip", false,function(aatt)
    _G.autoequip = aatt
end)

spawn(function() -- auto equip
    while wait(0) do
        pcall(function()
            if _G.autoequip then
                repeat
                    wait(0.05)
                    game:GetService 'Players'.LocalPlayer.Backpack[Weapon].Parent = game:GetService 'Players'.LocalPlayer.Character
                until game.Players.LocalPlayer.Character.Humanoid.Health == 0 or _G.autoequip == false
                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    game:GetService 'Players'.LocalPlayer.Character:FindFirstChildOfClass 'Humanoid':UnequipTools()
                end
            end
        end)
    end
end)

page2:Label(" ┇ Auto Farm With Gun ┇ ")

page2:Toggle("Auto Farm Gun", false,function(drkmr)
    _G.gun = drkmr
end)

local MobList = {"Lv2 Angry Bob"}

local function IsMobAllowed(mobName)
    for _, allowedMob in ipairs(MobList) do
        if string.find(mobName, allowedMob) then
            return true
        end
    end
    return false
end

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.gun then
                for _, mob in pairs(game.Workspace.Enemies:GetChildren()) do
                    if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") 
                       and mob.Humanoid.Health > 0 and IsMobAllowed(mob.Name) then
                        while mob.Humanoid.Health > 0 and _G.behindFarm do
                            local mobRoot = mob.HumanoidRootPart
                            local mobHead = mob:FindFirstChild("Head")
                            local player = game.Players.LocalPlayer
                            local char = player.Character or player.CharacterAdded:Wait()
                            local playerRoot = char:WaitForChild("HumanoidRootPart")

                            -- Auto Equip Flintlock
                            local tool = char:FindFirstChildOfClass("Tool")
                            if not tool or tool.Name ~= "Flintlock" then
                                local backpack = player:WaitForChild("Backpack")
                                local flintlock = backpack:FindFirstChild("Flintlock")
                                if flintlock then
                                    char.Humanoid:EquipTool(flintlock)
                                    tool = flintlock
                                end
                            end

                            -- Lock bullet to mob's head
                            if mobHead then
                                local bulletArgs = {
                                    [1] = CFrame.new(playerRoot.Position, mobHead.Position),
                                    [2] = mobHead
                                }
                                local remote = player:FindFirstChild("RemoteEvent")
                                if remote then
                                    remote:FireServer(unpack(bulletArgs))
                                end
                            end

                            -- Move and attack
                            playerRoot.CFrame = mobRoot.CFrame * CFrame.new(0, 10, 7)
                            if tool then
                                tool:Activate()
                            else
                                char.Humanoid:MoveTo(mobRoot.Position)
                            end
                            task.wait(0.1)
                        end
                        break
                    end
                end
            end
        end)
    end
end)

page2:Label(" ┇ Haki Farm ┇ ")

page2:Toggle("Auto Haki Fast (Ping)", false,function(hki)
    AutoHaki = hki
end)

game:GetService('RunService').RenderStepped:connect(function()
    if AutoHaki then
        for i = 1, 5 do
            local args = {
                [1] = "On",
                [2] = 1
            }
            task.wait(0.1)
            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
        end
    end
end)

local page2_5 = Tap2:newpage()
page2_5:Label(" ┇ Farm With Fruity ┇ ")

page2_5:Toggle("Auto Quake Farm (Lag)", false,function(aqke)
    _G.quakefarm = aqke
end)

spawn(function() -- Quake farm npcs
    while wait(0) do
        pcall(function()
            if _G.quakefarm then
                script = game:GetService("Players").LocalPlayer.Character.Powers.Quake;
                VTQ = script.RemoteEvent.RemoteFunction:InvokeServer();
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();

                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                        if v.Humanoid.Health > 0 and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10000000000000000000000 then
                            if v.Name ~= "SetInstances" then
                                -- v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                if v.Humanoid.Health == 0 then
                                    v:Destroy()
                                end

                                wait(0.05)

            local args = {
                [1] = VTQ,
                [2] = "QuakePower4",
                [3] = "StopCharging",
                [4] = Mouse.Target,
                [5] = v.Head.CFrame * CFrame.new(0, 0, 0),
                [6] = 100,
                [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

                            end
                        end
                    end
                end
            end
        end)
    end
end)

page2_5:Toggle("Auto Light Farm", false,function(alght)
    _G.lightfarm = alght
end)

spawn(function() -- Light farm npcs
    while wait(0) do
        pcall(function()
            if _G.lightfarm then
                script = game:GetService("Players").LocalPlayer.Character.Powers.Light;
                VTC = script.RemoteEvent.RemoteFunction:InvokeServer();
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();

                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                        if v.Humanoid.Health > 0 and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10000000000000000000000 then
                            if v.Name ~= "SetInstances" then
                                -- v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                if v.Humanoid.Health == 0 then
                                    v:Destroy()
                                end

                                wait(0.05)

                                local args = {
                                    [1] = VTC,
                                    [2] = "LightPower2",
                                    [3] = "StopCharging",
                                    [4] = v.Head.CFrame * CFrame.new(0, 0, 0),
                                    [5] = Mouse.Target,
                                    [6] = 100
                                }

                                game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

                            end
                        end
                    end
                end
            end
        end)
    end
end)

page2_5:Label(" ┇ Spam Skill Fruity ┇ ")

page2_5:Toggle("Auto Quake Wave (Lag)", false,function(qxuk)
    _G.quake1 = qxuk
end)


spawn(function()
    while wait() do
        pcall(function()
        if _G.quake1 then 
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();

            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "QuakePower4",
                [3] = "StartCharging",
                [5] = "Right"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
   
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "QuakePower4",
                [3] = "StopCharging",
                [4] = Mouse.Target,
                [5] = Mouse.Hit,
                [6] = 100,
                [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
        end
        end)
    end
end)

page2_5:Label(" ┇ Spam Magma ┇ ")

page2_5:Toggle("Auto Magma Punch", false,function(mxgm)
    _G.magma2 = mxgm
end)

spawn(function()
    while wait() do
        if _G.magma2 then
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();
        
            local args = {
    [1] = tonumber(serializeTable(remotes)),
    [2] = "MagmaPower7",
    [3] = "StopCharging",
    [4] = CFrame.new(Vector3.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z)),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("OutterDune"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))

            local args = {
    [1] = tonumber(serializeTable(remotes)),
    [2] = "MagmaPower7",
    [3] = "StartCharging",
    [4] = CFrame.new(2157.088623046875, 1193.5758056640625, -9786.4072265625, 0.9772287607192993, -0.020494922995567322, -0.21119679510593414, 1.862645149230957e-09, 0.9953245520591736, -0.09658809006214142, 0.21218889951705933, 0.09438865631818771, 0.9726595878601074),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("OutterDune"):WaitForChild("Beach"),
    [7] = "Right"
}

game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))

        end
    end
end)

local Tap3 = Window:Taps("Players")
local page3 = Tap3:newpage()

page3:Label(" ┇ Local Player ┇ ")

page3:Button("No Save Data!!!", function()
    workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34)
        game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer()
end)

page3:Label(" ┇ Players ┇ ")

local PlayerName = {}
 for i,v in pairs(game.Players:GetChildren()) do
    table.insert(PlayerName,v.Name)
 end

PlayerName1 = ""
local sucvat = page3:Drop("Choose Player" , false, PlayerName, function(t)
    PlayerName1 = t
    print(PlayerName1)
end)

page3:Button("Refresh",function()
    sucvat:Clear()
    for i,v in pairs(game.Players:GetChildren()) do
       sucvat:Add(v.Name)
    end
end)

page3:Button("Tp Player",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(PlayerName1).Character.HumanoidRootPart.CFrame
end)

page3:Toggle("Auto Bring Player All", false,function(brplr)
    BringAllPlr = brplr
end)

spawn(function()
    while wait() do
        if BringAllPlr then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-2 or getgenv().disbring)
                        if v.Character.Humanoid.Health == 0 then
                        	v.Character.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end
end)

page3:Toggle("View Player", false, function(viewplr)
    Sp = viewplr
    local plr1 = game.Players.LocalPlayer.Character.Humanoid
    local plr2 = game.Players:FindFirstChild(PlayerName1)
    repeat wait(0)
        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
    until Sp == false or plr2.Character.Humanoid.Health == 0
    if Sp == false or plr2.Character.Humanoid.Health ~= 0 then
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
end)

page3:Toggle("Aim Player", false,function(slim)
    aimsilent = slim
end)

spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                local plr1 = game.Players.LocalPlayer.Character
                local plr2 = game.Players:FindFirstChild(PlayerName1)
                if aimsilent then
                    cacacac = plr2.Character.HumanoidRootPart.CFrame
                end
            end)
        end
    end)
end)

local index = mta.__index
cf = CFrame.new(1, 2, 3)
setreadonly(mta, false)
mta.__index = newcclosure(function(a, b, c)
    if tostring(b):lower() == 'hit' and aimsilent then
        return cacacac
    end
    return index(a, b, c)
end)

local aimsilent = false -- ตั้งค่าตัวแปรเพื่อให้เปิด/ปิดการล็อคมอนสเตอร์
local cacacac = CFrame.new() -- ค่าตำแหน่งที่เราจะล็อคไป

-- ฟังก์ชั่น Toggle เปิด/ปิดการล็อค
page3:Toggle("Aim Enemies", false, function(slims)
    aimsilents = slims
end)

-- เริ่มสคริปต์ให้ทำงานในแบ็คกราวด์
spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                -- รับข้อมูลตัวละครผู้เล่น
                local playerCharacter = game.Players.LocalPlayer.Character
                if playerCharacter and playerCharacter:FindFirstChild("HumanoidRootPart") then
                    local playerRootPart = playerCharacter.HumanoidRootPart
                    
                    if aimsilents then
                        -- ลูปเพื่อทำการล็อคมอนสเตอร์ใน Enemies
                        local enemies = workspace:WaitForChild("Enemies")
                        for _, enemy in pairs(enemies:GetChildren()) do
                            if enemy:FindFirstChild("HumanoidRootPart") then
                                -- ล็อคไปที่ HumanoidRootPart ของมอนสเตอร์
                                cacacac = enemy.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end
            end)
        end
    end)
end)

-- เปลี่ยนการตั้งค่า __index เพื่อให้ล็อคตำแหน่งไปที่มอนสเตอร์ใน Enemies
local index = mta.__index
cf = CFrame.new(1, 2, 3)
setreadonly(mta, false)
mta.__index = newcclosure(function(a, b, c)
    if tostring(b):lower() == 'hit' and aimsilent then
        return cacacac
    end
    return index(a, b, c)
end)

page3:Label(" ┇ Max Charge Skill ┇ ")

page3:Toggle("100% Charge Skill", false,function(max)
    _G.skillmax = max
end)

local page3_5 = Tap3:newpage()
page3_5:Label(" ┇ Player Kill ┇ ")

page3_5:Toggle("Auto Quake Kill", false,function(qukkl)
    _G.quakekill = qukkl
end)

spawn(function() -- auto farm quake
    while task.wait(0) do
        pcall(function()
            for i,v in pairs(game.Players:GetChildren()) do
                    if _G.quakekill  then
                        if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if v.Name ~= "SetInstances" and v.Character.Humanoid.Health ~= 0 and v.Backpack:FindFirstChildOfClass("Tool") then
                                if v.Name ~= game.Players.LocalPlayer.Name then
                                    wait(0.1)
                                    local args = {
                                        [1] = tonumber(serializeTable(remotes)),
                                        [2] = "QuakePower4",
                                        [3] = "StopCharging",
                                        [4] = v.Character.HumanoidRootPart.CFrame,
                                        [5] = v.Character.HumanoidRootPart.CFrame,
                                        [6] = 100,
                                        [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

page3_5:Label(" ┇ Spam Dash ┇ ")

page3_5:Toggle("Auto Dash (Choose Player)", false,function(adsh)
    _G.autodash = adsh
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autodash then
	for i,v in pairs(game:GetService("Workspace")[PlayerName1]:GetChildren()) do
if string.find(v.Name, "Dash") then
v:FireServer(CFrame.new(game.Players[PlayerName1].Character.HumanoidRootPart.Position),workspace.Water)
end
end
            end
        end)
    end
end)

page3_5:Label(" ┇ Buyer Drinks ┇ ")

page3_5:Drop("Select Drink",false, drinklist , function(drnk) -- Use Selected <table> to auto select multiselection dropdown
    Drink = drnk
end)

page3_5:TextBox("Drinks",". . .",function(txt)
    AmountDrink = txt
end)

page3_5:Button("Buy Drink", function()
if not AmountDrink or not string.match(AmountDrink, "%d+") or tonumber(string.match(AmountDrink, "%d+")) < 0 then return end;
        for _ = 1, tonumber(string.match(AmountDrink, "%d+")) do
            game.Workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(Drink)
		end
end)

page3_5:Toggle("Auto Drink", false,function(atdk)
    AutoDrinks = atdk
end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoDrinks then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

page3_5:Toggle("Drop Drink", false,function(drpdk)
    DropDrinks = drpdk
end)

spawn(function()
    while wait() do
        pcall(function()
            if not DropDrinks then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end)

plr = game.Players.LocalPlayer

local Tap4 = Window:Taps("Island")
local page4 = Tap4:newpage()

page4:Label(" ┇ Teleport Island ┇ ")

page4:Drop("Choose Island" , false, {
    "Grassy","Kaizu's Island","Snowy Mountains","Pursuer's Island","Bar","Cliffs","Windmill", "Cave","Krizma","Pirate","Green","Trees","Pyramid","Package","Snowy","Mountain", "Marine Ford","Sand Castle", "Forest","Evil",
 "Crescent","Islands","Town","Rocky","Palm","Sand","Sand 2","Small","Tiny","Super Tiny","Grass","Atlar"
 }, function(t)
    getgenv().tpisland = t 
    if getgenv().tpisland == "Grassy" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(737, 241, 1209)
      elseif getgenv().tpisland == "Kaizu's Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
      elseif getgenv().tpisland == "Snowy Mountains"  then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(6501, 408, -1261)
      elseif getgenv().tpisland == "Pursuer's Island" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(4847, 570, -7143)
      elseif getgenv().tpisland == "Bar" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 260, 2188)
      elseif getgenv().tpisland == "Cliffs" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(4598, 217, 4964)
      elseif getgenv().tpisland == "Windmill" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 224, -91)
      elseif getgenv().tpisland == "Cave" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 217, -831)
      elseif getgenv().tpisland == "Krizma" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1109, 341, 1645)
      elseif getgenv().tpisland == "Pirate" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1283, 218, -1348)
      elseif getgenv().tpisland == "Green" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2727, 253, 1041)
      elseif getgenv().tpisland == "Trees" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1068, 217, 3351)
      elseif getgenv().tpisland == "Pyramid" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(118, 216, 4773)
      elseif getgenv().tpisland == "Package" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1668, 217, -300)
      elseif getgenv().tpisland == "Snowy" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1896, 222, 3385)
      elseif getgenv().tpisland == "Mountain" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(2052, 488, -701)
      elseif getgenv().tpisland == "Marine Ford" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3164, 296, -3780)
      elseif getgenv().tpisland == "Sand Castle" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1020, 224, -3277)
      elseif getgenv().tpisland == "Forest" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5781, 216, 114)
      elseif getgenv().tpisland == "Evil" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5169, 523, -7803)
      elseif getgenv().tpisland == "Crescent" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(3193, 357, 1670)
      elseif getgenv().tpisland == "Islands" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4319, 245, 5252)
      elseif getgenv().tpisland == "Town" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1818, 218, 755)
      elseif getgenv().tpisland == "Rocky" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 229, 2149)
      elseif getgenv().tpisland == "Palm" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(766, 216, -1374)
      elseif getgenv().tpisland == "Sand" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2747, 216, -942)
      elseif getgenv().tpisland == "Sand 2" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(162, 216, -2265)
      elseif getgenv().tpisland == "Small" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(1237, 240, -244)
      elseif getgenv().tpisland == "Tiny" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1235, 223, 623)
      elseif getgenv().tpisland == "Super Tiny" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4007, 216, -2190)
      elseif getgenv().tpisland == "Grass" then
       plr.Character.HumanoidRootPart.CFrame = CFrame.new(2096, 217, -1884)
      elseif getgenv().tpisland == "Atlar" then
        plr.Character.HumanoidRootPart.CFrame = game.workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 5, 0)
    end
end)

page4:Label(" ┇ Teleport SafeZone ┇ ")

page4:Drop("Safe Place" , false, { "Safe Place (Sea)", "Safe Place (Sky)", "Safe Farm Light 1.0", "Safe Farm Light 2.0" }, function(tt)
    getgenv().tpisland2 = tt
    if getgenv().tpisland2 == "Safe Place (Sea)" then
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
        wait(0.15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneUnderSeaPart"].CFrame * CFrame.new(0, 5, 0)
    elseif getgenv().tpisland2 == "Safe Place (Sky)" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
    elseif getgenv().tpisland2 == "Safe Farm Light 1.0" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart1"].CFrame * CFrame.new(0, 5, 0)
	elseif getgenv().tpisland2 == "Safe Farm Light 2.0" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart2"].CFrame * CFrame.new(0, 5, 0)
    end
end)

page4:Label(" ┇ Teleport NPC ┇ ")

page4:Drop("Choose NPC", false,{
    "Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity","Fish", "Expertise"
    }, function(t)
        getgenv().tpmerchant = t
        if getgenv().tpmerchant == "Rayleigh" then
            local emoi = game:GetService("Workspace").Merchants.QuestHakiMerchant.Clickable.Available.Value
            if emoi == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.QuestHakiMerchant.HumanoidRootPart.CFrame
            else
                create:Notifile("OP:L", "Rayleigh did not spawn.!", 5)
            end
        elseif getgenv().tpmerchant == "Better Drink" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1493, 260, 2171)
        elseif getgenv().tpmerchant == "Drink" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1282, 218, -1368)
        elseif getgenv().tpmerchant == "Flail" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1110, 217, 3369)
        elseif getgenv().tpmerchant == "QuestFish" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1702, 216, -325)
        elseif getgenv().tpmerchant == "Krizma" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1072, 361, 1669)
        elseif getgenv().tpmerchant == "Sword" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1005, 224, -3339)
        elseif getgenv().tpmerchant == "Sniper" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1843, 222, 3416)
        elseif getgenv().tpmerchant == "Emote" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 265, 2165)
        elseif getgenv().tpmerchant == "Affinity" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(113, 278, 4952)
        elseif getgenv().tpmerchant == "Fish" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(1983, 218, 566)
        elseif getgenv().tpmerchant == "Expertise" then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(903, 270, 1219)
        end
    end)

local page4_5 = Tap4:newpage()
page4_5:Label(" ┇ Bug a Lot Compass ┇ ")

page4_5:Toggle("Auto Reset Stats", false,function(setre)
    reset = setre
end)

spawn(function()
    while wait(5) do
        if reset then
            pcall(function()
workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Stats:FireServer()
                   end)
            end
        end
end)

page4_5:Button("Check u Compass", function()
    fireclickdetector(game:GetService("Workspace").Merchants.QuestMerchant.Clickable.ClickDetector)
end)

page4_5:Toggle("Auto Claim Weekly 3", false,function(clm)
    _G.autoclaim3 = clm
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim3 then
local A_1 = "Claim"
local A_2 = "Weekly3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

page4_5:Label(" ┇ Affinity Reroll 2.0 (Left) ┇ ")

page4_5:Button("Reroll (เปิด/Open)", function()
isRunning1 = true

if isRunning1 then
            spawn(function()
                while isRunning1 do
                    wait(8)
                    local player = game.Players.LocalPlayer
                    local playerId = player.UserId
                    local userDataName = game.Workspace.UserData["User_" .. playerId]

                    -- DFT1
                    local AffMelee1 = userDataName.Data.DFT1Melee.Value
                    local AffSniper1 = userDataName.Data.DFT1Sniper.Value
                    local AffDefense1 = userDataName.Data.DFT1Defense.Value
                    local AffSword1 = userDataName.Data.DFT1Sword.Value

                    -- Check for DFT1
                    if AffSniper1 == 2 and AffSword1 == 2 and AffMelee1 == 2 and AffDefense1 == 2 then
                        isRunning1 = false
			break
                    end

                    local args1 = {
                        [1] = "DFT1",
                        [2] = false, -- defense
                        [3] = false, -- melee
                        [4] = false, -- sniper
                        [5] = false, -- sword
                        [6] = "Cash"
                    }

                    if AffDefense1 == 2 then
                        args1[2] = 0 / 0
                    end

                    if AffMelee1 == 2 then
                        args1[3] = 0 / 0
                    end

                    if AffSniper1 == 2 then
                        args1[4] = 0 / 0
                    end

                    if AffSword1 == 2 then
                        args1[5] = 0 / 0
                    end

                    workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args1))
                end
            end)
		end
end)

page4_5:Button("Reroll (ปิด/Off)", function()
isRunning1 = false

if isRunning1 then
            spawn(function()
                while isRunning1 do
                    wait(8)
                    local player = game.Players.LocalPlayer
                    local playerId = player.UserId
                    local userDataName = game.Workspace.UserData["User_" .. playerId]

                    -- DFT1
                    local AffMelee1 = userDataName.Data.DFT1Melee.Value
                    local AffSniper1 = userDataName.Data.DFT1Sniper.Value
                    local AffDefense1 = userDataName.Data.DFT1Defense.Value
                    local AffSword1 = userDataName.Data.DFT1Sword.Value

                    -- Check for DFT1
                    if AffSniper1 == 2 and AffSword1 == 2 and AffMelee1 == 2 and AffDefense1 == 2 then
                        isRunning1 = false
			break
                    end

                    local args1 = {
                        [1] = "DFT1",
                        [2] = false, -- defense
                        [3] = false, -- melee
                        [4] = false, -- sniper
                        [5] = false, -- sword
                        [6] = "Cash"
                    }

                    if AffDefense1 == 2 then
                        args1[2] = 0 / 0
                    end

                    if AffMelee1 == 2 then
                        args1[3] = 0 / 0
                    end

                    if AffSniper1 == 2 then
                        args1[4] = 0 / 0
                    end

                    if AffSword1 == 2 then
                        args1[5] = 0 / 0
                    end

                    workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args1))
                end
            end)
		end
end)

page4_5:Label(" ┇ Affinity Reroll 2.0 (Right) ┇ ")

page4_5:Button("Reroll (เปิด/Open)", function()
isRunning2 = true

if isRunning2 then
            spawn(function()
                while isRunning2 do
                    wait(8)
                    local player = game.Players.LocalPlayer
                    local playerId = player.UserId
                    local userDataName = game.Workspace.UserData["User_" .. playerId]

                    -- DFT1
                    local AffMelee2 = userDataName.Data.DFT2Melee.Value
                    local AffSniper2 = userDataName.Data.DFT2Sniper.Value
                    local AffDefense2 = userDataName.Data.DFT2Defense.Value
                    local AffSword2 = userDataName.Data.DFT2Sword.Value

                    -- Check for DFT2
                    if AffSniper2 == 2 and AffSword2 == 2 and AffMelee2 == 2 and AffDefense2 == 2 then
                        isRunning2 = false
			break
                    end

                    local args2 = {
                        [1] = "DFT2",
                        [2] = false, -- defense
                        [3] = false, -- melee
                        [4] = false, -- sniper
                        [5] = false, -- sword
                        [6] = "Cash"
                    }

                    if AffDefense2 == 2 then
                        args2[2] = 0 / 0
                    end

                    if AffMelee2 == 2 then
                        args2[3] = 0 / 0
                    end

                    if AffSniper2 == 2 then
                        args2[4] = 0 / 0
                    end

                    if AffSword2 == 2 then
                        args2[5] = 0 / 0
                    end

                    workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args2))
                end
            end)
		end
end)

page4_5:Button("Reroll (ปิด/Off)", function()
isRunning2 = false

if isRunning2 then
            spawn(function()
                while isRunning2 do
                    wait(8)
                    local player = game.Players.LocalPlayer
                    local playerId = player.UserId
                    local userDataName = game.Workspace.UserData["User_" .. playerId]

                    -- DFT1
                    local AffMele2 = userDataName.Data.DFT2Melee.Value
                    local AffSniper2 = userDataName.Data.DFT2Sniper.Value
                    local AffDefense2 = userDataName.Data.DFT2Defense.Value
                    local AffSword2 = userDataName.Data.DFT2Sword.Value

                    -- Check for DFT2
                    if AffSniper2 == 2 and AffSword2 == 2 and AffMelee2 == 2 and AffDefense2 == 2 then
                        isRunning2 = false
			break
                    end

                    local args2 = {
                        [1] = "DFT2",
                        [2] = false, -- defense
                        [3] = false, -- melee
                        [4] = false, -- sniper
                        [5] = false, -- sword
                        [6] = "Cash"
                    }

                    if AffDefense2 == 2 then
                        args2[2] = 0 / 0
                    end

                    if AffMelee2 == 2 then
                        args2[3] = 0 / 0
                    end

                    if AffSniper2 == 2 then
                        args2[4] = 0 / 0
                    end

                    if AffSword2 == 2 then
                        args2[5] = 0 / 0
                    end

                    workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args2))
                end
            end)
		end
end)

local Tap5 = Window:Taps("Misc")
local page5 = Tap5:newpage()
local page5_5 = Tap5:newpage()

page5:Label(" ┇ Local Player ┇ ")

page5:TextBox("Walk Speed",". . .",function(numsber)
    getgenv().speedx = numsber
end)

page5:TextBox("Jump Power",". . .",function(numzber)
    getgenv().jumpx = numzber
end)

page5:Toggle("Enable", false,function(bal)
    if bal  then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = getgenv().jumpx
        game.Players.LocalPlayer.Character.CharacterTrait.WS.Value = getgenv().speedx
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.CharacterTrait.WS.Value = 1
    end

end)

page5:Label(" ┇ Function Anti ┇ ")

page5:Toggle("Anti AFK", false,function(afk)
    _G.antiafk = afk
end)

if afk then
        local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end)
end

page5:Toggle("Anti No Dmg Water", false,function(nowater)
    _G.nodmgwater = nowater
end)

spawn(function()
    while wait() do
        if _G.nodmgwater then
            pcall(function()
                local args = {
    [1] = "NOPLS"
}

game:GetService("Players").LocalPlayer.Character.Drown:FireServer(unpack(args))
if self.Name == 'Drown' and _G.nodmgwater then
            if args[1] then
                return nil
            end
        end
            end)
        end
    end
end)

page5:Toggle("Anti Dark&Venom Pool", false,function(anstun)
    _G.antity = anstun
end)

spawn(function()
    while wait() do
        if _G.antity then
            local success, err = pcall(function()
                local ResourceHolder = game.Workspace:FindFirstChild("ResourceHolder")

                if ResourceHolder then
                    for _, player in pairs(game.Players:GetPlayers()) do
                        local resourceFolderName = "Resources_" .. tostring(player.UserId)
                        local playerResourceFolder = ResourceHolder:FindFirstChild(resourceFolderName)

                        if playerResourceFolder then
                            local magmaPool = playerResourceFolder:FindFirstChild("MagmaPool")

                            if magmaPool then
                                for _, item in pairs(magmaPool:GetDescendants()) do
                                    if item:IsA("Instance") and item.Name == "TouchInterest" then
                                        item:Destroy()
                                        print("Removed TouchInterest from MagmaPool in", playerResourceFolder.Name)
                                    end
				end
				end
                        end
		end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.antity then
            local resourceHolder = workspace:FindFirstChild("UserData")
            if resourceHolder then
                for _, player in ipairs(game.Players:GetPlayers()) do
                    local folderName = "User_" .. tostring(player.UserId)
                    local userFolder = resourceHolder:FindFirstChild(folderName)

                    if userFolder then
                        local success, err = pcall(function()
                            local specials = userFolder:FindFirstChild("Specials")
                            if specials then
                                local venom = specials:FindFirstChild("Venom")
                                if venom then
                                    local venomPool = venom:FindFirstChild("VenomPool")
                                    if venomPool then
                                        local touchInterest = venomPool:FindFirstChild("TouchInterest")
                                        if touchInterest then
                                            touchInterest:Destroy()
                                            print("ลบ TouchInterest ของ", player.Name)
                                        end
                                    end
                                end
                            end
                        end)
                    end
		end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if _G.antity then
            pcall(function()
                for _, obj in ipairs(workspace:GetChildren()) do
                    local player = game.Players:FindFirstChild(obj.Name)
                    if player and obj:IsA("Model") then

                        -- ค้นหา Power -> Dark
                        local powerFolder = obj:FindFirstChild("Powers")
                        if powerFolder then
                            local love = powerFolder:FindFirstChild("Dark")
                            if love then
                                for _, child in pairs(love:GetDescendants()) do
                                    if child:IsA("Attachment") then
                                        child:Destroy()
                                        print("ลบ Attachment ใน Dark ของ " .. player.Name)
                                    end
                                end
                            end
                        end

                        local darkFolder = obj:FindFirstChild("DarkParts")
                        if darkFolder then
			local vorb = darkFolder:FindFirstChild("DarkVortexBall")
			if vorb then
				for _, vor in pairs(vor:GetChildren()) do
					vor:Destroy()
				end
			end
                            local trim = darkFolder:FindFirstChild("WeldablePart")
                            if trim then
                                local att = trim:FindFirstChild("Attachment")
                                if att then
                                    for _, child in pairs(att:GetDescendants()) do
                                        if child:IsA("Attachment") then
                                            child:Destroy()
                                            print("ลบ Attachment ใน WeldablePart ของ " .. player.Name)
					end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
		
page5:Label(" ┇ Unbox ┇ ")

page5:Toggle("Unbox (Common)", false,function(ubcm)
    UnboxCM = ubcm
end)

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxCM then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox1"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

page5:Toggle("Unbox (Uncom)", false,function(ubun)
     UnboxUn = ubun
end)

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxUn then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox2"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

page5:Toggle("Unbox (Rare,Ultra)", false,function(ubrul)
    UnboxRUL = ubrul
end)

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxRUL then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox3"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end);
page5_5:Label(" ┇ Fake Weapon ┇ ")

page5_5:Button("Seastone Cestus (500 Melee)",function()
    local A_1 = "Seastone Cestus"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].UpdateMelee
    Event:FireServer(A_1)
   
end)

page5_5:Label(" ┇ Sever ┇ ")

page5_5:Button("Rejoin Server",function()
    game.Players.LocalPlayer:Kick()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)

end)

page5_5:Button("Hop Server",function()
          local PlaceID = game.PlaceId
          local AllIDs = {}
          local foundAnything = ""
          local actualHour = os.date("!*t").hour
          local Deleted = false
          --[[
          local File = pcall(function()
              AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
          end)
          if not File then
              table.insert(AllIDs, actualHour)
              writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
          end
          ]]
          function TPReturner()
              local Site;
              if foundAnything == "" then
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
              else
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
              end
              local ID = ""
              if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                  foundAnything = Site.nextPageCursor
              end
              local num = 0;
              for i,v in pairs(Site.data) do
                  local Possible = true
                  ID = tostring(v.id)
                  if tonumber(v.maxPlayers) > tonumber(v.playing) then
                      for _,Existing in pairs(AllIDs) do
                          if num ~= 0 then
                              if ID == tostring(Existing) then
                                  Possible = false
                              end
                          else
                              if tonumber(actualHour) ~= tonumber(Existing) then
                                  local delFile = pcall(function()
                                      -- delfile("NotSameServers.json")
                                      AllIDs = {}
                                      table.insert(AllIDs, actualHour)
                                  end)
                              end
                          end
                          num = num + 1
                      end
                      if Possible == true then
                          table.insert(AllIDs, ID)
                          wait()
                          pcall(function()
                              -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                              wait()
                              game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                          end)
                          wait(4)
                      end
                  end
              end
          end

          function Teleport()
              while wait() do
                  pcall(function()
                      TPReturner()
                      if foundAnything ~= "" then
                          TPReturner()
                      end
                  end)
              end
          end

          Teleport()
	
end)

page5_5:Label(" ┇ Other ┇ ")

page5_5:Button("Unlock Emotes (Not Save)",function()
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark1.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark2.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark3.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark4.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark5.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark6.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark7.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark8.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark9.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark10.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark11.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark12.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark13.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark14.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark15.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark16.Value = true
end)

page5_5:Button("NoClip Cam (On/Off)",function()
    local Players = game:GetService("Players")
   
    local LocalPlayer = Players.LocalPlayer
    local PopperClient = LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
    
    for i, v in next, getgc() do
        if getfenv(v).script == PopperClient and typeof(v) == "function" then
            for i2, v2 in next, debug.getconstants(v) do
                if tonumber(v2) == 0.25 then
                    debug.setconstant(v, i2, 0)
                elseif tonumber(v2) == 0 then
                    debug.setconstant(v, i2, 0.25)
                end
            end
        end
    end
end)

page5_5:Label(" ┇ Auto Drop Box ┇ ")

page5_5:Toggle("Auto Drop (Com)", false,function(dropcm)
     DropCm = dropcm
end)

spawn(function()
    while wait() do
        pcall(function()
            if not DropCm then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox1"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end)
		
page5_5:Toggle("Auto Drop (Uncom)", false,function(dropun)
     DropUn = dropun
end)

spawn(function()
    while wait() do
        pcall(function()
            if not DropUn then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox2"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end)

page5_5:Toggle("Auto Drop (Rare,Ultra)", false,function(dropul)
     DropUL = dropul
end)

spawn(function()
    while wait() do
        pcall(function()
            if not DropUL then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox3"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end)
else
        showNotification("❌ คีย์ผิด กรุณาลองใหม่!") -- แสดงข้อความแจ้งเตือน
    end
end

-- เชื่อมปุ่มกับฟังก์ชัน
submitButton.MouseButton1Click:Connect(checkKey)

-- ทำให้ KeyFrame เลื่อนลงมาตอนเริ่มเกม
keyFrame:TweenPosition(UDim2.new(0.3, 0, 0.4, 0), "Out", "Quad", 0.5, true)
