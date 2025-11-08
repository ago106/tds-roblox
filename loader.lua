--[[
Game - 5591597781
Lobby - 3260590327
]]

local TweenService = game:GetService("TweenService");
local UserInputService = game:GetService("UserInputService");
local CoreGui = game:GetService("CoreGui");

local function protect_gui(gui)
    if syn and syn.protect_gui then
        syn.protect_gui(gui);
    end;
    gui.Parent = CoreGui;
end;

local function RandomString(len)
    local s = "";
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    for i = 1, len or 12 do
        local r = math.random(1, #chars);
        s = s .. chars:sub(r, r);
    end;
    return s;
end;

local SpaceHubGUI = Instance.new("ScreenGui");
SpaceHubGUI.Name = RandomString(10);
SpaceHubGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
protect_gui(SpaceHubGUI);

local MainContainer = Instance.new("Frame");
local UICorner = Instance.new("UICorner");
local Header = Instance.new("Frame");
local HeaderCorner = Instance.new("UICorner");
local Title = Instance.new("TextLabel");
local CloseButton = Instance.new("TextButton");
local CloseCorner = Instance.new("UICorner");
local ContentFrame = Instance.new("Frame");
local ButtonContainer = Instance.new("Frame");
local GemsButton = Instance.new("TextButton");
local GemsCorner = Instance.new("UICorner");
local MoneyButton = Instance.new("TextButton");
local MoneyCorner = Instance.new("UICorner");
local Footer = Instance.new("Frame");
local DiscordLabel = Instance.new("TextLabel");
local Divider = Instance.new("Frame");

MainContainer.Name = RandomString(8);
MainContainer.Parent = SpaceHubGUI;
MainContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
MainContainer.BorderSizePixel = 0;
MainContainer.Position = UDim2.new(0.5, 0, 0.5, 0);
MainContainer.Size = UDim2.new(0, 250, 0, 140);
MainContainer.AnchorPoint = Vector2.new(0.5, 0.5);
MainContainer.ClipsDescendants = true;

UICorner.Parent = MainContainer;
UICorner.CornerRadius = UDim.new(0, 8);

Header.Name = RandomString(6);
Header.Parent = MainContainer;
Header.BackgroundColor3 = Color3.fromRGB(25, 25, 25);
Header.BorderSizePixel = 0;
Header.Size = UDim2.new(1, 0, 0, 32);

HeaderCorner.Parent = Header;
HeaderCorner.CornerRadius = UDim.new(0, 8);

Title.Name = RandomString(6);
Title.Parent = Header;
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Title.BackgroundTransparency = 1;
Title.Position = UDim2.new(0, 12, 0, 0);
Title.Size = UDim2.new(0, 200, 1, 0);
Title.Font = Enum.Font.GothamBold;
Title.Text = "SPACE HUB - TDS";
Title.TextColor3 = Color3.fromRGB(220, 220, 220);
Title.TextSize = 14;
Title.TextXAlignment = Enum.TextXAlignment.Left;

CloseButton.Name = RandomString(6);
CloseButton.Parent = Header;
CloseButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
CloseButton.BorderSizePixel = 0;
CloseButton.Position = UDim2.new(1, -28, 0, 4);
CloseButton.Size = UDim2.new(0, 24, 0, 24);
CloseButton.Font = Enum.Font.GothamBold;
CloseButton.Text = "×";
CloseButton.TextColor3 = Color3.fromRGB(200, 200, 200);
CloseButton.TextSize = 16;

CloseCorner.Parent = CloseButton;
CloseCorner.CornerRadius = UDim.new(0, 4);

ContentFrame.Name = RandomString(8);
ContentFrame.Parent = MainContainer;
ContentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
ContentFrame.BackgroundTransparency = 1;
ContentFrame.Position = UDim2.new(0, 0, 0, 32);
ContentFrame.Size = UDim2.new(1, 0, 1, -32);

ButtonContainer.Name = RandomString(8);
ButtonContainer.Parent = ContentFrame;
ButtonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
ButtonContainer.BackgroundTransparency = 1;
ButtonContainer.Position = UDim2.new(0, 20, 0, 20);
ButtonContainer.Size = UDim2.new(1, -40, 0, 40);

GemsButton.Name = RandomString(6);
GemsButton.Parent = ButtonContainer;
GemsButton.BackgroundColor3 = Color3.fromRGB(80, 60, 160);
GemsButton.BorderSizePixel = 0;
GemsButton.Position = UDim2.new(0, 0, 0, 0);
GemsButton.Size = UDim2.new(0.48, 0, 1, 0);
GemsButton.Font = Enum.Font.GothamSemibold;
GemsButton.Text = "GEMS";
GemsButton.TextColor3 = Color3.fromRGB(240, 240, 240);
GemsButton.TextSize = 12;
GemsButton.TextWrapped = true;

GemsCorner.Parent = GemsButton;
GemsCorner.CornerRadius = UDim.new(0, 6);

MoneyButton.Name = RandomString(6);
MoneyButton.Parent = ButtonContainer;
MoneyButton.BackgroundColor3 = Color3.fromRGB(60, 100, 160);
MoneyButton.BorderSizePixel = 0;
MoneyButton.Position = UDim2.new(0.52, 0, 0, 0);
MoneyButton.Size = UDim2.new(0.48, 0, 1, 0);
MoneyButton.Font = Enum.Font.GothamSemibold;
MoneyButton.Text = "MONEY";
MoneyButton.TextColor3 = Color3.fromRGB(240, 240, 240);
MoneyButton.TextSize = 12;
MoneyButton.TextWrapped = true;

MoneyCorner.Parent = MoneyButton;
MoneyCorner.CornerRadius = UDim.new(0, 6);

Footer.Name = RandomString(6);
Footer.Parent = ContentFrame;
Footer.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Footer.BackgroundTransparency = 1;
Footer.Position = UDim2.new(0, 0, 1, -30);
Footer.Size = UDim2.new(1, 0, 0, 30);

Divider.Name = RandomString(6);
Divider.Parent = Footer;
Divider.BackgroundColor3 = Color3.fromRGB(50, 50, 50);
Divider.BorderSizePixel = 0;
Divider.Position = UDim2.new(0, 0, 0, 0);
Divider.Size = UDim2.new(1, 0, 0, 1);

DiscordLabel.Name = RandomString(8);
DiscordLabel.Parent = Footer;
DiscordLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
DiscordLabel.BackgroundTransparency = 1;
DiscordLabel.Position = UDim2.new(0, 5, 0, 6);
DiscordLabel.Size = UDim2.new(0.7, -12, 1, -12);
DiscordLabel.Font = Enum.Font.Gotham;
DiscordLabel.Text = "Guide/Buy Premium: dsc.gg/ktC6dNVxDC";
DiscordLabel.TextColor3 = Color3.fromRGB(150, 150, 150);
DiscordLabel.TextSize = 13;
DiscordLabel.TextXAlignment = Enum.TextXAlignment.Left;

local function createButtonEffect(button)
    local originalColor = button.BackgroundColor3;
    
    button.MouseEnter:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(
                math.min(originalColor.R * 255 + 20, 255),
                math.min(originalColor.G * 255 + 20, 255),
                math.min(originalColor.B * 255 + 20, 255)
            ) / 255
        });
        tween:Play();
    end);
    
    button.MouseLeave:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = originalColor
        });
        tween:Play();
    end);
