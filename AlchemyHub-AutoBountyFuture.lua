-- wrong game
if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    else game.Players.LocalPlayer:Kick("[NgHuy Hub] // Sai game rồi cụ. Tự động vào Blox Fruits trong 10s, thoát nếu bạn muốn!") 
      wait(10) 
      game:GetService"TeleportService":Teleport(game.PlaceId)
    end 
-- notification
u5 = require(game.ReplicatedStorage:WaitForChild("Notification"))
u5.new("<Color=Yellow>NgHuy Hub Auto Bounty<Color=/>"):Display()
wait()
u5.new("<Color=Yellow>Đây là bản Beta nên sẽ có bug!<Color=/>"):Display() 
wait()
u5.new("<Color=Yellow>Nếu có lỗi/ý tưởng xin vui lòng liên hệ chúng tôi ở Discord<Color=/>"):Display() 
wait()
u5.new("<Color=Yellow>dsc.gg/nghuyhub<Color=/>"):Display()   
-- setting
local HubName = "NgHuy Hub"
local LogoImage = "http://www.roblox.com/asset/?id=16500646890"
local ColorTheme = Color3.fromRGB(0, 255, 145)
-- script
local BountyWhenStart = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function dragify(Frame, object)
    dragToggle = nil
    dragSpeed = .25
    dragInput = nil
    dragStart = nil
    dragPos = nil
    function updateInput(input)
        Delta = input.Position - dragStart
        Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(object, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1 or
                    input.UserInputType == Enum.UserInputType.Touch)
            then
                dragToggle = true
                dragStart = input.Position
                startPos = object.Position
                input.Changed:Connect(
                    function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )
    Frame.InputChanged:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch)
            then
                dragInput = input
            end
        end
    )
    game:GetService("UserInputService").InputChanged:Connect(
    function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end
    )
end
local MINIGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local MainCorner = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local Text_1 = Instance.new("TextLabel")
local Text_2 = Instance.new("TextLabel")
local Text_3 = Instance.new("TextLabel")
local ProfileName = Instance.new("TextLabel")
local ProfileImage = Instance.new("ImageLabel")
MINIGui.Name = "MINIGui"
MINIGui.Parent = game.CoreGui
MINIGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainFrame.Name = "MainFrame"
MainFrame.Parent = MINIGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Position = UDim2.new(0.499723464, 0, 0.499925077, 0)
MainFrame.Size = UDim2.new(0, 502, 0, 263)
MainFrame.ZIndex = 0
MainCorner.Name = "MainCorner"
MainCorner.Parent = MainFrame
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.Name = "Logo"
Logo.Parent = MainFrame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.Size = UDim2.new(0, 300, 0, 300)
Logo.Image = LogoImage
Logo.ImageTransparency = 0.8
Name.Name = "Name"
Name.Parent = MainFrame
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.ClipsDescendants = true
Name.Position = UDim2.new(0.0520229861, 0, 0.0283840168, 0)
Name.Size = UDim2.new(0, 448, 0, 39)
Name.Font = Enum.Font.GothamBold
Name.Text = HubName
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 32.000
ProfileName.Name = "ProfileName"
ProfileName.Parent = MainFrame
ProfileName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ProfileName.BackgroundTransparency = 1.000
ProfileName.ClipsDescendants = true
ProfileName.Position = UDim2.new(0.38, 0, 0.28, 0)
ProfileName.Size = UDim2.new(0, 318, 0, 25)
ProfileName.Font = Enum.Font.Gotham
ProfileName.Text = "Tên của bạn : "..game.Players.LocalPlayer.Name
ProfileName.TextColor3 = Color3.fromRGB(255, 255, 255)
ProfileName.TextSize = 22.000
ProfileName.TextXAlignment = Enum.TextXAlignment.Left
Text_1.Name = "Text_1"
Text_1.Parent = MainFrame
Text_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_1.BackgroundTransparency = 1.000
Text_1.ClipsDescendants = true
Text_1.Position = UDim2.new(0.38, 0, 0.40, 0)
Text_1.Size = UDim2.new(0, 318, 0, 25)
Text_1.Font = Enum.Font.Gotham
Text_1.Text = "Current Bounty : 10,000,000"
Text_1.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_1.TextSize = 22.000
Text_1.TextXAlignment = Enum.TextXAlignment.Left
Text_2.Name = "Text_2"
Text_2.Parent = MainFrame
Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_2.BackgroundTransparency = 1.000
Text_2.ClipsDescendants = true
Text_2.Position = UDim2.new(0.38, 0, 0.52, 0)
Text_2.Size = UDim2.new(0, 317, 0, 25)
Text_2.Font = Enum.Font.Gotham
Text_2.Text = "Earned Bounty : 10,000,000"
Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_2.TextSize = 22.000
Text_2.TextXAlignment = Enum.TextXAlignment.Left
Text_3.Name = "Text_3"
Text_3.Parent = MainFrame
Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_3.BackgroundTransparency = 1.000
Text_3.ClipsDescendants = true
Text_3.Position = UDim2.new(0.38, 0, 0.64, 0)
Text_3.Size = UDim2.new(0, 317, 0, 25)
Text_3.Font = Enum.Font.Gotham
Text_3.Text = "Time Elapsed : 59 M - 59 S"
Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_3.TextSize = 22.000
Text_3.TextXAlignment = Enum.TextXAlignment.Left
ProfileImage.Parent = MainFrame
ProfileImage.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ProfileImage.BackgroundTransparency = 0
ProfileImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
ProfileImage.BorderSizePixel = 0
ProfileImage.Position = UDim2.new(0.0517928302, 0, 0.243346125, 0)
ProfileImage.Size = UDim2.new(0, 148, 0, 148)
ProfileImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
local UiToggle_UiStroke1 = Instance.new("UIStroke")
UiToggle_UiStroke1.Color = ColorTheme
UiToggle_UiStroke1.Thickness = 2
UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke1.Parent = MainFrame
local Corner1 = Instance.new("UICorner")
Corner1.Name = "Corner"
Corner1.Parent = ProfileImage
Corner1.CornerRadius = UDim.new(0, 100)
local UiStroke1_1 = Instance.new("UIStroke")
UiStroke1_1.Color = ColorTheme
UiStroke1_1.Thickness = 2
UiStroke1_1.Name = "UiToggle_UiStroke1"
UiStroke1_1.Parent = ProfileImage
dragify(MainFrame, MainFrame)
local TimeElapsed = true
local TimeCount_S = 0
local TimeCount_M = 0
while TimeElapsed do
    wait(1)
    TimeCount_S = TimeCount_S + 1
    if TimeCount_S > 60 then
        TimeCount_S = 0
        TimeCount_M = TimeCount_M + 1
    end
    Text_3.Text = "Thời gian chơi : "..TimeCount_M.." M - "..TimeCount_S.." S"
