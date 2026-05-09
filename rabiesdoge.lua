local Players=game:GetService("Players") -- BY RENDERY0 HAHAHAHAHAHAAHA
local ReplicatedStorage=game:GetService("ReplicatedStorage")
local UIS=game:GetService("UserInputService")
local RunService=game:GetService("RunService")
local Workspace=game:GetService("Workspace")
local player=Players.LocalPlayer
local char=player.Character or player.CharacterAdded:Wait()
local tool
for _,v in ipairs(player:GetDescendants()) do if v.Name=="SyncAPI" then tool=v.Parent;break end end
if not tool then for _,v in ipairs(ReplicatedStorage:GetDescendants()) do if v.Name=="SyncAPI" then tool=v.Parent;break end end end
assert(tool,"Equip F3X first.")
local remote=tool.SyncAPI.ServerEndpoint
local function _(a) remote:InvokeServer(unpack(a)) end
local function SetCollision(p,b) _({[1]="SyncCollision",[2]={{["Part"]=p,["CanCollide"]=b}}}) end
local function SetAnchor(b,p) _({[1]="SyncAnchor",[2]={{["Part"]=p,["Anchored"]=b}}}) end
local function Remove(o) _({[1]="Remove",[2]=o}) end
local function SyncMove(c) _({[1]="SyncMove",[2]=c}) end
local function SyncResize(c) _({[1]="SyncResize",[2]=c}) end
local function CreateMeshes(parts) local t={} for i,v in pairs(parts) do t[i]={["Part"]=v} end _({[1]="CreateMeshes",[2]=t}) end
local function SyncMeshFull(p,mId,tId,mT,sc,off,vc) _({[1]="SyncMesh",[2]={{["Part"]=p,["MeshId"]=mId and"rbxassetid://"..mId or nil,["TextureId"]=tId and"rbxassetid://"..tId or nil,["MeshType"]=mT,["Scale"]=sc,["Offset"]=off,["VertexColor"]=vc}}}) end
local function SyncColor(p,c) _({[1]="SyncColor",[2]={{["Part"]=p,["Color"]=c,["UnionColoring"]=false}}}) end
local function CreateSmoke(p) _({[1]="CreateDecorations",[2]={{["Part"]=p,["DecorationType"]="Smoke"}}}) end
local function SyncDecorate(p,dT,props) local c={["Part"]=p,["DecorationType"]=dT} for k,v in pairs(props) do c[k]=v end _({[1]="SyncDecorate",[2]={c}}) end
local function SyncSmoke(p,c,o,r,s) SyncDecorate(p,"Smoke",{Color=c,Opacity=o,RiseVelocity=r,Size=s}) end

local cQ={};local cB=false
task.spawn(function()
	while true do
		if not cB and #cQ>0 then
			cB=true;local item=table.remove(cQ,1);local found=nil
			local conn=Workspace.DescendantAdded:Connect(function(v) if v:IsA("BasePart") and not found then found=v end end)
			item.fn();local dl=tick()+3
			repeat task.wait(0.02) until found or tick()>dl
			conn:Disconnect();cB=false
			if item.cb then task.spawn(item.cb,found) end
		end
		task.wait(0.02)
	end
end)
local function qC(fn,cb) table.insert(cQ,{fn=fn,cb=cb}) end

local MESH_ID="4574885352";local TEX_ID="4574885376"
local CFG={PassiveRange=8,AggroRange=24,MeleeRange=4,BaseSpeed=12,FastSpeed=24,SendRate=1/20,AttackCD=1.1,LeashRange=65,LeashHardCap=115,TurnRate=8,BobFreq=4.5,BobAmp=0.20,MomentumDecay=7,IdleMinTime=1.4,IdleMaxTime=3.8,WanderMin=1.5,WanderMax=4.2}
local STATES={"friendly","passive","aggressive"};local sIdx=1;local fastMode=false;local poopMode=false
local Doges={};local Poops={}
local sLabel

