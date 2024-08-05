local Library = {}

-- Create main UI elements
function Library:CreateWindow()
    local Window = {}
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "CustomUI"
    ScreenGui.Parent = game.CoreGui
    
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.Size = UDim2.new(0, 500, 0, 300)
    MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
    MainFrame.BorderSizePixel = 0
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = MainFrame

    local Title = Instance.new("TextLabel")
    Title.Parent = MainFrame
    Title.Text = "Obese.vip | Combat Bot | Beta"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.Font = Enum.Font.SourceSans
    Title.TextSize = 24

    local TabHolder = Instance.new("Frame")
    TabHolder.Name = "TabHolder"
    TabHolder.Parent = MainFrame
    TabHolder.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TabHolder.Size = UDim2.new(0, 120, 1, -30)
    TabHolder.Position = UDim2.new(0, 0, 0, 30)
    TabHolder.BorderSizePixel = 0

    local MainTab = Instance.new("TextButton")
    MainTab.Name = "MainTab"
    MainTab.Parent = TabHolder
    MainTab.Text = "Main"
    MainTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    MainTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    MainTab.Size = UDim2.new(1, 0, 0, 30)
    MainTab.Position = UDim2.new(0, 0, 0, 0)
    MainTab.Font = Enum.Font.SourceSans
    MainTab.TextSize = 18

    local ConfigurationTab = Instance.new("TextButton")
    ConfigurationTab.Name = "ConfigurationTab"
    ConfigurationTab.Parent = TabHolder
    ConfigurationTab.Text = "Configuration"
    ConfigurationTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    ConfigurationTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    ConfigurationTab.Size = UDim2.new(1, 0, 0, 30)
    ConfigurationTab.Position = UDim2.new(0, 0, 0, 30)
    ConfigurationTab.Font = Enum.Font.SourceSans
    ConfigurationTab.TextSize = 18

    local ContentFrame = Instance.new("Frame")
    ContentFrame.Name = "ContentFrame"
    ContentFrame.Parent = MainFrame
    ContentFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    ContentFrame.Size = UDim2.new(1, -120, 1, -30)
    ContentFrame.Position = UDim2.new(0, 120, 0, 30)
    ContentFrame.BorderSizePixel = 0

    function Window:AddLabel(text)
        local Label = Instance.new("TextLabel")
        Label.Parent = ContentFrame
        Label.Text = text
        Label.TextColor3 = Color3.fromRGB(255, 255, 255)
        Label.BackgroundTransparency = 1
        Label.Size = UDim2.new(1, 0, 0, 30)
        Label.Font = Enum.Font.SourceSans
        Label.TextSize = 18
    end

    function Window:AddButton(text, callback)
        local Button = Instance.new("TextButton")
        Button.Parent = ContentFrame
        Button.Text = text
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        Button.Size = UDim2.new(1, 0, 0, 30)
        Button.Font = Enum.Font.SourceSans
        Button.TextSize = 18
        Button.MouseButton1Click:Connect(callback)
    end
    
    -- Additional UI components can be added here

    return Window
end

return Library
