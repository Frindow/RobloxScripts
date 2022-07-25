KeyESP = true
ToolESP = true
TrapsESP = true
EnemyESP = true
PlayerESP = true
ExitsESP = true
InteractsESP = false

map = Instance.new("StringValue")
map.Parent = workspace
map.Name = "CurrentMap"

while wait(1) do -- ESP Loop
	if workspace.Map:FindFirstChild("House") then
		workspace.CurrentMap.Value = "House"
	elseif workspace.Map:FindFirstChild("HouseEz") then
		workspace.CurrentMap.Value = "HouseEz"
	elseif workspace.Map:FindFirstChild("House 2") then
		workspace.CurrentMap.Value = "House 2"
	elseif workspace.Map:FindFirstChild("House 2Ez") then
		workspace.CurrentMap.Value = "House 2Ez"
	elseif workspace.Map:FindFirstChild("House 3") then
		workspace.CurrentMap.Value = "House 3"
	elseif workspace.Map:FindFirstChild("House 3Ez") then
		workspace.CurrentMap.Value = "House 3Ez"
	elseif workspace.Map:FindFirstChild("School") then
		workspace.CurrentMap.Value = "School"
	elseif workspace.Map:FindFirstChild("Ski resort") then
		workspace.CurrentMap.Value = "Ski resort"
	else
		workspace.CurrentMap.Value = ""
	end
	if workspace.Map:FindFirstChild(workspace.CurrentMap.Value) then
		if KeyESP == true then
			for i, key in pairs(workspace.Map[workspace.CurrentMap.Value].Tools.Map:GetChildren()) do -- Key ESP
				if key.Name:find("key") then
					if not key:FindFirstChild("Highlight") then
						local Highlight = Instance.new("Highlight")
						local Billboard = Instance.new("BillboardGui")
						local Name = Instance.new("TextLabel")
						local NameStroke = Instance.new("UIStroke")

						Highlight.FillColor = Color3.fromRGB(255, 170, 0)
						Highlight.OutlineTransparency = 0.9
						Highlight.Parent = key

						Billboard.Parent = key.Handle
						Billboard.ExtentsOffset = Vector3.new(0, 2, 0)
						Billboard.Size = UDim2.new(0, 200, 0, 50)
						Billboard.AlwaysOnTop = true
						Billboard.LightInfluence = 0
						--			keyBillboard.MaxDistance = 50

						Name.Parent = Billboard
						Name.BackgroundTransparency = 1
						Name.TextScaled = true
						Name.Text = key.Name
						Name.TextColor3 = Color3.fromRGB(255, 255, 255)
						Name.Font = Enum.Font.Arial
						Name.Size = UDim2.new(1, 0, 1, 0)

						NameStroke.Parent = Name
						NameStroke.Thickness = 3
					end
				end
			end

		else

			for i, key in pairs(workspace.Map[workspace.CurrentMap.Value].Tools.Map:GetChildren()) do
				if key:FindFirstChild("Highlight") then
					if key.Name:find("key") then
						key.Highlight:Destroy()
						key.Handle.BillboardGui:Destroy()
					end
				end
			end
		end
		if ToolESP == true then
			for i, tool in pairs(workspace.Map[workspace.CurrentMap.Value].Tools.Map:GetChildren()) do -- Tool ESP
				if not tool.Name:find("key") then
					if not tool:FindFirstChild("Highlight") then
						local Highlight = Instance.new("Highlight")
						local Billboard = Instance.new("BillboardGui")
						local Name = Instance.new("TextLabel")
						local NameStroke = Instance.new("UIStroke")

						Highlight.FillColor = Color3.fromRGB(255, 255, 0)
						Highlight.OutlineTransparency = 0.9
						Highlight.Parent = tool

						Billboard.Parent = tool.Handle
						Billboard.ExtentsOffset = Vector3.new(0, 2, 0)
						Billboard.Size = UDim2.new(0, 200, 0, 50)
						Billboard.AlwaysOnTop = true
						Billboard.LightInfluence = 0
						--			keyBillboard.MaxDistance = 50

						Name.Parent = Billboard
						Name.BackgroundTransparency = 1
						Name.TextScaled = true
						Name.Text = tool.Name
						Name.TextColor3 = Color3.fromRGB(255, 255, 255)
						Name.Font = Enum.Font.Arial
						Name.Size = UDim2.new(1, 0, 1, 0)

						NameStroke.Parent = Name
						NameStroke.Thickness = 3
					end
				end
			end

		else

			for i, tool in pairs(workspace.Map[workspace.CurrentMap.Value].Tools.Map:GetChildren()) do
				if tool:FindFirstChild("Highlight") then
					if not tool.Name:find("key") then
						tool.Highlight:Destroy()
						tool.Handle.BillboardGui:Destroy()
					end
				end
			end
		end
		if InteractsESP == true then
			for i, interact in pairs(workspace.Map[workspace.CurrentMap.Value].Interacts:GetChildren()) do -- Interacts ESP
				if not interact:FindFirstChild("Highlight") then
					local Highlight = Instance.new("Highlight")

					Highlight.FillColor = Color3.fromRGB(255, 255, 255)
					Highlight.OutlineTransparency = 0.9
					Highlight.Parent = interact
				end
			end

		else

			for i, interact in pairs(workspace.Map[workspace.CurrentMap.Value].Interacts:GetChildren()) do
				if interact:FindFirstChild("Highlight") then
					interact.Highlight:Destroy()
				end
			end		

		end
		if TrapsESP == true then
			for i, trap in pairs(workspace.Map.Traps:GetChildren()) do -- Traps ESP
				if not trap:FindFirstChild("Highlight") then
					local Highlight = Instance.new("Highlight")
					local Billboard = Instance.new("BillboardGui")
					local Name = Instance.new("TextLabel")
					local NameStroke = Instance.new("UIStroke")

					Highlight.FillColor = Color3.fromRGB(255, 0, 0)
					Highlight.OutlineTransparency = 0.9
					Highlight.Parent = trap

					Billboard.Parent = trap.Base
					Billboard.ExtentsOffset = Vector3.new(0, 2, 0)
					Billboard.Size = UDim2.new(0, 200, 0, 50)
					Billboard.AlwaysOnTop = true
					Billboard.LightInfluence = 0
					--			keyBillboard.MaxDistance = 50

					Name.Parent = Billboard
					Name.BackgroundTransparency = 1
					Name.TextScaled = true
					Name.Text = trap.Name
					Name.TextColor3 = Color3.fromRGB(255, 0, 0)
					Name.Font = Enum.Font.Arial
					Name.Size = UDim2.new(1, 0, 1, 0)

					NameStroke.Parent = Name
					NameStroke.Thickness = 3
				end
			end

		else

			for i, trap in pairs(workspace.Map.Traps:GetChildren()) do
				if trap:FindFirstChild("Highlight") then
					trap.Highlight:Destroy()
					trap.Base.BillboardGui:Destroy()
				end
			end

		end
		if EnemyESP == true then
			if workspace.Map.Players:FindFirstChild("Enemy") then -- Enemy ESP
				if not workspace.Map.Players.Enemy:FindFirstChild("Highlight") then
					local Highlight = Instance.new("Highlight")
					local Billboard = Instance.new("BillboardGui")
					local Name = Instance.new("TextLabel")
					local NameStroke = Instance.new("UIStroke")

					Highlight.FillColor = Color3.fromRGB(255, 0, 0)
					Highlight.OutlineTransparency = 0.9
					Highlight.Parent = workspace.Map.Players.Enemy

					Billboard.Parent = workspace.Map.Players.Enemy.HumanoidRootPart
					Billboard.ExtentsOffset = Vector3.new(0, 2, 0)
					Billboard.Size = UDim2.new(0, 200, 0, 50)
					Billboard.AlwaysOnTop = true
					Billboard.LightInfluence = 0
					--			keyBillboard.MaxDistance = 50

					Name.Parent = Billboard
					Name.BackgroundTransparency = 1
					Name.TextScaled = true
					Name.Text = workspace.Map.Players.Enemy.Name
					Name.TextColor3 = Color3.fromRGB(255, 0, 0)
					Name.Font = Enum.Font.Arial
					Name.Size = UDim2.new(1, 0, 1, 0)

					NameStroke.Parent = Name
					NameStroke.Thickness = 3
				end
			end

		else

			if workspace.Map.Players:FindFirstChild("Enemy") then
				if workspace.Map.Players.Enemy:FindFirstChild("Highlight") then
					workspace.Map.Players.Enemy.Highlight:Destroy()
				end			
			end		
		end	
		if PlayerESP == true then
			for i, player in pairs(workspace.Map.Players:GetChildren()) do -- Player ESP
					if not player:FindFirstChild("Highlight") then
						local Highlight = Instance.new("Highlight")
						local Billboard = Instance.new("BillboardGui")
						local Name = Instance.new("TextLabel")
						local NameStroke = Instance.new("UIStroke")

						Highlight.FillColor = Color3.fromRGB(0, 170, 0)
						Highlight.OutlineTransparency = 0.9
						Highlight.Parent = player
						Billboard.Parent = player.HumanoidRootPart
						Billboard.ExtentsOffset = Vector3.new(0, 2, 0)
						Billboard.Size = UDim2.new(0, 200, 0, 50)
						Billboard.AlwaysOnTop = true
						Billboard.LightInfluence = 0
						--			keyBillboard.MaxDistance = 50

						Name.Parent = Billboard
						Name.BackgroundTransparency = 1
						Name.TextScaled = true
						Name.Text = player.Name
						Name.TextColor3 = Color3.fromRGB(0, 170, 0)
						Name.Font = Enum.Font.Arial
						Name.Size = UDim2.new(1, 0, 1, 0)

						NameStroke.Parent = Name
						NameStroke.Thickness = 3						
					end
				end

		else

			for i, player in pairs(workspace.Map.Players:GetChildren()) do
				if player:FindFirstChild("Highlight") then
					if not player.Name == "Enemy" then
						player.Highlight:Destroy()						
					end
				end			
			end		
		end	
		if TrapsESP == true then
			for i, exit in pairs(workspace.Map[workspace.CurrentMap.Value].WinPath:GetChildren()) do -- Exits ESP
				if not exit:FindFirstChild("Highlight") then
					local Highlight = Instance.new("Highlight")
					local Billboard = Instance.new("BillboardGui")
					local Name = Instance.new("TextLabel")
					local NameStroke = Instance.new("UIStroke")

					Highlight.FillColor = Color3.fromRGB(0, 255, 255)
					Highlight.OutlineTransparency = 0.9
					Highlight.Parent = exit

					Billboard.Parent = exit
					Billboard.ExtentsOffset = Vector3.new(0, 0, 0)
					Billboard.Size = UDim2.new(0, 200, 0, 50)
					Billboard.AlwaysOnTop = true
					Billboard.LightInfluence = 0
					--			keyBillboard.MaxDistance = 50

					Name.Parent = Billboard
					Name.BackgroundTransparency = 1
					Name.TextScaled = true
					Name.Text = exit.Name
					Name.TextColor3 = Color3.fromRGB(0, 255, 255)
					Name.Font = Enum.Font.Arial
					Name.Size = UDim2.new(1, 0, 1, 0)

					NameStroke.Parent = Name
					NameStroke.Thickness = 3
				end
			end

		else

			for i, exit in pairs(workspace.Map[workspace.CurrentMap.Value].WinPath:GetChildren()) do
				if exit:FindFirstChild("Highlight") then
					exit.Highlight:Destroy()
					exit.Base.BillboardGui:Destroy()
				end
			end

		end
	end
end
