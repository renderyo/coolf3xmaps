local a=game:GetService("ReplicatedStorage")local b=game:GetService("RunService")local c=game.Players.LocalPlayer local d=c.Character or c.CharacterAdded:Wait()local e for _,v in c:GetDescendants()do if v.Name=="SyncAPI"then e=v.Parent end end for _,v in a:GetDescendants()do if v.Name=="SyncAPI"then e=v.Parent end end local f=e.SyncAPI.ServerEndpoint local function g(h)f:InvokeServer(unpack(h))end local function fire(h)task.spawn(function()pcall(g,h)end)end local function hd(cmd)task.spawn(function()pcall(function()a:WaitForChild("HDAdminHDClient",5).Signals.RequestCommandSilent:InvokeServer(cmd)end)end)end

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local tool = nil
local function getTool()
	if tool then return tool end
	local found = player.Backpack:FindFirstChild("Building Tools") or char:FindFirstChild("Building Tools")
	if not found then
		for _, v in pairs(player:GetDescendants()) do
			if v.Name == "SyncAPI" then found = v.Parent break end
		end
	end
	tool = found
	return found
end
local function getRemote()
	local t = getTool()
	return t and t:FindFirstChild("SyncAPI") and t.SyncAPI:FindFirstChild("ServerEndpoint")
end
local endpoint = getRemote()
if not endpoint then return end
local function fastInvoke(args)
	task.spawn(function()
		pcall(function()
			endpoint:InvokeServer(unpack(args))
		end)
	end)
end

local function makeSky()
	local hrp = char:WaitForChild("HumanoidRootPart")
	local pos = hrp.Position + Vector3.new(0, 10, 0)
	task.spawn(function()
		local p = endpoint:InvokeServer("CreatePart", "Normal", CFrame.new(pos), workspace)
		if not p then return end
		fastInvoke({"SyncResize", {{Part = p, CFrame = CFrame.new(pos), Size = Vector3.new(5,5,5)}}})
		fastInvoke({"SyncAnchor", {{Part = p, Anchored = true}}})
		fastInvoke({"SyncCollision", {{Part = p, CanCollide = false}}})
		fastInvoke({"SyncMaterial", {{Part = p, Transparency = 0, Material=Enum.Material.SmoothPlastic, Reflectance=0}}})
		fastInvoke({"SetLocked", {p}, true})
		fastInvoke({"CreateMeshes", {{Part = p}}})
		fastInvoke({"SyncMesh", {{
			Part = p,
			MeshType = Enum.MeshType.FileMesh,
			MeshId = "rbxassetid://111891702759441",
			TextureId = "rbxassetid://4681346638",
			Scale = Vector3.new(100000, 100000, 100000),
			VertexColor = Vector3.new(0, 0, 0)
		}}})
		fastInvoke({"CreateLights", {
			{Part = p, LightType = "PointLight"},
			{Part = p, LightType = "SpotLight"},
			{Part = p, LightType = "SurfaceLight"}
		}})
		local c = Color3.new(1, 1, 1)
		fastInvoke({"SyncLighting", {
			{Part = p, LightType = "PointLight", Brightness = 80, Range = 2000, Color = c, Shadows = true},
			{Part = p, LightType = "SpotLight", Brightness = 100, Range = 2500, Color = c, Angle = 180, Shadows = true},
			{Part = p, LightType = "SurfaceLight", Brightness = 60, Range = 1500, Color = c, Shadows = false}
		}})
		local sky = p
		hd(";music 130351568910729")
		task.wait(0.2)
		hd(";pitch 0.1")
		task.wait(0.2)
		hd(";volume inf")
		for i=1,30 do local t=i/30 fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(t*4,t*4,t*4)}}})task.wait(0.12)end
		fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(4,4,4)}}})
		task.wait(2)
		for i=1,20 do local t=1-(i/20)local s=100000*t local sc=math.max(s,0.001)local vt=4*t fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["Scale"]=Vector3.new(sc,sc,sc),["VertexColor"]=Vector3.new(vt,vt,vt)}}})task.wait(0.08)end
		fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["Scale"]=Vector3.new(0.001,0.001,0.001),["VertexColor"]=Vector3.new(0,0,0)}}})
		task.wait(0.1)
		fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["TextureId"]="rbxassetid://10961745239"}}})
		task.wait(0.1)
		for i=1,12 do local t=i/12 local s=100000*t fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["Scale"]=Vector3.new(s,s,s),["VertexColor"]=Vector3.new(t*4,t*4,t*4)}}})task.wait(0.05)end
		fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["Scale"]=Vector3.new(100000,100000,100000),["VertexColor"]=Vector3.new(4,4,4)}}})
		task.spawn(function()while sky and sky.Parent do local r=math.random()if r<0.3 then fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(40,40,40)}}})task.wait(0.03+math.random()*0.05)fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(4,4,4)}}})task.wait(0.02)elseif r<0.5 then fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(40,40,40)}}})task.wait(0.01)fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(4,4,4)}}})task.wait(0.01)fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(40,40,40)}}})task.wait(0.02)fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(4,4,4)}}})task.wait(0.05)else task.wait(0.1+math.random()*0.4)end end end)
	end)
end

local function trigger()
	task.spawn(function()
		local HD = ReplicatedStorage:FindFirstChild("HDAdminHDClient")
		if HD then
			local signal = HD.Signals:FindFirstChild("RequestCommandSilent")
			if signal then signal:InvokeServer(";fogcolor black") end
		end
	end)
	makeSky()
end