local function buildGui()
	local old=player.PlayerGui:FindFirstChild("RabiesDogesGUI");if old then old:Destroy() end
	local sg=Instance.new("ScreenGui");sg.Name="RabiesDogesGUI";sg.ResetOnSpawn=false;sg.Parent=player.PlayerGui
	local top=Instance.new("TextLabel");top.Size=UDim2.new(0,640,0,32);top.Position=UDim2.new(0.5,-320,0,8)
	top.BackgroundTransparency=1;top.Font=Enum.Font.GothamBold;top.TextSize=14
	top.TextStrokeTransparency=0.3;top.TextStrokeColor3=Color3.new(0,0,0)
	top.Text="RABIES DOGES  |  [Z] Spawn  [C] Cycle State  [F] Clear  [V] Fast  [L] Poop";top.Parent=sg
	task.spawn(function() local t=0 while top and top.Parent do t+=0.04;top.TextColor3=Color3.fromHSV(t%1,1,1);task.wait(0.04) end end)
	local lb=Instance.new("TextLabel");lb.Size=UDim2.new(0,205,0,80);lb.Position=UDim2.new(0,10,1,-90)
	lb.BackgroundTransparency=0.2;lb.BackgroundColor3=Color3.fromRGB(18,18,18);lb.TextColor3=Color3.new(1,1,1)
	lb.Font=Enum.Font.GothamMedium;lb.TextSize=13;lb.TextXAlignment=Enum.TextXAlignment.Left
	lb.TextYAlignment=Enum.TextYAlignment.Top;lb.Parent=sg
	Instance.new("UICorner",lb).CornerRadius=UDim.new(0,6)
	local pad=Instance.new("UIPadding",lb);pad.PaddingTop=UDim.new(0,9);pad.PaddingLeft=UDim.new(0,9)
	sLabel=lb
