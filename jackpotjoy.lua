-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local FastOpen = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local addall = Instance.new("TextButton")
local _10t = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.Position = UDim2.new(0.123997569, 0, 0.206134975, 0)
main.Size = UDim2.new(0, 182, 0, 122)
main.Active = true
main.Draggable = true 

FastOpen.Name = "Fast Open "
FastOpen.Parent = main
FastOpen.BackgroundColor3 = Color3.fromRGB(105, 150, 255)
FastOpen.Position = UDim2.new(0.578649998, 0, 0.201202661, 0)
FastOpen.Size = UDim2.new(0, 53, 0, 39)
FastOpen.Font = Enum.Font.SourceSans
FastOpen.Text = "fast open"
FastOpen.TextColor3 = Color3.fromRGB(0, 0, 0)
FastOpen.TextSize = 14.000
FastOpen.MouseButton1Click:Connect(function()
	_G.Thing = true
	_G.Case = "Bitosolized"

	for i=1,300 do
		spawn(function()
			while _G.Thing do 
				game:GetService("ReplicatedStorage").Remotes.OpenCase:InvokeServer(_G.Case, tostring(game:GetService("Players").LocalPlayer.CasesPer.Value))
				game:GetService("ReplicatedStorage").Remotes.Click:FireServer()
			end
		end)
	end
end)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0309329983, 0, -0.143564373, 0)
TextLabel.Size = UDim2.new(0, 166, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "zxrby private script"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 0.970

addall.Name = "add all"
addall.Parent = main
addall.BackgroundColor3 = Color3.fromRGB(105, 150, 255)
addall.Position = UDim2.new(0.123593807, 0, 0.195721358, 0)
addall.Size = UDim2.new(0, 53, 0, 39)
addall.Font = Enum.Font.SourceSans
addall.Text = "add all"
addall.TextColor3 = Color3.fromRGB(0, 0, 0)
addall.TextSize = 14.000
addall.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zxrby/jackpotjoy/main/k.lua"))()
end)

_10t.Name = "10t"
_10t.Parent = main
_10t.BackgroundColor3 = Color3.fromRGB(105, 150, 255)
_10t.Position = UDim2.new(0.123593807, 0, 0.609509408, 0)
_10t.Size = UDim2.new(0, 53, 0, 39)
_10t.Font = Enum.Font.SourceSans
_10t.Text = "add 10t"
_10t.TextColor3 = Color3.fromRGB(0, 0, 0)
_10t.TextSize = 14.000
_10t.MouseButton1Click:Connect(function()
	local string_1 = "Samurai Hat";
	local string_2 = "51000";
	local Target = game:GetService("ReplicatedStorage").Remotes.Jackpot;
	Target:FireServer(string_1, string_2);
end)
