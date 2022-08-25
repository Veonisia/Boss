local seakui = game:GetService("Players").LocalPlayer.Name

function ui()
if game:GetService("Workspace")[seakui].Humanoid.Health == 0 then
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local timerr = Instance.new("TextLabel")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.461119741, 0, 0, 0)
Frame.Size = UDim2.new(0, 100, 0, 30)
UICorner.Parent = Frame
timerr.Name = "timerr"
timerr.Parent = Frame
timerr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
timerr.BackgroundTransparency = 1.000
timerr.Size = UDim2.new(0, 100, 0, 30)
timerr.Font = Enum.Font.FredokaOne
timerr.TextColor3 = Color3.fromRGB(0, 0, 0)
timerr.TextScaled = true
timerr.TextSize = 14.000
timerr.TextWrapped = true
end
end

ui()
while wait(.5) do
    ui()
end