end
local function refreshGui()
	if not sLabel then return end
	sLabel.Text=string.format("Doges: %d\nState: %s\nFast: %s\nPoop: %s",#Doges,string.upper(STATES[sIdx]),fastMode and"ON"or"OFF",poopMode and"ON"or"OFF")
end
buildGui();refreshGui()

local function spawnBlood(pos)
	task.spawn(function()
		local drops={}
		for i=1,5 do
			local off=Vector3.new(math.random(-25,25)/10,math.random(4,22)/10,math.random(-25,25)/10)
			local p=Instance.new("Part");p.Name="RabiesBlood";p.Size=Vector3.new(0.6,0.6,0.6)
			p.Color=Color3.fromRGB(158,0,0);p.Material=Enum.Material.SmoothPlastic;p.CastShadow=false
			p.Position=pos+off;p.Anchored=false;p.CanCollide=true;p.Parent=Workspace;table.insert(drops,p)
		end
		task.delay(10,function() for _,p in drops do if p and p.Parent then p:Destroy() end end end)
	end)
end

local function eliminateCharacter(character)
	local plr=Players:GetPlayerFromCharacter(character);if not plr or plr==player then return end
	local root=character:FindFirstChild("HumanoidRootPart");local pos=root and root.Position or character:GetPivot().Position
	local parts={};for _,v in ipairs(character:GetChildren()) do if v:IsA("BasePart") then table.insert(parts,v) end end
	if #parts>0 then Remove(parts);spawnBlood(pos) end
end

local function flat(v) return Vector3.new(v.X,0,v.Z) end
local function randDir() local v=Vector3.new(math.random(-100,100),0,math.random(-100,100));return v.Magnitude<0.01 and Vector3.new(1,0,0) or v.Unit end
local function lerpDir(a,b,al) local v=a:Lerp(b,al);return v.Magnitude<0.001 and b or v.Unit end
local function cfLook(pos,dir) dir=flat(dir);if dir.Magnitude<0.01 then dir=Vector3.new(0,0,-1) end;return CFrame.lookAt(pos,pos+dir.Unit) end
local function getOwnerRoot() return char and char:FindFirstChild("HumanoidRootPart") end
local function getNearestEnemy(pos,range)
	local best,bD=nil,range
	for _,plr in ipairs(Players:GetPlayers()) do
		if plr~=player then local c=plr.Character;if c then local r=c:FindFirstChild("HumanoidRootPart");if r then local d=(r.Position-pos).Magnitude;if d<bD then best=c;bD=d end end end end
	end
	return best,bD
end
local rP=RaycastParams.new();rP.FilterType=Enum.RaycastFilterType.Blacklist
local function safeGround(pos) local r=Workspace:Raycast(pos+Vector3.new(0,20,0),Vector3.new(0,-200,0),rP);if not r then return false end;return r.Position.Y>=-20 end

local function clearDoges()
	local rl={}
	for i=#Doges,1,-1 do local d=Doges[i];d.alive=false;if d.part then table.insert(rl,d.part) end;table.remove(Doges,i) end
	for i=#Poops,1,-1 do local p=Poops[i];if p.part then table.insert(rl,p.part) end;table.remove(Poops,i) end
	if #rl>0 then Remove(rl) end;refreshGui()
end

local function spawnPoop(pos)
	local dPos=pos-Vector3.new(0,1.5,0)
	qC(function() _({[1]="CreatePart",[2]="Ball",[3]=CFrame.new(dPos),[4]=Workspace}) end,
	function(found)
		if not found then return end;task.wait(0.08)
		SyncColor(found,Color3.fromRGB(92,64,51));SetAnchor(false,found);SetCollision(found,false)
		SyncResize({{["Part"]=found,["Size"]=Vector3.new(1.8,1.8,1.8),["CFrame"]=CFrame.new(dPos)}})
		task.wait(0.08);CreateSmoke(found);task.wait(0.08);SyncSmoke(found,Color3.fromRGB(50,255,50),0.05,1,0.05)
		table.insert(Poops,{part=found,spawnTime=tick()})
	end)
end

local function spawnDoge(spawnPos)
	qC(function() _({[1]="CreatePart",[2]="Normal",[3]=CFrame.new(spawnPos),[4]=Workspace}) end,
	function(found)
		if not found then return end;task.wait(0.08);CreateMeshes({found});task.wait(0.08)
		SyncMeshFull(found,MESH_ID,TEX_ID,Enum.MeshType.FileMesh,Vector3.new(1,1,1),Vector3.new(0,-3.1,0),nil)
		task.wait(0.05)
		SyncResize({{["Part"]=found,["Size"]=Vector3.new(3,2.5,4),["CFrame"]=CFrame.new(spawnPos)}})
		SetAnchor(true,found);SetCollision(found,false)
		local pers={speedMult=0.82+math.random()*0.36,turnMult=0.65+math.random()*0.70,idleFreqMult=0.5+math.random()*1.5,bobOffset=math.random()*math.pi*2,driftAmt=0.1+math.random()*0.3,circleSign=math.random()<0.5 and 1 or -1}
		local dir=randDir()
		table.insert(Doges,{part=found,alive=true,state=STATES[sIdx],pos=spawnPos,renderPos=spawnPos,velocity=Vector3.zero,lookDir=dir,wanderDir=randDir(),wanderTimer=math.random()*CFG.WanderMax,wanderFlip=CFG.WanderMin+math.random()*(CFG.WanderMax-CFG.WanderMin),isIdle=false,idleTimer=0,lastAttack=0,lastPoop=tick(),t=math.random()*100,pers=pers})
		refreshGui()
	end)
end

local sendAccum=0
RunService.Heartbeat:Connect(function(dt)
	local ownerRoot=getOwnerRoot();if not ownerRoot then return end
	sendAccum+=dt;local movePackets={}
	for i=#Doges,1,-1 do
		local d=Doges[i]
		if not d.alive or not d.part or not d.part.Parent then table.remove(Doges,i);continue end
		d.t+=dt
		local pos=d.pos;local pers=d.pers;local base=(fastMode and CFG.FastSpeed or CFG.BaseSpeed)*pers.speedMult;local turn=CFG.TurnRate*pers.turnMult
		local ownerDist=(ownerRoot.Position-pos).Magnitude
		if ownerDist>CFG.LeashHardCap then d.pos=ownerRoot.Position+randDir()*6;d.renderPos=d.pos;d.velocity=Vector3.zero;continue end
		local desiredDir;local desiredSpeed=base
		if ownerDist>CFG.LeashRange then
			local toOwner=flat(ownerRoot.Position-pos).Unit
			local noise=Vector3.new(math.sin(d.t*1.3)*0.3,0,math.cos(d.t*0.9)*0.3)
			desiredDir=(toOwner+noise).Unit
			local pullT=math.clamp((ownerDist-CFG.LeashRange)/40,0,1)
			desiredSpeed=base*(1+pullT*0.75)
		else
			if d.isIdle then
				d.idleTimer-=dt
				if d.idleTimer<=0 then d.isIdle=false;d.wanderDir=randDir() end
				desiredDir=d.wanderDir;desiredSpeed=base*0.04
			else
				local idleP=0.0025*pers.idleFreqMult*(d.state=="aggressive" and 0.15 or 1)
				if math.random()<idleP then
					d.isIdle=true;d.idleTimer=CFG.IdleMinTime+math.random()*(CFG.IdleMaxTime-CFG.IdleMinTime);desiredDir=d.lookDir;desiredSpeed=0
				else
					local target,tdist
					if d.state=="aggressive" then target,tdist=getNearestEnemy(pos,CFG.AggroRange)
					elseif d.state=="passive" then target,tdist=getNearestEnemy(pos,CFG.PassiveRange) end
					if target then
						local eroot=target:FindFirstChild("HumanoidRootPart")
						if eroot then
							local toTarget=flat(eroot.Position-pos).Unit
							if tdist<CFG.MeleeRange*2.8 and tdist>CFG.MeleeRange then
								local perp=Vector3.new(-toTarget.Z,0,toTarget.X)*pers.circleSign
								desiredDir=(toTarget+perp*math.sin(d.t*2.2)*0.45).Unit
							else desiredDir=toTarget end
							if tdist<=CFG.MeleeRange then
								desiredSpeed=0
								if tick()-d.lastAttack>CFG.AttackCD then d.lastAttack=tick();task.spawn(eliminateCharacter,target) end
							end
						end
					else
						d.wanderTimer-=dt
						if d.wanderTimer<=0 then d.wanderFlip=CFG.WanderMin+math.random()*(CFG.WanderMax-CFG.WanderMin);d.wanderTimer=d.wanderFlip;d.wanderDir=randDir() end
						local drift=Vector3.new(math.sin(d.t*0.8+pers.bobOffset)*pers.driftAmt,0,math.cos(d.t*0.55+pers.bobOffset)*pers.driftAmt)
						desiredDir=(d.wanderDir+drift).Unit;desiredSpeed=base*0.48
					end
				end
			end
		end
		if not desiredDir or desiredDir.Magnitude<0.01 then desiredDir=d.lookDir end
		if not safeGround(pos+desiredDir*7) then desiredDir=-desiredDir end
		d.lookDir=lerpDir(d.lookDir,desiredDir,math.clamp(turn*dt,0,1))
		local targetVel=d.lookDir*desiredSpeed;d.velocity=d.velocity:Lerp(targetVel,math.clamp(CFG.MomentumDecay*dt,0,1))
		local speedFrac=math.clamp(d.velocity.Magnitude/math.max(base,1),0,1)
		local bob=math.sin(d.t*CFG.BobFreq+pers.bobOffset)*CFG.BobAmp*speedFrac
		local newPos=pos+d.velocity*dt;d.pos=Vector3.new(newPos.X,ownerRoot.Position.Y+2+bob,newPos.Z)
		d.renderPos=d.renderPos:Lerp(d.pos,math.clamp(dt*18,0,1))
		if poopMode and desiredSpeed>0.5 and tick()-d.lastPoop>math.random(6,14) then d.lastPoop=tick();task.spawn(spawnPoop,d.pos) end
		if sendAccum>=CFG.SendRate then table.insert(movePackets,{["Part"]=d.part,["CFrame"]=cfLook(d.renderPos,d.lookDir)*CFrame.Angles(0,math.rad(90),0)}) end
	end
	for i=#Poops,1,-1 do
		local p=Poops[i]
		if tick()-p.spawnTime>25 then if p.part and p.part.Parent then Remove({p.part}) end;table.remove(Poops,i);continue end
		if p.part and p.part.Parent then
			local target,dist=getNearestEnemy(p.part.Position,3.5)
			if target and dist<=3.5 then eliminateCharacter(target);Remove({p.part});table.remove(Poops,i) end
		else table.remove(Poops,i) end
	end
	if sendAccum>=CFG.SendRate then sendAccum=0;if #movePackets>0 then SyncMove(movePackets) end end
end)

UIS.InputBegan:Connect(function(input,gpe)
	if gpe then return end
	if input.KeyCode==Enum.KeyCode.Z then local root=getOwnerRoot();if root then spawnDoge(root.Position+root.CFrame.LookVector*8+Vector3.new(0,2,0)) end
	elseif input.KeyCode==Enum.KeyCode.C then sIdx=sIdx%#STATES+1;local s=STATES[sIdx];for _,d in ipairs(Doges) do d.state=s end;refreshGui()
	elseif input.KeyCode==Enum.KeyCode.F then clearDoges()
	elseif input.KeyCode==Enum.KeyCode.V then fastMode=not fastMode;refreshGui()
	elseif input.KeyCode==Enum.KeyCode.L then poopMode=not poopMode;refreshGui() end
end)

player.CharacterAdded:Connect(function(c) char=c end)
print("Rabies Doges v10 Loaded")
