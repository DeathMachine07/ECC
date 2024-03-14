bannedid = {
	77590021
}
game.Players.PlayerAdded:Connect(function(plr)
    if table.find(bannedid,plr.UserId) then
		plr:Kick("You have been kicked")
	end
end)

local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt"))()
local scriptswin = DiscordLib:Window("VOID-X NIGHT WAVES")

local PlayerState = scriptswin:Server("PLAYER", "")
local CHAIN = scriptswin:Server("CHAIN", "")

local PhysicalAct = PlayerState:Channel("Physical")
local AdvancedAct = PlayerState:Channel("Non-Physical")
local CharacterChain = CHAIN:Channel("Character")
local TeleportChain = CHAIN:Channel("Teleport")
local VisualChain = CHAIN:Channel("Visual")
local MiscChain = CHAIN:Channel("Misc")
local VoidChain = CHAIN:Channel("VOID-X Chain")

PhysicalAct:Button("WalkSpeed +16", function() -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed += 16
end)

PhysicalAct:Button("JumpPower +32", function() -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower += 32
end)

AdvancedAct:Button("Fly", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Fly.lua"))()
end)

AdvancedAct:Button("Fly Mobile", function() 
	  loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)

AdvancedAct:Button("Infinite Jump", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

AdvancedAct:Button("NoClip", function()
    local Plr = game.Players.LocalPlayer
    while true do wait(0.1) for a, b in pairs(Workspace:GetChildren()) do if b.Name == Plr.Name then for i, v in pairs(b:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end end end
end) 

CharacterChain:Button("Infinite Stamina", function()

local plr = game.Players.LocalPlayer
local char = plr.Character

local function abc()	
char.Stats.Stamina.Value = 100
end

char.Stats.Stamina:GetPropertyChangedSignal("Value"):Connect(abc)
end)

CharacterChain:Button("Infinite CombatStamina", function()
  local plr = game.Players.LocalPlayer
local char = plr.Character

local function abc()	
char.Stats.CombatStamina.Value = 100
end

char.Stats.CombatStamina:GetPropertyChangedSignal("Value"):Connect(abc)
end)


CharacterChain:Button("Super Stamina Regen", function()
    local plr = game.Players.LocalPlayer
local char = plr.Character

local function abc()	
char.Stats.StaminaRegen.Value = 100
end

char.Stats.StaminaRegen:GetPropertyChangedSignal("Value"):Connect(abc)

end)


CharacterChain:Button("Always Dodging", function()
    while true do wait(0.2)
local args = {
    [1] = "Dodge"
}

game:GetService("Players").LocalPlayer.Character.CharacterMobility.CTS:FireServer(unpack(args))
end
end)

CharacterChain:Button("Always Machete Blocking", function()
   while true do wait(0.1)
local args = {
    [1] = "ParryBegin"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
end)

VoidChain:Button("Always Swing Machete", function()
   while true do wait()
local args = {
    [1] = "MacheteSwing2"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
end)

VoidChain:Button("Warp Chain to PowerStation", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/UniqueDemon/main/DemonLordV2"))()
end)

MiscChain:Button("Power Repair Dupe Points (Stand Close to E button)", function()
   for i = 1,2000 do
fireproximityprompt(game.Workspace.GameStuff.GameSections.POWERSTATION.Hitbox.ProximityPrompt)
end
end)

-- MiscChain:Button("Insta Kill Chain", function()
  --  loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/ProjectDark/main/CHAINS"))()
--end)

MiscChain:Button("Chain ESP", function()
local FillColor = Color3.fromRGB(81, 65, 79)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.3
local OutlineColor = Color3.fromRGB(255, 0, 0)
local OutlineTransparency = 0
local CoreGui = game:FindService("CoreGui")

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local Highlight = Instance.new("Highlight")
Highlight.Name = "yoomama"
Highlight.FillColor = FillColor
Highlight.DepthMode = DepthMode
Highlight.FillTransparency = FillTransparency
Highlight.OutlineColor = OutlineColor
Highlight.OutlineTransparency = 0
Highlight.Parent = Storage

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "TadachiisESPTags" -- Use the correct name for the BillboardGui
billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
billboardGui.AlwaysOnTop = true
billboardGui.LightInfluence = 1
billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local textLabel = Instance.new("TextLabel")
textLabel.Name = "NameLabel" -- Use the correct name for the label
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1 -- transparent background
textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
textLabel.TextScaled = true
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
textLabel.Visible = true -- ESP is always visible without a GUI
textLabel.Parent = billboardGui

local v
if game:GetService("Workspace").Misc.AI:FindFirstChild("CHAIN") and workspace.Misc.AI.CHAIN:FindFirstChild("Humanoid") then
  v = game:GetService("Workspace").Misc.AI.CHAIN
end

if v then
  Highlight.Adornee = v
  billboardGui.Parent = v.Head
  for i = 1, 4800 do
    wait(0.1)
    textLabel.Text = math.floor(v.Humanoid.Health)
  end
end

game:GetService("Workspace").Misc.AI.ChildAdded:Connect(function(Child)
  if Child.Name == "CHAIN" and Child:FindFirstChild("Humanoid") then
wait(5)
    Highlight.Adornee = Child
billboardGui.Parent = Child.Head
    for i = 1, 960 do
      wait(0.5)
      textLabel.Text = math.floor(Child.Humanoid.Health)
    end
  end
end)
end)

MiscChain:Button("Delete Borders", function()
    workspace.Misc.Barriers:ClearAllChildren()
end)

MiscChain:Button("Collect All Scraps", function()
    local Player = game.Players.LocalPlayer
local Character = Player.Character

for i,v in pairs(game:GetService("Workspace").Misc:GetDescendants()) do
  if v.ClassName == "ProximityPrompt" then
    Character.HumanoidRootPart.CFrame = v.Parent.CFrame
    fireproximityprompt(v)
    wait(1)
  end
end
end)

--MiscChain:Button("Extend Machete Hitbox (Need to Hold)", function()
 --   game.Players.LocalPlayer.Character.Machete.Handle.Size = Vector3.new(15,15,15)
--end)

TeleportChain:Button("PowerStation", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-208, 60, -130)
end)

TeleportChain:Button("Small Cabin", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171, 60, 231)
end)

TeleportChain:Button("Warehouse", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(325, 60, -229)
end)

TeleportChain:Button("Car Cabin", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-317, 60, 275)
end)

TeleportChain:Button("Safehouse", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 60, -36)
end)

