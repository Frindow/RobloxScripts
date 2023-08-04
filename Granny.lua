getgenv().Config = {
-------------------------------->> Configuration <<--------------------------------
	["Main"] = {
		["PlayerESP"] = true,
		["EnemyESP"] = true,
		["TrapESP"] = true,
		["ItemESP"] = true,
		["ExitESP"] = true,
		["KeyESP"] = true,
		["ItemCharacterESP"] = true,
		["InteractESP"] = false,
		["SwitchInteractESP"] = false,
		["WalkSpeed"] = false,
		["Speed"] = "70",
		["AntiFreeze"] = true,
		["AutoTpEscape"] = true,
		["AntiTrap"] = true,
		["ChangeFov"] = true,
		["Fov"] = "120"
	}
}

-------------------------------->> Code <<--------------------------------
----->> Do not edit below this line unless you know what you're doing <<-----

local function a()
	local function a()
		local function a()
			local a = {
				"House",
				"House easy",
				"House II",
				"House II easy",
				"Mansion",
				"Mansion easy",
				"School",
				"Ski resort"
			}
			for a, a in ipairs(a) do
				local b = workspace.Map:FindFirstChild(a)
				if b and b:IsA("Folder") then
					return a
				end
			end;
			return nil
		end;
		local b = a()
		while not b do
			task.wait()
			b = a()
		end;
		return b
	end;
	local a = a()
	local function b()
		local a, b, c;
		repeat
			a, b, c = math.random(), math.random(), math.random()
		until a + b + c > 1.5;
		return Color3.fromRGB(a * 255, b * 255, c * 255)
	end;
	local c = game.Players.LocalPlayer;
	local function d()
		local a = {
			"House",
			"House easy",
			"House II",
			"House II easy",
			"Mansion",
			"Mansion easy",
			"School",
			"Ski resort"
		}
		for a, a in ipairs(a) do
			local b = workspace.Map:FindFirstChild(a)
			if b and b:IsA("Folder") then
				return a
			end
		end;
		return nil
	end;
	local function e(a)
		local b = a:FindFirstChild("ExitGui")
		local c = a:FindFirstChild("ExitGui.Icon")
		if b or c then
			return a
		end;
		return nil
	end;
	local function f(a)
		if c.Character and c.Character:FindFirstChild("Humanoid") then
			c.Character:SetPrimaryPartCFrame(a)
		end
	end;
	local function c()
		local a = workspace.Map;
		local b = d()
		if b then
			local a = a[b] and a[b].WinPath;
			if a then
				local b = a.WinA;
				local a = a.WinB;
				local c;
				local d = {}
				if b then
					c = e(b)
					if c then
						table.insert(d, c.CFrame)
					end
				end;
				if a then
					c = e(a)
					if c then
						table.insert(d, c.CFrame)
					end
				end;
				if # d > 0 then
					for a, a in ipairs(d) do
						print("Escape: " .. tostring(c) .. " | CFrame: " .. tostring(a))
						f(a)
					end;
					return true
				end
			end
		end;
		return false
	end;
	if workspace.Map:FindFirstChild(a) then
		if getgenv().Config.Main.PlayerESP == true then
			for a, a in pairs(workspace.Map.Players:GetChildren()) do
				if not a:FindFirstChild("Highlight") and a.Name ~= "Enemy" then
					local b = Instance.new("Highlight")
					local c = Instance.new("BillboardGui")
					local d = Instance.new("TextLabel")
					local e = Instance.new("UIStroke")
					b.FillColor = Color3.fromRGB(39, 179, 20)
					b.OutlineTransparency = 0.9;
					b.Parent = a;
					c.Parent = a.HumanoidRootPart;
					c.ExtentsOffset = Vector3.new(0, 2, 0)
					c.Size = UDim2.new(0, 100, 0, 25)
					c.AlwaysOnTop = true;
					c.LightInfluence = 0;
					d.Parent = c;
					d.BackgroundTransparency = 1;
					d.TextScaled = true;
					d.Text = a.Name;
					d.TextColor3 = Color3.fromRGB(39, 179, 20)
					d.Font = Enum.Font.SourceSansBold;
					d.Size = UDim2.new(1, 0, 1, 0)
					d.TextSize = 25;
					e.Parent = d;
					e.Thickness = 3
				end
			end
		else
			for a, a in pairs(workspace.Map.Players:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					if a.Name ~= "Enemy" then
						a.Highlight:Destroy()
					end
				end
			end
		end;
		if getgenv().Config.Main.EnemyESP == true then
			if workspace.Map.Players:FindFirstChild("Enemy") then
				if not workspace.Map.Players.Enemy:FindFirstChild("Highlight") then
					local a = Instance.new("Highlight")
					local b = Instance.new("BillboardGui")
					local c = Instance.new("TextLabel")
					local d = Instance.new("UIStroke")
					a.FillColor = Color3.fromRGB(255, 0, 0)
					a.OutlineTransparency = 0.9;
					a.Parent = workspace.Map.Players.Enemy;
					b.Parent = workspace.Map.Players.Enemy.HumanoidRootPart;
					b.ExtentsOffset = Vector3.new(0, 2, 0)
					b.Size = UDim2.new(0, 100, 0, 25)
					b.AlwaysOnTop = true;
					b.LightInfluence = 0;
					c.Parent = b;
					c.BackgroundTransparency = 1;
					c.TextScaled = true;
					c.Text = workspace.Map.Players.Enemy.Name;
					c.TextColor3 = Color3.fromRGB(255, 0, 0)
					c.Font = Enum.Font.SourceSansBold;
					c.Size = UDim2.new(1, 0, 1, 0)
					c.TextSize = 25;
					d.Parent = c;
					d.Thickness = 3
				end
			end
		else
			if workspace.Map.Players:FindFirstChild("Enemy") then
				if workspace.Map.Players.Enemy:FindFirstChild("Highlight") then
					workspace.Map.Players.Enemy.Highlight:Destroy()
				end
			end
		end;
		if getgenv().Config.TrapESP == true then
			for a, a in pairs(workspace.Map.Traps:GetChildren()) do
				if not a:FindFirstChild("Highlight") then
					local b = Instance.new("Highlight")
					local c = Instance.new("BillboardGui")
					local d = Instance.new("TextLabel")
					local e = Instance.new("UIStroke")
					b.FillColor = Color3.fromRGB(255, 0, 0)
					b.OutlineTransparency = 0.9;
					b.Parent = a;
					c.Parent = a.Base;
					c.ExtentsOffset = Vector3.new(0, 2, 0)
					c.Size = UDim2.new(0, 100, 0, 25)
					c.AlwaysOnTop = true;
					c.LightInfluence = 0;
					d.Parent = c;
					d.BackgroundTransparency = 1;
					d.TextScaled = true;
					d.Text = a.Name;
					d.TextColor3 = Color3.fromRGB(255, 0, 0)
					d.Font = Enum.Font.SourceSansBold;
					d.Size = UDim2.new(1, 0, 1, 0)
					e.Parent = d;
					e.Thickness = 3
				end
			end
		else
			for a, a in pairs(workspace.Map.Traps:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
					a.Base.BillboardGui:Destroy()
				end
			end
		end;
		if getgenv().Config.Main.ItemESP == true then
			local function c(a)
				if not a.Name:find("key") then
					if not a:FindFirstChild("Highlight") then
						local c = Instance.new("Highlight")
						local d = Instance.new("BillboardGui")
						local e = Instance.new("TextLabel")
						local f = Instance.new("UIStroke")
						local b = b()
						c.FillColor = b;
						c.OutlineTransparency = 0.9;
						c.Parent = a;
						d.Parent = a.Handle;
						d.ExtentsOffset = Vector3.new(0, 2, 0)
						d.Size = UDim2.new(0, 100, 0, 25)
						d.AlwaysOnTop = true;
						d.LightInfluence = 0;
						e.Parent = d;
						e.BackgroundTransparency = 1;
						e.TextScaled = true;
						e.Text = a.Name;
						e.TextColor3 = b;
						e.Font = Enum.Font.SourceSansBold;
						e.Size = UDim2.new(1, 0, 1, 0)
						f.Parent = e;
						f.Thickness = 3
					end
				end
			end;
			game.Players.LocalPlayer.CharacterAdded:Connect(function(b)
				for a, a in ipairs(workspace.Map[a].Tools.Character:GetChildren()) do
					c(a)
				end
			end)
			game.Players.LocalPlayer.CharacterRemoving:Connect(function(b)
				for a, a in ipairs(workspace.Map[a].Tools.Character:GetChildren()) do
					if a:FindFirstChild("Highlight") then
						a.Highlight:Destroy()
						a.Handle.BillboardGui:Destroy()
					end
				end
			end)
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				c(a)
			end
		else
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					if not a.Name:find("key") then
						a.Highlight:Destroy()
						a.Handle.BillboardGui:Destroy()
					end
				end
			end
		end;
		if getgenv().Config.Main.ExitESP == true then
			for a, a in pairs(workspace.Map[a].WinPath:GetChildren()) do
				if not a:FindFirstChild("Highlight") then
					local b = Instance.new("Highlight")
					local c = Instance.new("BillboardGui")
					local d = Instance.new("TextLabel")
					local e = Instance.new("UIStroke")
					b.FillColor = Color3.fromRGB(0, 4, 255)
					b.OutlineTransparency = 0.9;
					b.Parent = a;
					c.Parent = a;
					c.ExtentsOffset = Vector3.new(0, 0, 0)
					c.Size = UDim2.new(0, 100, 0, 35)
					c.AlwaysOnTop = true;
					c.LightInfluence = 0;
					d.Parent = c;
					d.BackgroundTransparency = 1;
					d.TextScaled = true;
					d.Text = a.Name;
					d.TextColor3 = Color3.fromRGB(0, 4, 255)
					d.Font = Enum.Font.SourceSansBold;
					d.Size = UDim2.new(1, 0, 1, 0)
					d.TextSize = 25;
					e.Parent = d;
					e.Thickness = 3
				end
			end
		else
			for a, a in pairs(workspace.Map[a].WinPath:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
					a.Base.BillboardGui:Destroy()
				end
			end
		end;
		if getgenv().Config.Main.KeyESP == true then
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				if a.Name:find("key") then
					if not a:FindFirstChild("Highlight") then
						local c = Instance.new("Highlight")
						local d = Instance.new("BillboardGui")
						local e = Instance.new("TextLabel")
						local f = Instance.new("UIStroke")
						local b = b()
						c.FillColor = b;
						c.OutlineTransparency = 0.9;
						c.Parent = a;
						d.Parent = a.Handle;
						d.ExtentsOffset = Vector3.new(0, 2, 0)
						d.Size = UDim2.new(0, 100, 0, 25)
						d.AlwaysOnTop = true;
						d.LightInfluence = 0;
						e.Parent = d;
						e.BackgroundTransparency = 1;
						e.TextScaled = true;
						e.Text = a.Name;
						e.TextColor3 = b;
						e.Font = Enum.Font.SourceSansBold;
						e.Size = UDim2.new(1, 0, 1, 0)
						f.Parent = e;
						f.Thickness = 3
					end
				end
			end
		else
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					if a.Name:find("key") then
						a.Highlight:Destroy()
						a.Handle.BillboardGui:Destroy()
					end
				end
			end
		end;
		if getgenv().Config.Main.ItemCharacterESP == true then
			for a, a in pairs(workspace.Map[a].Tools.Character:GetChildren()) do
				if not a.Name:find("key") then
					if not a:FindFirstChild("Highlight") then
						local c = Instance.new("Highlight")
						local d = Instance.new("BillboardGui")
						local e = Instance.new("TextLabel")
						local f = Instance.new("UIStroke")
						local b = b()
						c.FillColor = b;
						c.OutlineTransparency = 0.9;
						c.Parent = a;
						d.Parent = a.Handle;
						d.ExtentsOffset = Vector3.new(0, 2, 0)
						d.Size = UDim2.new(0, 100, 0, 25)
						d.AlwaysOnTop = true;
						d.LightInfluence = 0;
						e.Parent = d;
						e.BackgroundTransparency = 1;
						e.TextScaled = true;
						e.Text = a.Name;
						e.TextColor3 = b;
						e.Font = Enum.Font.SourceSansBold;
						e.Size = UDim2.new(1, 0, 1, 0)
						f.Parent = e;
						f.Thickness = 3
					end
				end
			end
		else
			for a, a in pairs(workspace.Map[a].Tools.Character:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					if not a.Name:find("key") then
						a.Highlight:Destroy()
						a.Handle.BillboardGui:Destroy()
					end
				end
			end
		end;
		if getgenv().Config.Main.InteractESP == true then
			for a, a in pairs(workspace.Map[a].Interacts:GetChildren()) do
				if not a:FindFirstChild("Highlight") then
					local b = Instance.new("Highlight")
					b.FillColor = Color3.fromRGB(124, 124, 124)
					b.OutlineTransparency = 0.9;
					b.Parent = a
				end
			end
		else
			for a, a in pairs(workspace.Map[a].Interacts:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
				end
			end
		end;
		if getgenv().Config.Main.SwitchInteractESP == true then
			for a, a in pairs(workspace.Map[a].SwitchInteracts:GetChildren()) do
				if not a:FindFirstChild("Highlight") then
					local c = Instance.new("Highlight")
					local b = b()
					c.FillColor = Color3.fromRGB(90, 90, 90)
					c.OutlineTransparency = 0.9;
					c.Parent = a
				end
			end
		else
			for a, a in pairs(workspace.Map[a].SwitchInteracts:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
				end
			end
		end
	end;
	local function d()
		if getgenv().Config.Main.AutoTpEscape == true then
			c()
		end
	end;
	local function c()
		if getgenv().Config.Main.WalkSpeed == true then
			while getgenv().Config.Main.WalkSpeed == true and wait(1) do
				local a = true;
				local b = game:GetService("Players").LocalPlayer;
				local c = {
					"Kick",
					"KickAsync"
				}
				local d = getrawmetatable(game)
				setreadonly(d, false)
				local e = d.__namecall;
				d.__namecall = newcclosure(function(d, ...)
					local f = getnamecallmethod()
					if d == b and table.find(c, f) and a then
						return
					end;
					return e(d, ...)
				end)
				setreadonly(d, true)
				wait(1)
				if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= getgenv().Config.Main.Speed then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Config.Main.Speed
				end;
				if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 9 then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Config.Main.Speed
				end
			end
		end
	end;
	local function e()
		if getgenv().Config.Main.AntiFreeze == true then
			for a, a in ipairs(workspace:GetDescendants()) do
				if a:FindFirstChild("Humanoid") then
					if a:FindFirstChild("IsEnemy") then
						if a:FindFirstChild("knock") then
							if a == game.Players.LocalPlayer.Character then
								game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 7;
								game.Players.LocalPlayer.Character.knock:Destroy()
							end
						end
					end
				end
			end
		end
	end;
	local function f()
		if getgenv().Config.Main.AntiTrap == true then
			local a = game.Players.LocalPlayer;
			local a = a.Character or a.CharacterAdded:Wait()
			if a:WaitForChild('Humanoid').WalkSpeed == 0 then
				a:WaitForChild('Humanoid').WalkSpeed = 9
			end;
			game.ReplicatedStorage.Events.EscapeTrap:FireServer()
			for a, a in ipairs(workspace:GetDescendants()) do
				if a:FindFirstChild("Humanoid") then
					if not a:FindFirstChild("IsEnemy") then
						if a == game.Players.LocalPlayer.Character then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 9;
							if a:FindFirstChild("Captured") then
								a.Captured:Destroy()
								game:GetService("ReplicatedStorage").Events.EscapeTrap:FireServer()
							end
						end
					end
				end
			end
		end
	end;
	local function g()
		if getgenv().Config.Main.ChangeFov == true then
			local a = game.Workspace.CurrentCamera;
			local b = a.FieldOfView;
			local c = tonumber(getgenv().Config.Main.Fov)
			local d = 10;
			while b ~= c do
				b = math.abs(b - c) < d and c or b - (b - c) / d;
				a.FieldOfView = b;
				task.wait()
			end
		else
			local a = game.Workspace.CurrentCamera;
			a.FieldOfView = 120
		end
	end;
	local function h()
		if getgenv().Config.Main.PlayerESP == true then
			for a, a in ipairs(game.Players:GetPlayers()) do
				local b = a.Character;
				if b and b:FindFirstChild("HumanoidRootPart") and not b:FindFirstChild("Highlight") then
					local c = Instance.new("Highlight")
					local d = Instance.new("BillboardGui")
					local e = Instance.new("TextLabel")
					local f = Instance.new("UIStroke")
					c.FillColor = Color3.fromRGB(39, 179, 20)
					c.OutlineTransparency = 0.9;
					c.Parent = b;
					d.Parent = b.HumanoidRootPart;
					d.ExtentsOffset = Vector3.new(0, 2, 0)
					d.Size = UDim2.new(0, 100, 0, 25)
					d.AlwaysOnTop = true;
					d.LightInfluence = 0;
					e.Parent = d;
					e.BackgroundTransparency = 1;
					e.TextScaled = true;
					e.Text = a.Name;
					e.TextColor3 = Color3.fromRGB(39, 179, 20)
					e.Font = Enum.Font.SourceSansBold;
					e.Size = UDim2.new(1, 0, 1, 0)
					e.TextSize = 25;
					f.Parent = e;
					f.Thickness = 3
				end
			end
		else
			for a, a in ipairs(game.Players:GetPlayers()) do
				local a = a.Character;
				if a and a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
				end
			end
		end
	end;
	local function i()
		if getgenv().Config.Main.EnemyESP == true then
			if workspace.Map.Players:FindFirstChild("Enemy") then
				if not workspace.Map.Players.Enemy:FindFirstChild("Highlight") then
					local a = Instance.new("Highlight")
					local b = Instance.new("BillboardGui")
					local c = Instance.new("TextLabel")
					local d = Instance.new("UIStroke")
					a.FillColor = Color3.fromRGB(255, 0, 0)
					a.OutlineTransparency = 0.9;
					a.Parent = workspace.Map.Players.Enemy;
					b.Parent = workspace.Map.Players.Enemy.HumanoidRootPart;
					b.ExtentsOffset = Vector3.new(0, 2, 0)
					b.Size = UDim2.new(0, 100, 0, 25)
					b.AlwaysOnTop = true;
					b.LightInfluence = 0;
					c.Parent = b;
					c.BackgroundTransparency = 1;
					c.TextScaled = true;
					c.Text = workspace.Map.Players.Enemy.Name;
					c.TextColor3 = Color3.fromRGB(255, 0, 0)
					c.Font = Enum.Font.SourceSansBold;
					c.Size = UDim2.new(1, 0, 1, 0)
					c.TextSize = 25;
					d.Parent = c;
					d.Thickness = 3
				end
			end
		else
			if workspace.Map.Players:FindFirstChild("Enemy") then
				if workspace.Map.Players.Enemy:FindFirstChild("Highlight") then
					workspace.Map.Players.Enemy.Highlight:Destroy()
				end
			end
		end
	end;
	local function j(a)
		if not a:FindFirstChild("Highlight") then
			local b = Instance.new("Highlight")
			local c = Instance.new("BillboardGui")
			local d = Instance.new("TextLabel")
			local e = Instance.new("UIStroke")
			local f = getRandomColor()
			b.FillColor = f;
			b.OutlineTransparency = 0.9;
			b.Parent = a;
			c.Parent = a.Handle;
			c.ExtentsOffset = Vector3.new(0, 2, 0)
			c.Size = UDim2.new(0, 100, 0, 25)
			c.AlwaysOnTop = true;
			c.LightInfluence = 0;
			d.Parent = c;
			d.BackgroundTransparency = 1;
			d.TextScaled = true;
			d.Text = a.Name;
			d.TextColor3 = f;
			d.Font = Enum.Font.SourceSansBold;
			d.Size = UDim2.new(1, 0, 1, 0)
			d.TextSize = 25;
			e.Parent = d;
			e.Thickness = 3
		end
	end;
	local function j()
		if getgenv().Config.Main.TrapESP == true then
			for a, a in pairs(workspace.Map.Traps:GetChildren()) do
				if not a:FindFirstChild("Highlight") then
					local b = Instance.new("Highlight")
					local c = Instance.new("BillboardGui")
					local d = Instance.new("TextLabel")
					local e = Instance.new("UIStroke")
					b.FillColor = Color3.fromRGB(255, 0, 0)
					b.OutlineTransparency = 0.9;
					b.Parent = a;
					c.Parent = a.Base;
					c.ExtentsOffset = Vector3.new(0, 2, 0)
					c.Size = UDim2.new(0, 100, 0, 25)
					c.AlwaysOnTop = true;
					c.LightInfluence = 0;
					d.Parent = c;
					d.BackgroundTransparency = 1;
					d.TextScaled = true;
					d.Text = a.Name;
					d.TextColor3 = Color3.fromRGB(255, 0, 0)
					d.Font = Enum.Font.SourceSansBold;
					d.Size = UDim2.new(1, 0, 1, 0)
					e.Parent = d;
					e.Thickness = 3
				end
			end
		else
			for a, a in pairs(workspace.Map.Traps:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
					a.Base.BillboardGui:Destroy()
				end
			end
		end
	end;
	local function k()
		if getgenv().Config.Main.ItemESP == true then
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				if not a.Name:find("key") then
					if not a:FindFirstChild("Highlight") then
						local c = Instance.new("Highlight")
						local d = Instance.new("BillboardGui")
						local e = Instance.new("TextLabel")
						local f = Instance.new("UIStroke")
						local b = b()
						c.FillColor = b;
						c.OutlineTransparency = 0.9;
						c.Parent = a;
						d.Parent = a.Handle;
						d.ExtentsOffset = Vector3.new(0, 2, 0)
						d.Size = UDim2.new(0, 100, 0, 25)
						d.AlwaysOnTop = true;
						d.LightInfluence = 0;
						e.Parent = d;
						e.BackgroundTransparency = 1;
						e.TextScaled = true;
						e.Text = a.Name;
						e.TextColor3 = b;
						e.Font = Enum.Font.SourceSansBold;
						e.Size = UDim2.new(1, 0, 1, 0)
						f.Parent = e;
						f.Thickness = 3
					end
				end
			end;
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				j(a)
			end
		else
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					if not a.Name:find("key") then
						a.Highlight:Destroy()
						a.Handle.BillboardGui:Destroy()
					end
				end
			end
		end
	end;
	local function l()
		if getgenv().Config.Main.ExitESP == true then
			for a, a in pairs(workspace.Map[a].WinPath:GetChildren()) do
				if not a:FindFirstChild("Highlight") then
					local b = Instance.new("Highlight")
					local c = Instance.new("BillboardGui")
					local d = Instance.new("TextLabel")
					local e = Instance.new("UIStroke")
					b.FillColor = Color3.fromRGB(0, 4, 255)
					b.OutlineTransparency = 0.9;
					b.Parent = a;
					c.Parent = a;
					c.ExtentsOffset = Vector3.new(0, 0, 0)
					c.Size = UDim2.new(0, 100, 0, 35)
					c.AlwaysOnTop = true;
					c.LightInfluence = 0;
					d.Parent = c;
					d.BackgroundTransparency = 1;
					d.TextScaled = true;
					d.Text = a.Name;
					d.TextColor3 = Color3.fromRGB(0, 4, 255)
					d.Font = Enum.Font.SourceSansBold;
					d.Size = UDim2.new(1, 0, 1, 0)
					d.TextSize = 25;
					e.Parent = d;
					e.Thickness = 3
				end
			end
		else
			for a, a in pairs(workspace.Map[a].WinPath:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
					a.Base.BillboardGui:Destroy()
				end
			end
		end
	end;
	local function m()
		if getgenv().Config.Main.KeyESP == true then
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				if a.Name:find("key") then
					if not a:FindFirstChild("Highlight") then
						local c = Instance.new("Highlight")
						local d = Instance.new("BillboardGui")
						local e = Instance.new("TextLabel")
						local f = Instance.new("UIStroke")
						local b = b()
						c.FillColor = b;
						c.OutlineTransparency = 0.9;
						c.Parent = a;
						d.Parent = a.Handle;
						d.ExtentsOffset = Vector3.new(0, 2, 0)
						d.Size = UDim2.new(0, 100, 0, 25)
						d.AlwaysOnTop = true;
						d.LightInfluence = 0;
						e.Parent = d;
						e.BackgroundTransparency = 1;
						e.TextScaled = true;
						e.Text = a.Name;
						e.TextColor3 = b;
						e.Font = Enum.Font.SourceSansBold;
						e.Size = UDim2.new(1, 0, 1, 0)
						f.Parent = e;
						f.Thickness = 3
					end
				end
			end
		else
			for a, a in pairs(workspace.Map[a].Tools.Map:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					if a.Name:find("key") then
						a.Highlight:Destroy()
						a.Handle.BillboardGui:Destroy()
					end
				end
			end
		end
	end;
	local function n()
		if getgenv().Config.Main.ItemCharacterESP == true then
			for a, a in pairs(workspace.Map[a].Tools.Character:GetChildren()) do
				if not a.Name:find("key") then
					if not a:FindFirstChild("Highlight") then
						local c = Instance.new("Highlight")
						local d = Instance.new("BillboardGui")
						local e = Instance.new("TextLabel")
						local f = Instance.new("UIStroke")
						local b = b()
						c.FillColor = b;
						c.OutlineTransparency = 0.9;
						c.Parent = a;
						d.Parent = a.Handle;
						d.ExtentsOffset = Vector3.new(0, 2, 0)
						d.Size = UDim2.new(0, 100, 0, 25)
						d.AlwaysOnTop = true;
						d.LightInfluence = 0;
						e.Parent = d;
						e.BackgroundTransparency = 1;
						e.TextScaled = true;
						e.Text = a.Name;
						e.TextColor3 = b;
						e.Font = Enum.Font.SourceSansBold;
						e.Size = UDim2.new(1, 0, 1, 0)
						f.Parent = e;
						f.Thickness = 3
					end
				end
			end
		else
			for a, a in pairs(workspace.Map[a].Tools.Character:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					if not a.Name:find("key") then
						a.Highlight:Destroy()
						a.Handle.BillboardGui:Destroy()
					end
				end
			end
		end
	end;
	local function o()
		if getgenv().Config.Main.InteractESP == true then
			for a, a in pairs(workspace.Map[a].Interacts:GetChildren()) do
				if not a:FindFirstChild("Highlight") then
					local b = Instance.new("Highlight")
					b.FillColor = Color3.fromRGB(124, 124, 124)
					b.OutlineTransparency = 0.9;
					b.Parent = a
				end
			end
		else
			for a, a in pairs(workspace.Map[a].Interacts:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
				end
			end
		end
	end;
	local function p()
		if getgenv().Config.Main.SwitchInteractESP == true then
			for a, a in pairs(workspace.Map[a].SwitchInteracts:GetChildren()) do
				if not a:FindFirstChild("Highlight") then
					local c = Instance.new("Highlight")
					local b = b()
					c.FillColor = Color3.fromRGB(90, 90, 90)
					c.OutlineTransparency = 0.9;
					c.Parent = a
				end
			end
		else
			for a, a in pairs(workspace.Map[a].SwitchInteracts:GetChildren()) do
				if a:FindFirstChild("Highlight") then
					a.Highlight:Destroy()
				end
			end
		end
	end;
	while task.wait() do
		h()
		i()
		j()
		k()
		l()
		m()
		n()
		o()
		p()
		c()
		f()
		e()
		g()
		d()
	end
end;
if game.PlaceId == 6000468131 then
	a()
end
