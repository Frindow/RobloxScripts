KeyESP = true
ToolESP = true
TrapsESP = true
EnemyESP = true
InteractsESP = false

map = Instance.new("StringValue")
map.Parent = workspace

while wait(1) do -- ESP Loop
	if workspace.Map:FindFirstChild("House") then
		map.Value = "House"
	elseif workspace.Map:FindFirstChild("HouseEz") then
		map.Value = "HouseEz"
	elseif workspace.Map:FindFirstChild("House 2") then
		map.Value = "House 2"
	elseif workspace.Map:FindFirstChild("House 2Ez") then
		map.Value = "House 2Ez"
	elseif workspace.Map:FindFirstChild("House 3") then
		map.Value = "House 3"
	elseif workspace.Map:FindFirstChild("House 3Ez") then
		map.Value = "House 3Ez"
	elseif workspace.Map:FindFirstChild("School") then
		map.Value = "School"
	elseif workspace.Map:FindFirstChild("Ski resort") then
		map.Value = "Ski resort"
	else
		map.Value = ""
	end
	if workspace.Map:FindFirstChild(map.Value) then
		if KeyESP == true then
			for i, key in pairs(workspace.Map[map.Value].Tools.Map:GetChildren()) do -- Key ESP
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

			for i, key in pairs(workspace.Map[map.Value].Tools.Map:GetChildren()) do
				if key:FindFirstChild("Highlight") then
					if key.Name:find("key") then
						key.Highlight:Destroy()
						key.Handle.BillboardGui:Destroy()
					end
				end
			end
		end
		if ToolESP == true then
			for i, tool in pairs(workspace.Map[map.Value].Tools.Map:GetChildren()) do -- Tool ESP
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

			for i, tool in pairs(workspace.Map[map.Value].Tools.Map:GetChildren()) do
				if tool:FindFirstChild("Highlight") then
					if not tool.Name:find("key") then
						tool.Highlight:Destroy()
						tool.Handle.BillboardGui:Destroy()
					end
				end
			end
		end
		if InteractsESP == true then
			for i, interact in pairs(workspace.Map[map.Value].Interacts:GetChildren()) do -- Interacts ESP
				if not interact:FindFirstChild("Highlight") then
					local Highlight = Instance.new("Highlight")

					Highlight.FillColor = Color3.fromRGB(255, 255, 255)
					Highlight.OutlineTransparency = 0.9
					Highlight.Parent = interact
				end
			end

		else

			for i, interact in pairs(workspace.Map[map.Value].Interacts:GetChildren()) do
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

			for i, trap in pairs(workspace.Map.Traps:GetChildren()) do -- Traps ESP
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

			if workspace.Map.Players:FindFirstChild("Enemy") then -- Enemy ESP
				if workspace.Map.Players.Enemy:FindFirstChild("Highlight") then
					workspace.Map.Players.Enemy.Highlight:Destroy()
				end			
			end		
		end		
	end
end
