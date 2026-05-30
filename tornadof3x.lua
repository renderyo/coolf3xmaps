-- // BY RENDERY0 \\
-- this script was made exclusively by rendery0, please do not steal or skid it, or delete these credit comments.

local rs=game:GetService("RunService")
local plrs=game:GetService("Players")
local plr=plrs.LocalPlayer
local char=plr.Character or plr.CharacterAdded:Wait()
local tool
for _,v in plr:GetDescendants() do
	if v.Name=="SyncAPI" then tool=v.Parent end
end
for _,v in game.ReplicatedStorage:GetDescendants() do
	if v.Name=="SyncAPI" then tool=v.Parent end
end
local remote=tool.SyncAPI.ServerEndpoint
local function g(a) remote:InvokeServer(unpack(a)) end
local function fire(a) task.spawn(function() pcall(g,a) end) end

local SUCK_R=65
local KILL_R=7
local SPD=13
local SPIN=5.5
local FORCE=44
local LERP=0.045
local NET_HZ=1/28
local SCAN_HZ=1/9
local MV_HZ=1/22
local HOVER=13
local CHASE_CHANCE=0.35
local CHASE_TIME_MIN=4
local CHASE_TIME_MAX=10
local WANDER_ANGLE_RANGE=0.7
local WANDER_TIME_MIN=1.5
local WANDER_TIME_MAX=4
local dead={}

local hrp=char:WaitForChild("HumanoidRootPart")
local spawnX=hrp.Position.X+math.random(-28,28)
local spawnZ=hrp.Position.Z+math.random(-28,28)
local rp=RaycastParams.new()
rp.FilterType=Enum.RaycastFilterType.Exclude
rp.FilterDescendantsInstances={char}
local gc=workspace:Raycast(Vector3.new(spawnX,500,spawnZ),Vector3.new(0,-1000,0),rp)
local gy=gc and gc.Position.Y or hrp.Position.Y
local spawnCF=CFrame.new(spawnX,gy+HOVER,spawnZ)

pcall(g,{[1]="CreatePart",[2]="Normal",[3]=spawnCF,[4]=workspace})

local tornado,waited=nil,0
repeat
	task.wait(0.06)
	waited+=0.06
	for _,v in workspace:GetChildren() do
		if v:IsA("Part") and v.Name=="Part" and (v.Position-spawnCF.Position).Magnitude<18 then tornado=v break end
	end
until tornado or waited>=6
if not tornado then return end

fire({[1]="SetName",[2]={tornado},[3]="Tornado"})
fire({[1]="SyncAnchor",[2]={{["Part"]=tornado,["Anchored"]=true}}})
fire({[1]="SyncCollision",[2]={{["Part"]=tornado,["CanCollide"]=false}}})
fire({[1]="SyncColor",[2]={{["Part"]=tornado,["Color"]=Color3.fromRGB(100,100,110),["UnionColoring"]=false}}})
fire({[1]="SyncMaterial",[2]={{["Part"]=tornado,["Transparency"]=0.12,["Material"]=Enum.Material.SmoothPlastic,["Reflectance"]=0}}})
fire({[1]="SyncResize",[2]={{["Part"]=tornado,["CFrame"]=spawnCF,["Size"]=Vector3.new(1,1,1)}}})
task.wait(0.2)
pcall(g,{[1]="CreateMeshes",[2]={{["Part"]=tornado}}})
task.wait(0.28)
pcall(g,{[1]="SyncMesh",[2]={{["Part"]=tornado,["MeshId"]="rbxassetid://481761034",["TextureId"]="rbxassetid://481761034",["Scale"]=Vector3.new(0.8,0.8,0.8),["Offset"]=Vector3.new(0,76,0)}}})
task.wait(0.12)
fire({[1]="CreateDecorations",[2]={{["Part"]=tornado,["DecorationType"]="Smoke"}}})
task.wait(0.08)
fire({[1]="SyncDecorate",[2]={{["Part"]=tornado,["DecorationType"]="Smoke",["Color"]=Color3.fromRGB(65,65,75),["Opacity"]=0.65,["RiseVelocity"]=14,["Size"]=30}}})

local smX=spawnX
local smZ=spawnZ
local pvX,pvZ=smX,smZ
local glX,glZ=smX,smZ
local baseY=gy+HOVER
local wa=math.random()*math.pi*2
local wdx,wdz=math.cos(wa),math.sin(wa)
local wtx,wtz=wdx,wdz
local wct=tick()+math.random()*2+1.5
local suck={}
local lastnet,lastscan,lastmv=0,0,0
local birth=tick()

