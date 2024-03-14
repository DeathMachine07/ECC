Dodging = {
	77590021
}

PowerDupe = {
	77590021
}

Warp = {
	77590021
}

Scraps = {
	77590021
}


game.Players.PlayerAdded:Connect(function(plr)
    if table.find(Dodging,plr.UserId) then
		plr:Kick("You have been kicked")
	
	else

			
      CharacterChain:Button("Always Dodging", function()
      while true do wait(0.2)
      local args = {
         [1] = "Dodge"
      }

       game:GetService("Players").LocalPlayer.Character.CharacterMobility.CTS:FireServer(unpack(args))
end					
end)

			
    end
end)


game.Players.PlayerAdded:Connect(function(plr)
    if table.find(PowerDupe,plr.UserId) then
		plr:Kick("You have been kicked")
	
	else

			
      MiscChain:Button("Power Repair Dupe Points (Stand Close to E button)", function()
   for i = 1,2000 do
fireproximityprompt(game.Workspace.GameStuff.GameSections.POWERSTATION.Hitbox.ProximityPrompt)
end
end)

			
    end
end)


game.Players.PlayerAdded:Connect(function(plr)
    if table.find(Warp,plr.UserId) then
		plr:Kick("You have been kicked")
	
	else
VoidChain:Button("Warp Chain to PowerStation", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/UniqueDemon/main/DemonLordV2"))()
end)		
    end
end)


game.Players.PlayerAdded:Connect(function(plr)
    if table.find(Scraps,plr.UserId) then
		plr:Kick("You have been kicked")
	
	else

			
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