end
Text_1.Text = "Bounty đang có : 10,000,000"
Text_2.Text = "Bounty đã húp : 10,000,000"
spawn(function()
    while wait(0.1) do
		pcall(function()
            local BountyNow = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
            local gotBounty = BountyNow - BountyWhenStart
            Text_1.Text = "Bounty đã húp : "..gotBounty
            Text_2.Text = "Bounty đang có : "..BountyNow
		end)
    end
end)
spawn(function()
    while wait(0.1) do
		pcall(function()
            if _G.AutoFarmBount then
                ProfileImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players[NameTarget].UserId.."&width=420&height=420&format=png"
                ProfileName.Text = "Target : "..game.Players[NameTarget].Name
            end
		end)
    end
end)
_G.AutoFarmBounty = true
spawn(function()
    pcall(function()
        game:GetService("RunService").RenderStepped:connect(function()
            if _G.AutoFarmBounty and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                local args = {
                    [1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
                }
                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
            end
        end)
    end)
end)
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
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
end
local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = 0
l.FogEnd = 99
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(w:GetDescendants()) do
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted  then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.Graphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end
for i = 1,#l:GetChildren() do
    e=l:GetChildren()[i]
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
w.DescendantAdded:Connect(function(v)
    wait()
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.ShirtGraphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFarmBounty then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end
            end
        end)
    end
end)
spawn(function()
pcall(function()
if _G.AutoFarmBounty then
while wait() do
if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
end
end
end)
end)
function Tween(P1)
Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 250 then
Speed = 600
elseif Distance < 500 then
Speed = 400
elseif Distance < 1000 then
Speed = 350
elseif Distance >= 1000 then
Speed = 200
end
game:GetService("TweenService"):Create(
game.Players.LocalPlayer.Character.HumanoidRootPart,
TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
{CFrame = P1}
):Play()
end
function Tween(P1)
Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 1000 then
Speed = 400
elseif Distance >= 1000 then
Speed = 250
end
game:GetService("TweenService"):Create(
game.Players.LocalPlayer.Character.HumanoidRootPart,
TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
{CFrame = P1}
):Play()
Clip = true
wait(Distance/Speed)
Clip = false
end
spawn(function()
while wait() do
pcall(function()
if _G.AutoFarmBounty then
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end
end)
end
end)
local Delay = 1
CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
spawn(function()
while wait() do
pcall(function()
if _G.AutoFarmBounty then
for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
plyselecthunthelpold = v.Humanoid.Health
repeat task.wait()
NameTarget = v.Name
if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
end
end
spawn(function()
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
spawn(function()
Melee()
SY()
SC()
SZ()
SX()
wait(1)
Sword()
SZ()
SX()
wait(1)
Gun()
SZ()
SX()
end)
end
end)
v.HumanoidRootPart.CanCollide = false
TargetSelectHunt = v.Humanoid
until _G.AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
NextplySelect = false
StartCheckTarget = false
end
end
end
end
end)
end
end)
function Melee()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
end
end
function Sword()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
end
end
function Gun()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
end
end
function SY()
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
end
function SZ()
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
end
function SX()
game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
end
function SC()
game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
end
spawn(function()
pcall(function()
while task.wait() do
if _G.AutoFarmBounty then
game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
end
end
end)
end)
spawn(function()
pcall(function()
while wait() do
if _G.AutoFarmBounty then
if TargetSelectHunt ~= nil then
if StartCheckTarget then
wait(6.5)
if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
NextplySelect = true
TargetSelectHunt = nil
end
end
end
end
end
end)
end)
spawn(function()
pcall(function()
while wait(.1) do
if _G.AutoFarmBounty then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
end
end
end
end)
end)
spawn(function()
while wait() do
if _G.AutoFarmBounty then
pcall(function()
wait(150)
Hop()
end)
end
end
end)