---------------------------->> Customization <<----------------------------

ExtendProjectory = true
HitPositionVisible = true
ShowCollisions = false
Theme = "Institutional white" --[[
Try "Bright red" for a red / black table, default is ""=Institutional white" 
All themes: https://robloxapi.github.io/ref/type/BrickColor.html
--]]

-------------------------------->> Code <<--------------------------------
----->> Do not edit below this line unless you know what you're doing <<-----

workspace.Tables.Table1.Table.BrickColor = BrickColor.new(Theme)
workspace.Tables.Table1.Guides.HitPosition.Mesh.Scale = Vector3.new(0.5, 0, 0.5)

highlight = Instance.new("Highlight")
highlight.FillTransparency = 0
highlight.Parent = workspace.Tables.Table1.Guides.HitPosition
highlight.Enabled = false

if ShowCollisions == true then

	for i, collision in pairs(workspace.Tables.Table1.Collision:GetDescendants()) do
		if collision:IsA("BasePart") then
			collision.Transparency = 0
		end
	end
	
else
	
	for i, collision in pairs(workspace.Tables.Table1.Collision:GetDescendants()) do
		if collision:IsA("BasePart") then
			collision.Transparency = 1
		end
	end
end

if ExtendProjectory == true then
	
	workspace.Tables.Table1.Guides.HitTrajectory.Mesh.Scale = Vector3.new(0.5, 0, 12)
	workspace.Tables.Table1.Guides.HitTrajectory.Mesh.Offset = Vector3.new(0, 0.12, -6)
	
else
	
	workspace.Tables.Table1.Guides.HitTrajectory.mesh.Scale = Vector3.new(0.5, 0, 1)
	workspace.Tables.Table1.Guides.HitTrajectory.Mesh.Offset = Vector3.new(0, 0.12, -0.4)
	
end

if HitPositionVisible == true then
	
	workspace.Tables.Table1.Guides.HitPosition.Transparency = 0
	highlight.Enabled = true
	
else
	
	workspace.Tables.Table1.Guides.HitPosition.Transparency = 1
	highlight.Enabled = false
	
end