TeleportChain:Button("Campfire", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(297, 60, 167)
end)

TeleportChain:Button("Shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-210, 20, -242)
end)

TeleportChain:Button("CHAIN Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18, 20, -226)
end)

VisualChain:Button("Fullbright", function()
    game.Lighting.FogEnd = 100000000000
    game.Lighting.FogStart = 10000000000
    game.Lighting.ClockTime = 12
    game.Lighting.Brightness = 5
    game.Lighting.GlobalShadows = false
for i,v in pairs(game.Lighting:GetChildren()) do
      if v.Name ~= "Misc" and v.Name ~= "CamDOP" then
v:Destroy()
end
end
end)
 
VoidChain:Button("300 Slices", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/UniqueDemon/main/DemonLordV7"))()
end)


VoidChain:Button("600 Slices to Void", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/UniqueDemon/main/DemonLordV5.lua"))()
end)


VoidChain:Button("1000 Slices -> Tele to Spawn", function()
    for i = 1,1000 do 
local args = {
    [1] = "MacheteSwing2"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18, 20, -226)
end)

VoidChain:Toggle("Auto Collecting Dropped Items", function(state)
   while state do
      local player = game.Players.LocalPlayer
local character = player.Character
game.Workspace.GameStuff.PlayerStuff.ChildrenAdded:Connect(function(child)
  for i, v in pairs(child:GetDescendants()) do
    if v.ClassName == "ProximityPrompt" then
      local pos = character.Head.CFrame
      character.PrimaryPart.CFrame = v.Parent.CFrame
      fireproximityprompt(v)
      wait(0.2)
      character.PrimaryPart.CFrame = pos
    end
  end
end)     
   end
end)