local chaseTarget=nil
local chaseUntil=0

local function gety(px,pz)
	local rp2=RaycastParams.new()
	rp2.FilterType=Enum.RaycastFilterType.Exclude
	rp2.FilterDescendantsInstances={char,tornado}
	local r=workspace:Raycast(Vector3.new(px,500,pz),Vector3.new(0,-1000,0),rp2)
	return r and r.Position.Y or nil
end

local function mpos(m)
	if not m or not m.Parent then return nil,nil end
	local r=m:FindFirstChild("HumanoidRootPart") or m:FindFirstChild("Torso") or m:FindFirstChild("UpperTorso") or m:FindFirstChild("Head")
	if r and r:IsA("BasePart") and r.Parent then return r.Position,r end
	for _,v in m:GetDescendants() do
		if v:IsA("BasePart") then return v.Position,v end
	end
	return nil,nil
end

local function cantarget(m)
	if not m or not m.Parent then return false end
	if dead[m] then return false end
	if not m:FindFirstChildOfClass("Humanoid") then return false end
	return mpos(m)~=nil
end

local function findRandomTarget()
	local candidates={}
	for _,obj in workspace:GetChildren() do
		if obj:IsA("Model") and obj~=char and cantarget(obj) then
			candidates[#candidates+1]=obj
		end
	end
	for _,p in ipairs(plrs:GetPlayers()) do
		if p~=plr and p.Character and p.Character~=char and cantarget(p.Character) then
			local already=false
			for _,c in ipairs(candidates) do if c==p.Character then already=true break end end
			if not already then candidates[#candidates+1]=p.Character end
		end
	end
	if #candidates>0 then return candidates[math.random(1,#candidates)] end
	return nil
end

local function kill(m)
	if dead[m] then return end
	dead[m]=true
	task.spawn(function()
		local parts={}
		for _,v in m:GetDescendants() do
			if v:IsA("BasePart") and v.Parent then parts[#parts+1]=v end
		end
		if #parts>0 then
			local cb,mb={},{}
			for i,p in ipairs(parts) do
				cb[i]={["Part"]=p,["Color"]=Color3.fromRGB(32,32,38),["UnionColoring"]=false}
				mb[i]={["Part"]=p,["Material"]=Enum.Material.SmoothPlastic,["Transparency"]=0,["Reflectance"]=0}
			end
			fire({[1]="SyncColor",[2]=cb})
			fire({[1]="SyncMaterial",[2]=mb})
		end
	end)
	task.spawn(function()
		local rm={}
		for _,v in m:GetChildren() do
			if v:IsA("Accessory") or v:IsA("Hat") then
				for _,c in v:GetDescendants() do
					if c:IsA("BasePart") then rm[#rm+1]=c end
				end
			end
		end
		if #rm>0 then fire({[1]="Remove",[2]=rm}) end
	end)
	task.spawn(function()
		task.wait(0.18)
		local head=m:FindFirstChild("Head")
		if head and head:IsA("BasePart") then fire({[1]="Remove",[2]={head}}) return end
		local root=m:FindFirstChild("HumanoidRootPart") or m:FindFirstChild("Torso")
		if root and root:IsA("BasePart") then fire({[1]="Remove",[2]={root}}) return end
		local all={}
		for _,v in m:GetDescendants() do
			if v:IsA("BasePart") then all[#all+1]=v end
		end
		if #all>0 then fire({[1]="Remove",[2]=all}) end
	end)
end

local conn
conn=rs.Heartbeat:Connect(function(dt)
	if not tornado or not tornado.Parent then conn:Disconnect() return end
	local now=tick()
	local elapsed=now-birth
	char=plr.Character

	if chaseTarget and (not cantarget(chaseTarget) or now>=chaseUntil) then
		chaseTarget=nil
	end

	if not chaseTarget and now>=wct then
		if math.random()<CHASE_CHANCE then
			local t=findRandomTarget()
			if t then
				chaseTarget=t
				chaseUntil=now+math.random()*( CHASE_TIME_MAX-CHASE_TIME_MIN)+CHASE_TIME_MIN
			end
		end
		wa=wa+(math.random()-0.5)*math.pi*WANDER_ANGLE_RANGE
		wtx,wtz=math.cos(wa),math.sin(wa)
		wct=now+math.random()*(WANDER_TIME_MAX-WANDER_TIME_MIN)+WANDER_TIME_MIN
	end

	if chaseTarget and cantarget(chaseTarget) then
		local tp=mpos(chaseTarget)
		if tp then
			local cdx=tp.X-smX
			local cdz=tp.Z-smZ
			local cdist=math.sqrt(cdx*cdx+cdz*cdz)
			if cdist>0.5 then
				wtx=cdx/cdist
				wtz=cdz/cdist
			end
		end
	end

	wdx=wdx+(wtx-wdx)*0.025
	wdz=wdz+(wtz-wdz)*0.025
	local wm=math.sqrt(wdx*wdx+wdz*wdz)
	if wm>0.01 then wdx=wdx/wm wdz=wdz/wm end

	local chaseMult=chaseTarget and 1.4 or 1
	local nx=smX+wdx*SPD*chaseMult*dt
	local nz=smZ+wdz*SPD*chaseMult*dt
	local ngy=gety(nx,nz)
	if ngy and ngy>-50 then
		glX,glZ=nx,nz
		baseY=baseY+(ngy+HOVER-baseY)*0.06
	else
		wa=wa+math.pi
		wdx,wdz=math.cos(wa),math.sin(wa)
		wtx,wtz=wdx,wdz
	end
	pvX,pvZ=smX,smZ
	smX=smX+(glX-smX)*LERP
	smZ=smZ+(glZ-smZ)*LERP

	if now-lastscan>=SCAN_HZ then
		lastscan=now
		local sr2=SUCK_R*SUCK_R
		for _,obj in workspace:GetChildren() do
			if obj:IsA("Model") and obj~=char and cantarget(obj) then
				local ep=mpos(obj)
				if ep then
					local d2=(ep.X-smX)*(ep.X-smX)+(ep.Z-smZ)*(ep.Z-smZ)
					if d2<sr2 then
						if not suck[obj] then suck[obj]={t=now} end
					else suck[obj]=nil end
				end
			end
		end
		for _,p in ipairs(plrs:GetPlayers()) do
			if p~=plr and p.Character and p.Character~=char and cantarget(p.Character) then
				local ep=mpos(p.Character)
				if ep then
					local d2=(ep.X-smX)*(ep.X-smX)+(ep.Z-smZ)*(ep.Z-smZ)
					if d2<sr2 then
						if not suck[p.Character] then suck[p.Character]={t=now} end
					else suck[p.Character]=nil end
				end
			end
		end
	end

	if now-lastmv>=MV_HZ then
		lastmv=now
		local moves={}
		for model,data in pairs(suck) do
			if not cantarget(model) then
				suck[model]=nil
			else
				local ep,root=mpos(model)
				if ep and root then
					local dx=smX-ep.X
					local dz=smZ-ep.Z
					local dist=math.sqrt(dx*dx+dz*dz)
					if dist<=KILL_R then
						task.spawn(kill,model)
						suck[model]=nil
						if chaseTarget==model then chaseTarget=nil end
					else
						local st=now-data.t
						local inten=math.min(st/2.5,1)
						local force=FORCE*inten*MV_HZ
						local invd=1/math.max(dist,0.01)
						local ospd=2.5+(1-dist/SUCK_R)*10
						local oa=elapsed*ospd+(data.t*1.7)%(math.pi*2)
						local orbitR=dist*0.25
						local tb=(math.random()-0.5)*(1-dist/SUCK_R)*0.4
						local tb2=(math.random()-0.5)*(1-dist/SUCK_R)*0.4
						local nnx=ep.X+dx*invd*force+math.cos(oa)*orbitR*MV_HZ*2.2+tb
						local nnz=ep.Z+dz*invd*force+math.sin(oa)*orbitR*MV_HZ*2.2+tb2
						local liftF=(1-dist/SUCK_R)^1.5
						local ny=ep.Y+inten*liftF*14*MV_HZ
						moves[#moves+1]={["Part"]=root,["CFrame"]=CFrame.new(nnx,ny,nnz)*CFrame.Angles(inten*MV_HZ*3.5,elapsed*7,inten*MV_HZ*1.5)}
					end
				end
			end
		end
		if #moves>0 then fire({[1]="SyncMove",[2]=moves}) end
	end

	if now-lastnet>=NET_HZ then
		lastnet=now
		local lx=math.clamp((smX-pvX)*5,-0.12,0.12)
		local lz=math.clamp((smZ-pvZ)*5,-0.12,0.12)
		local bob=math.sin(elapsed*1.1)*1.2+math.sin(elapsed*2.3)*0.4
		local sway=math.sin(elapsed*0.55)*0.065
		fire({[1]="SyncMove",[2]={{["Part"]=tornado,["CFrame"]=CFrame.new(smX,baseY+bob,smZ)*CFrame.Angles(sway+lz,elapsed*SPIN,sway*0.45-lx)}}})
	end
end)
