local ScreenGui = Instance.new("ScreenGui")
local Title = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Counter = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Counter_2 = Instance.new("TextLabel")
local CrashButton = Instance.new("TextButton")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Title.Name = "Title"
Title.Parent = ScreenGui
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Position = UDim2.new(0.684547305, 0, 0.175497577, 0)
Title.Size = UDim2.new(0, 197, 0, 52)
Title.ZIndex = 0
Title.Active = true
Title.Draggable = true
ImageLabel.Parent = Title
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.497762442, 0, 0.385636032, 0)
ImageLabel.Size = UDim2.new(0, 42, 0, 42)
ImageLabel.Image = "http://www.roblox.com/asset/?id=7171486036"
UICorner.Parent = Title
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(89, 89, 89)), ColorSequenceKeypoint.new(0.64, Color3.fromRGB(49, 50, 49)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 50, 49))}
UIGradient.Rotation = 90
UIGradient.Parent = Title
Counter.Name = "Counter"
Counter.Parent = Title
Counter.Active = true
Counter.BackgroundColor3 = Color3.fromRGB(49, 50, 49)
Counter.BorderSizePixel = 0
Counter.Position = UDim2.new(0, 0, 0.778716743, 0)
Counter.Size = UDim2.new(0, 197, 0, 81)
Counter.ZIndex = 0
UICorner_2.Parent = Counter
Counter_2.Name = "Counter"
Counter_2.Parent = Counter
Counter_2.AnchorPoint = Vector2.new(0.5, 0.5)
Counter_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Counter_2.BackgroundTransparency = 1.000
Counter_2.Position = UDim2.new(0.5, 0, 0.481481493, 0)
Counter_2.Size = UDim2.new(0, 200, 0, 50)
Counter_2.Font = Enum.Font.SourceSansBold
Counter_2.RichText = true
Counter_2.Text = "<i>0/1250</i>"
Counter_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Counter_2.TextSize = 25.000
Counter_2.TextWrapped = true
_G.sexycrash = false
CrashButton.Name = "CrashButton"
CrashButton.Parent = Title
CrashButton.AnchorPoint = Vector2.new(0.5, 0.5)
CrashButton.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
CrashButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
CrashButton.BorderSizePixel = 0
CrashButton.Position = UDim2.new(0.497461915, 0, 1.53846169, 0)
CrashButton.Size = UDim2.new(0, 180, 0, 50)
CrashButton.Font = Enum.Font.SourceSansBold
CrashButton.Text = "Let's make some noise!"
CrashButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CrashButton.TextSize = 20.000
CrashButton.MouseButton1Click:Connect(function()
    CrashButton:Destroy()
    _G.sexycrash = true
    print(_G.sexycrash)
end)
trolling = 0
while task.wait() do -- poppy is so hot ;)
    if _G.sexycrash then
        for i = 1,2 do
            game.ReplicatedStorage.MainEvent:FireServer("JoinCrew", 14438564)
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            game.Players.LocalPlayer.PlayerGui.MainScreenGui.Crew.CrewFrame.Visible = false
            game:GetService("CoreGui").RobloxGui.Backpack.Visible = false
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "[SprayCan]" then
                    trolling = trolling + 1
                    v.Handle.Transparency = 100
                    v.Handle.Velocity = Vector3.new(math.huge, math.huge, math.huge)
                    v.Parent = game.Players.LocalPlayer.Character
                end
            end
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "[SprayCan]" then
                    v.Handle.Transparency = 100
                    v.Handle.Velocity = Vector3.new(math.huge, math.huge, math.huge)
                    v.Parent = game.Players.LocalPlayer.Character
                end
            end
        end
        game.Players.LocalPlayer.PlayerGui.MainScreenGui.Crew.CrewFrame.Visible = false
        if trolling == 1250 then
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("BasePart") or v:IsA("Accessory") then
                    v:Destroy()
                end
            end
        end
        Counter_2.Text = "<i>Tools: "..trolling.."/1250</i>"
    end
end
