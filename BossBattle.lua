local seakui = game:GetService("Players").LocalPlayer.Name
local bosstimer = game:GetService("Workspace").BossArena.ClickBox.BillboardGui.Info.Timer
local tpnum = game:GetService("Workspace").Seakui.HumanoidRootPart.TotalPower.Num
local Imput = game:GetService("UserInputService")
    Imput.InputBegan:connect(function(inst)
    if inst.KeyCode == Enum.KeyCode.KeypadMinus then
    local seakui = game:GetService("Players").LocalPlayer.Name
    local tpnum = game:GetService("Workspace")[seakui].HumanoidRootPart.TotalPower.Num
    local group = game:GetService("Workspace")[seakui].HumanoidRootPart.TotalPower.Group
    local premium = game:GetService("Workspace")[seakui].HumanoidRootPart.TotalPower.Premium
    local class = game:GetService("Workspace")[seakui].HumanoidRootPart.TotalPower.Class
    game:GetService("Workspace")[seakui].HumanoidRootPart.TotalPower.Enabled = true
    group.Visible = true
    premium.Visible = true
    tpnum.Text = bosstimer.Text
    class.Text = "ily adam"
    group.Text = "✨ Only YOU can see this ✨"
    premium.Text = "by Seakui"
end
end)


function tp()
    local vim = game:service'VirtualInputManager'
    vim:SendKeyEvent(true, "KeypadMinus", false, game)
end
function checkboss()
if bosstimer.Text == "Starts: 14s" then
fireclickdetector(game:GetService("Workspace").BossArena.ClickBox.ClickDetector)
game:GetService("Workspace")[seakui].Humanoid.Health = 0
end
end

while _G.Active and wait(.5) do
    tp()
    checkboss()
end
