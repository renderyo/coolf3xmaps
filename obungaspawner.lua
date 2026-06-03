local a=game:GetService("Players")
local b=game:GetService("Workspace")
local uis=game:GetService("UserInputService")
local d=a.LocalPlayer
local e=d.Character or d.CharacterAdded:Wait()
local hrp=e:WaitForChild("HumanoidRootPart",5)
if not hrp then return end

local f
local function ft()
	for _,v in ipairs(d:WaitForChild("Backpack",3):GetDescendants()) do if v.Name=="SyncAPI" then return v.Parent end end
	if d.Character then for _,v in ipairs(d.Character:GetDescendants()) do if v.Name=="SyncAPI" then return v.Parent end end end
	for _,v in ipairs(game.ReplicatedStorage:GetDescendants()) do if v.Name=="SyncAPI" then return v.Parent end end
	return nil
end
local g=0
while not f and g<20 do f=ft(); if not f then task.wait(0.25); g=g+1 end end
if not f then return end
local h=f:FindFirstChild("SyncAPI")
if not h then return end
local i=h:FindFirstChild("ServerEndpoint")
if not i then return end
local function j(...) return i:InvokeServer(...) end

local bots={}
local bParts={}
local npcC={}
local lastScan=0

local rp=RaycastParams.new()
rp.FilterType=Enum.RaycastFilterType.Blacklist
rp.IgnoreWater=true

local function upF()
	local t={e}
	for _,v in ipairs(bParts) do if v and v.Parent then table.insert(t,v) end end
	rp.FilterDescendantsInstances=t
end

local function tgt(pos,rg)
	local best=nil
	local bd=rg
	for _,pl in ipairs(a:GetPlayers()) do
		if pl.Character and pl.Character~=e then
			local hd=pl.Character:FindFirstChild("Head")
			if hd and hd.Parent then
				local dd=(hd.Position-pos).Magnitude
				if dd<bd then bd=dd; best=hd end
			end
		end
	end
	for _,obj in ipairs(npcC) do
		if obj and obj.Parent then
			local dd=(obj.Position-pos).Magnitude
			if dd<bd then bd=dd; best=obj end
		end
	end
	return best,bd
end

local function mk(spawnPos)
	upF()
	local ry=b:Raycast(Vector3.new(spawnPos.X,spawnPos.Y+50,spawnPos.Z),Vector3.new(0,-100,0),rp)
	local gy=spawnPos.Y
	if ry then gy=ry.Position.Y+8 end
	local sp=Vector3.new(spawnPos.X,gy,spawnPos.Z)
	local scf=CFrame.new(sp)
	local ok,bot=pcall(function() return j("CreatePart","Normal",scf,b) end)
	if not ok or not bot then return end

	pcall(j,"SyncResize",{{Part=bot,CFrame=scf,Size=Vector3.new(12,16,0.05)}})
	pcall(j,"SetName",{bot},"Nextbot")
	pcall(j,"SyncAnchor",{{Part=bot,Anchored=true}})
	pcall(j,"SyncCollision",{{Part=bot,CanCollide=false}})
	pcall(j,"SyncMaterial",{{Part=bot,Material=Enum.Material.SmoothPlastic,Transparency=1,Reflectance=0}})

	pcall(j,"CreateTextures",{{Part=bot,Face=Enum.NormalId.Front,TextureType="Decal"}})
	pcall(j,"SyncTexture",{{Part=bot,Face=Enum.NormalId.Front,TextureType="Decal",Texture="rbxassetid://119971615537864"}})
	pcall(j,"CreateTextures",{{Part=bot,Face=Enum.NormalId.Back,TextureType="Decal"}})
	pcall(j,"SyncTexture",{{Part=bot,Face=Enum.NormalId.Back,TextureType="Decal",Texture="rbxassetid://119971615537864"}})

	pcall(j,"CreateLights",{{Part=bot,LightType="PointLight"}})
	pcall(j,"SyncLighting",{{Part=bot,LightType="PointLight",Brightness=22,Range=30,Color=Color3.new(1,1,1),Shadows=false}})

	table.insert(bParts,bot)
	local bt={
		p=bot,x=sp.X,y=sp.Y,z=sp.Z,a=math.random()*math.pi*2,
		st="w",t=nil,wt=0,wc=2+math.random()*2,ws=10,cs=35,dt=80,kl=3.5
	}
	table.insert(bots,bt)
end

uis.InputBegan:Connect(function(k,gp)
	if gp then return end
	if k.KeyCode==Enum.KeyCode.Z then
		local sp=hrp.Position+hrp.CFrame.LookVector*5
		mk(sp)
	end
end)

while true do
	local dt=task.wait(0.03)
	local now=tick()

	if now-lastScan>0.5 then
		lastScan=now
		npcC={}
		for _,obj in ipairs(b:GetDescendants()) do
			if obj:IsA("Model") and obj~=e then
				local hum=obj:FindFirstChildOfClass("Humanoid")
				if hum then
					local hd=obj:FindFirstChild("Head")
					if hd then table.insert(npcC,hd) end
				end
			end
		end
	end

	upF()

	for i=#bots,1,-1 do
		local bt=bots[i]
		if not bt.p or not bt.p.Parent then
			if bt.p then pcall(j,"Remove",{bt.p}) end
			table.remove(bots,i)
			table.remove(bParts,i)
			continue
		end

		local bpos=Vector3.new(bt.x,bt.y,bt.z)
		local hasT=false
		if bt.t and bt.t.Parent then
			local dd=(bt.t.Position-bpos).Magnitude
			if dd<bt.dt+20 then hasT=true end
		end

		if not hasT then
			bt.t,td=tgt(bpos,bt.dt)
			if bt.t then bt.st="c" else bt.st="w" end
		end

		local np=bpos
		local nAng=bt.a

		if bt.st=="c" and bt.t then
			local tp=bt.t.Position
			local dx=tp.X-bt.x
			local dz=tp.Z-bt.z
			local dst=math.sqrt(dx*dx+dz*dz)
			if dst<bt.kl then
				pcall(j,"Remove",{bt.t})
				bt.t=nil
				bt.st="w"
			else
				local step=math.min(dst,bt.cs*dt)
				if dst>0 then
					np=Vector3.new(bt.x+dx/dst*step,bt.y,bt.z+dz/dst*step)
					nAng=math.atan2(dx,dz)+math.pi
				end
			end
		else
			bt.wt=bt.wt+dt
			if bt.wt>bt.wc then
				bt.wt=0
				bt.wc=2+math.random()*3
				bt.a=math.random()*math.pi*2
			end
			local step=bt.ws*dt
			np=Vector3.new(bt.x+math.cos(bt.a)*step,bt.y,bt.z+math.sin(bt.a)*step)
			nAng=bt.a
		end

		local ry=b:Raycast(Vector3.new(np.X,np.Y+12,np.Z),Vector3.new(0,-24,0),rp)
		if ry then np=Vector3.new(np.X,ry.Position.Y+8,np.Z) else np=Vector3.new(np.X,bt.y,np.Z) end

		bt.x=bt.x+(np.X-bt.x)*0.5
		bt.z=bt.z+(np.Z-bt.z)*0.5
		bt.y=np.Y

		local diff=(nAng-bt.a)%(math.pi*2)
		if diff>math.pi then diff=diff-math.pi*2 end
		bt.a=bt.a+diff*0.4

		local cf=CFrame.new(bt.x,bt.y,bt.z)*CFrame.Angles(0,bt.a,0)
		task.spawn(function() pcall(j,"SyncMove",{{Part=bt.p,CFrame=cf}}) end)
	end
end