end;

createButtonEffect(GemsButton);
createButtonEffect(MoneyButton);
createButtonEffect(CloseButton);

local function destroyGUI()
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In);
    local tween = TweenService:Create(MainContainer, tweenInfo, {
        Position = UDim2.new(0.5, -160, 1.5, 0),
        BackgroundTransparency = 1
    });
    tween:Play();
    tween.Completed:Connect(function()
        SpaceHubGUI:Destroy();
    end);
end;

GemsButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/tds-roblox/refs/heads/main/Scripts/Gems.lua"))()
    destroyGUI();
end);

MoneyButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/tds-roblox/refs/heads/main/Scripts/Money.lua"))()
    destroyGUI();
end);

CloseButton.MouseButton1Click:Connect(function()
    destroyGUI();
end);

local dragging = false;
local dragInput, dragStart, startPos;

local function update(input)
    local delta = input.Position - dragStart;
    MainContainer.Position = UDim2.new(
        startPos.X.Scale, 
        startPos.X.Offset + delta.X, 
        startPos.Y.Scale, 
        startPos.Y.Offset + delta.Y
    );
end;

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true;
        dragStart = input.Position;
        startPos = MainContainer.Position;
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false;
            end;
        end);
    end;
end);

Header.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input;
    end;
end);

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input);
    end;
end);

MainContainer.Position = UDim2.new(0.5, -160, 0.3, -80);
MainContainer.BackgroundTransparency = 1;

local entranceTween = TweenService:Create(MainContainer, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5, -160, 0.5, -80),
    BackgroundTransparency = 0
});
entranceTween:Play();