script.Parent.MouseButton1Click:Connect(trigger)local a=game:GetService("ReplicatedStorage")local b=game:GetService("RunService")local c=game.Players.LocalPlayer local d=c.Character or c.CharacterAdded:Wait()local e for _,v in c:GetDescendants()do if v.Name=="SyncAPI"then e=v.Parent end end for _,v in a:GetDescendants()do if v.Name=="SyncAPI"then e=v.Parent end end local f=e.SyncAPI.ServerEndpoint local function g(h)f:InvokeServer(unpack(h))end local function fire(h)task.spawn(function()pcall(g,h)end)end local function hd(cmd)task.spawn(function()pcall(function()a:WaitForChild("HDAdminHDClient",5).Signals.RequestCommandSilent:InvokeServer(cmd)end)end)end

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local tool = nil
local function getTool()
	if tool then return tool end
	local found = player.Backpack:FindFirstChild("Building Tools") or char:FindFirstChild("Building Tools")
	if not found then
		for _, v in pairs(player:GetDescendants()) do
			if v.Name == "SyncAPI" then found = v.Parent break end
		end
	end
	tool = found
	return found
end
local function getRemote()
	local t = getTool()
	return t and t:FindFirstChild("SyncAPI") and t.SyncAPI:FindFirstChild("ServerEndpoint")
end
local endpoint = getRemote()
if not endpoint then return end
local function fastInvoke(args)
	task.spawn(function()
		pcall(function()
			endpoint:InvokeServer(unpack(args))
		end)
	end)
end

local function makeSky()
	local hrp = char:WaitForChild("HumanoidRootPart")
	local pos = hrp.Position + Vector3.new(0, 10, 0)
	task.spawn(function()
		local p = endpoint:InvokeServer("CreatePart", "Normal", CFrame.new(pos), workspace)
		if not p then return end
		fastInvoke({"SyncResize", {{Part = p, CFrame = CFrame.new(pos), Size = Vector3.new(5,5,5)}}})
		fastInvoke({"SyncAnchor", {{Part = p, Anchored = true}}})
		fastInvoke({"SyncCollision", {{Part = p, CanCollide = false}}})
		fastInvoke({"SyncMaterial", {{Part = p, Transparency = 0, Material=Enum.Material.SmoothPlastic, Reflectance=0}}})
		fastInvoke({"SetLocked", {p}, true})
		fastInvoke({"CreateMeshes", {{Part = p}}})
		fastInvoke({"SyncMesh", {{
			Part = p,
			MeshType = Enum.MeshType.FileMesh,
			MeshId = "rbxassetid://111891702759441",
			TextureId = "rbxassetid://4681346638",
			Scale = Vector3.new(100000, 100000, 100000),
			VertexColor = Vector3.new(0, 0, 0)
		}}})
		fastInvoke({"CreateLights", {
			{Part = p, LightType = "PointLight"},
			{Part = p, LightType = "SpotLight"},
			{Part = p, LightType = "SurfaceLight"}
		}})
		local c = Color3.new(1, 1, 1)
		fastInvoke({"SyncLighting", {
			{Part = p, LightType = "PointLight", Brightness = 80, Range = 2000, Color = c, Shadows = true},
			{Part = p, LightType = "SpotLight", Brightness = 100, Range = 2500, Color = c, Angle = 180, Shadows = true},
			{Part = p, LightType = "SurfaceLight", Brightness = 60, Range = 1500, Color = c, Shadows = false}
		}})
		local sky = p
		hd(";music 130351568910729")
		task.wait(0.2)
		hd(";pitch 0.1")
		task.wait(0.2)
		hd(";volume inf")
		for i=1,30 do local t=i/30 fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(t*4,t*4,t*4)}}})task.wait(0.12)end
		fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(4,4,4)}}})
		task.wait(2)
		for i=1,20 do local t=1-(i/20)local s=100000*t local sc=math.max(s,0.001)local vt=4*t fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["Scale"]=Vector3.new(sc,sc,sc),["VertexColor"]=Vector3.new(vt,vt,vt)}}})task.wait(0.08)end
		fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["Scale"]=Vector3.new(0.001,0.001,0.001),["VertexColor"]=Vector3.new(0,0,0)}}})
		task.wait(0.1)
		fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["TextureId"]="rbxassetid://10961745239"}}})
		task.wait(0.1)
		for i=1,12 do local t=i/12 local s=100000*t fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["Scale"]=Vector3.new(s,s,s),["VertexColor"]=Vector3.new(t*4,t*4,t*4)}}})task.wait(0.05)end
		fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["Scale"]=Vector3.new(100000,100000,100000),["VertexColor"]=Vector3.new(4,4,4)}}})
		task.spawn(function()while sky and sky.Parent do local r=math.random()if r<0.3 then fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(40,40,40)}}})task.wait(0.03+math.random()*0.05)fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(4,4,4)}}})task.wait(0.02)elseif r<0.5 then fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(40,40,40)}}})task.wait(0.01)fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(4,4,4)}}})task.wait(0.01)fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(40,40,40)}}})task.wait(0.02)fire({[1]="SyncMesh",[2]={[1]={["Part"]=sky,["VertexColor"]=Vector3.new(4,4,4)}}})task.wait(0.05)else task.wait(0.1+math.random()*0.4)end end end)
	end)
end

local function trigger()
	task.spawn(function()
		local HD = ReplicatedStorage:FindFirstChild("HDAdminHDClient")
		if HD then
			local signal = HD.Signals:FindFirstChild("RequestCommandSilent")
			if signal then signal:InvokeServer(";fogcolor black") end
		end
	end)
	makeSky()
end

script.Parent.MouseButton1Click:Connect(trigger)
