---------------------------->> Customization <<----------------------------

AccelerationTime = 0.25				SpecialAmmoSpeed = 55.2
BulletsPerShot = 1				MaxFireRate = 0.3
ConsecutiveReloadTime = 0.675			MoveSpeed = 24
DriveSound = "TankTreads"			ReloadTime = 1
ExplodeDirection = Vector3.new(0, 0, 0)		RotationSpeed = 140
MaxLoadedSpecial = 4				TeleportingBase = "Red"
TeleportOnExecute = true

for i, tank in pairs(workspace.Tanks:GetChildren()) do
	if tank.Name.find(game.Players.LocalPlayer.Name, game.Players.LocalPlayer.Name) then
		tank.Settings.AccelerationTime.Value = AccelerationTime
		tank.Settings.BulletsPerShot.Value = BulletsPerShot
		tank.Settings.ConsecutiveReloadTime.Value = ConsecutiveReloadTime
		tank.Settings.DriveSound.Value = DriveSound
		tank.Settings.ExplodeDirection.Value = ExplodeDirection
		tank.Settings.MaxFireRate.Value = MaxFireRate
		tank.Settings.MoveSpeed.Value = MoveSpeed
		tank.Settings.ReloadTime.Value = ReloadTime
		tank.Settings.RotationSpeed.Value = RotationSpeed
		tank.Settings.MaxLoadedSpecial.Value = MaxLoadedSpecial
		tank.Settings.SpecialAmmoSpeed.Value = SpecialAmmoSpeed
		--		tank.Settings.MineMaxDetectionDistance.Value = MineMaxDetectionDistance
		--		tank.Settings.KillText.Value = KillText
		--		tank.Settings.AbilityCooldown.Value = AbilityCooldown
		--		tank.Settings.HasCrown.Value = HasCrown
		--		tank.Settings.MineTransparency.Value = MineTransparency
--[[		for i, ability in pairs(tank.Abilities:GetChildren()) do
			ability.CooldownTime.Value = AbilityCooldown
		end--]]
	end
	
	if TeleportOnExecute == true then
		for i, map in pairs(workspace:GetChildren()) do
			if map.Name.find(map.Name, "Map") then
				if TeleportingBase == "Red" then
					tank.Settings.Position.Value = Vector3.new(29.5, 14.5, -280)
				else
					tank.Settings.Position.Value = Vector3.new(29.5, 14.5, 306)
				end
			end
		end
	end
end

--[[

UserInputService = game:GetService("UserInputService")

function NoClipOn()
	return UserInputService:IsKeyDown(Enum.KeyCode.V)
end

local function Input(input, gameProcessedEvent)
	if NoClipOn() then
		for i, tank in pairs(workspace.Tanks:GetChildren()) do
			if tank.Name.find(game.Players.LocalPlayer.Name, game.Players.LocalPlayer.Name) then
				tank.Settings.Position.Value = Vector3.new(tank.Settings.Position.Value.X, tank.Settings.Position.Value.Y, tank.Settings.Position.Value.Z + 1)
			end		
		end
	end
end

UserInputService.InputBegan:Connect(Input)

--]]
