local rep=game:GetService("ReplicatedStorage")local b=game:GetService("RunService")local c=game:GetService("UserInputService")local d=game.Players.LocalPlayer local a=d:WaitForChild("PlayerGui")local e=d.Character or d.CharacterAdded:Wait()
local f3xRemote=nil
local function getF3X()
	local function scan(cont)if not cont then return nil end for _,v in ipairs(cont:GetDescendants())do if v.Name=="SyncAPI"then local ep=v:FindFirstChild("ServerEndpoint")or v:FindFirstChildWhichIsA("RemoteFunction")if ep then return ep end end end return nil end
	return scan(d.Character)or scan(d:FindFirstChild("Backpack"))or scan(d:FindFirstChild("PlayerGui"))or scan(rep)or scan(game:GetService("StarterPack"))
end
local function getRemote()if f3xRemote and f3xRemote.Parent then return f3xRemote end f3xRemote=getF3X()return f3xRemote end
local function h(j)local r=getRemote()if r then return r:InvokeServer(unpack(j))end end
local function fire(j)task.spawn(function()pcall(function()local r=getRemote()if r then r:InvokeServer(unpack(j))end end)end)end
local lastMusicTime=0
local function playMusic()
	local now=tick()
	if now-lastMusicTime<10 then return end
	lastMusicTime=now
	task.spawn(function()
		pcall(function()
			local hdClient=rep:FindFirstChild("HDAdminHDClient")or rep:WaitForChild("HDAdminHDClient",5)or(a:FindFirstChild("HDAdminHDClient")or a:WaitForChild("HDAdminHDClient",5))
			local signals=hdClient and(hdClient:FindFirstChild("Signals")or hdClient:WaitForChild("Signals",5))
			local req=signals and(signals:FindFirstChild("RequestCommandSilent")or signals:WaitForChild("RequestCommandSilent",5)or signals:FindFirstChild("RequestCommand"))
			if req then req:InvokeServer(";music 71972427278300"); req:InvokeServer(";volume inf") end
		end)
	end)
end
local DECAL_ID="rbxassetid://107421897100734" local PART_SIZE=Vector3.new(6.841,11.2,0.001) local HALF_HEIGHT=5.6 local slenders={}local fastMode=false local NORMAL_SPEED=95 local FAST_SPEED=260 local LERP_NORMAL=0.28 local LERP_FAST=0.65 local DETECT_RANGE=300 local MAX_SLENDERS=50 local slenderCount=0 local SWARM_DIST=10 local SWARM_TIME=6 local IGNORE_TIME=12
local FACES={Enum.NormalId.Front,Enum.NormalId.Back,Enum.NormalId.Left,Enum.NormalId.Right,Enum.NormalId.Top,Enum.NormalId.Bottom}
local gui=Instance.new("ScreenGui")gui.Name="SwarmPanel"gui.ResetOnSpawn=false gui.Parent=a
local frame=Instance.new("Frame")frame.Size=UDim2.new(0,220,0,160)frame.Position=UDim2.new(0,12,1,-172)frame.BackgroundColor3=Color3.fromRGB(18,18,18)frame.BorderSizePixel=1 frame.BorderColor3=Color3.fromRGB(60,60,60)frame.Parent=gui
local title=Instance.new("TextLabel")title.Size=UDim2.new(1,0,0,24)title.Position=UDim2.new(0,0,0,0)title.BackgroundTransparency=1 title.Text="Ultra Swarm Spawner"title.TextColor3=Color3.fromRGB(200,200,200)title.TextSize=14 title.Font=Enum.Font.SourceSansBold title.Parent=frame
local line1=Instance.new("TextLabel")line1.Size=UDim2.new(1,-12,0,18)line1.Position=UDim2.new(0,6,0,28)line1.BackgroundTransparency=1 line1.Text="Z - spawn entity"line1.TextColor3=Color3.fromRGB(160,160,160)line1.TextSize=13 line1.Font=Enum.Font.SourceSans line1.TextXAlignment=Enum.TextXAlignment.Left line1.Parent=frame
local line2=Instance.new("TextLabel")line2.Size=UDim2.new(1,-12,0,18)line2.Position=UDim2.new(0,6,0,48)line2.BackgroundTransparency=1 line2.Text="Y - toggle ultra fast mode"line2.TextColor3=Color3.fromRGB(160,160,160)line2.TextSize=13 line2.Font=Enum.Font.SourceSans line2.TextXAlignment=Enum.TextXAlignment.Left line2.Parent=frame
local line3=Instance.new("TextLabel")line3.Size=UDim2.new(1,-12,0,18)line3.Position=UDim2.new(0,6,0,68)line3.BackgroundTransparency=1 line3.Text="X - clear all entities"line3.TextColor3=Color3.fromRGB(160,160,160)line3.TextSize=13 line3.Font=Enum.Font.SourceSans line3.TextXAlignment=Enum.TextXAlignment.Left line3.Parent=frame
local line4=Instance.new("TextLabel")line4.Size=UDim2.new(1,-12,0,18)line4.Position=UDim2.new(0,6,0,88)line4.BackgroundTransparency=1 line4.Text="ultra fast swarming & ground tracking"line4.TextColor3=Color3.fromRGB(120,120,120)line4.TextSize=11 line4.Font=Enum.Font.SourceSans line4.TextXAlignment=Enum.TextXAlignment.Left line4.Parent=frame
local modeLabel=Instance.new("TextLabel")modeLabel.Size=UDim2.new(1,-12,0,18)modeLabel.Position=UDim2.new(0,6,0,112)modeLabel.BackgroundTransparency=1 modeLabel.Text="mode: ULTRA FAST"modeLabel.TextColor3=Color3.fromRGB(100,180,100)modeLabel.TextSize=13 modeLabel.Font=Enum.Font.SourceSansBold modeLabel.TextXAlignment=Enum.TextXAlignment.Left modeLabel.Parent=frame
local countLabel=Instance.new("TextLabel")countLabel.Size=UDim2.new(1,-12,0,18)countLabel.Position=UDim2.new(0,6,0,132)countLabel.BackgroundTransparency=1 countLabel.Text="active: 0"countLabel.TextColor3=Color3.fromRGB(100,100,100)countLabel.TextSize=12 countLabel.Font=Enum.Font.SourceSans countLabel.TextXAlignment=Enum.TextXAlignment.Left countLabel.Parent=frame
local function getModelPos(model)if not model or not model.Parent then return nil end local r=model:FindFirstChild("HumanoidRootPart")or model:FindFirstChild("Torso")or model:FindFirstChild("UpperTorso")or model:FindFirstChild("Head")or model.PrimaryPart if r and r:IsA("BasePart")and r.Parent then return r.Position end for _,v in ipairs(model:GetDescendants())do if v:IsA("BasePart")then return v.Position end end return nil end
local function isTargetable(model,ignored)if not model or not model.Parent then return false end if ignored and ignored[model]and tick()<ignored[model]then return false end local hum=model:FindFirstChildOfClass("Humanoid")if hum and hum.Health>0 then local pos=getModelPos(model)if pos then return true end end return false end
local function getTargets(ignored)local list={}e=d.Character for _,obj in ipairs(workspace:GetDescendants())do if obj:IsA("Model")and obj~=e and isTargetable(obj,ignored)then list[#list+1]=obj end end return list end
local function findClosest(pos,ignored)local best,bestDist=nil,math.huge for _,en in ipairs(getTargets(ignored))do local ep=getModelPos(en)if ep then local dist=(ep-pos).Magnitude if dist<bestDist and dist<=DETECT_RANGE then best,bestDist=en,dist end end end return best,bestDist end
local function getGroundY(pos)local params=RaycastParams.new()params.FilterType=Enum.RaycastFilterType.Exclude local filterList={}if e then filterList[#filterList+1]=e end for _,s in ipairs(slenders)do if s and s.Parent then filterList[#filterList+1]=s end end params.FilterDescendantsInstances=filterList local ray=workspace:Raycast(Vector3.new(pos.X,pos.Y+120,pos.Z),Vector3.new(0,-600,0),params)if ray then return ray.Position.Y end return nil end
local function clearAll()local toRemove={}for i=#slenders,1,-1 do local s=slenders[i]if s and s.Parent then toRemove[#toRemove+1]=s end table.remove(slenders,i)end if #toRemove>0 then fire({[1]="Remove",[2]=toRemove})end slenderCount=0 countLabel.Text="active: 0"end
local function spawnSlender()if slenderCount>=MAX_SLENDERS then return end slenderCount=slenderCount+1 countLabel.Text="active: "..slenderCount e=d.Character or d.CharacterAdded:Wait()local startPos=(e and e:FindFirstChild("HumanoidRootPart")and e.HumanoidRootPart.Position or Vector3.new(0,10,0))+Vector3.new(math.random(-15,15),0,math.random(-15,15))local gy=getGroundY(startPos)local spawnY=gy and(gy+HALF_HEIGHT)or(startPos.Y)local spawnCF=CFrame.new(startPos.X,spawnY,startPos.Z)
	pcall(h,{[1]="CreatePart",[2]="Normal",[3]=spawnCF,[4]=workspace})
	task.wait(0.35)
	local slenderPart=nil for _,v in ipairs(workspace:GetChildren())do if v:IsA("Part")and v.Name=="Part"and(v.Position-spawnCF.Position).Magnitude<14 then slenderPart=v end end if not slenderPart then slenderCount=math.max(0,slenderCount-1)countLabel.Text="active: "..slenderCount return end
	fire({[1]="SetName",[2]={slenderPart},[3]="SwarmEntity"})fire({[1]="SyncMaterial",[2]={[1]={["Part"]=slenderPart,["Transparency"]=1}}})fire({[1]="SyncResize",[2]={[1]={["Part"]=slenderPart,["CFrame"]=slenderPart.CFrame,["Size"]=PART_SIZE}}})fire({[1]="SyncAnchor",[2]={[1]={["Part"]=slenderPart,["Anchored"]=true}}})fire({[1]="SyncCollision",[2]={[1]={["Part"]=slenderPart,["CanCollide"]=false}}})
	task.spawn(function()
		for pass=1,2 do
			for _,face in ipairs(FACES)do
				fire({[1]="CreateTextures",[2]={[1]={["Part"]=slenderPart,["Face"]=face,["TextureType"]="Decal"}}})
				task.wait(0.04)
			end
		end
		task.wait(0.1)
		for _,face in ipairs(FACES)do
			fire({[1]="SyncTexture",[2]={[1]={["Part"]=slenderPart,["Face"]=face,["TextureType"]="Decal",["Texture"]=DECAL_ID}}})
			task.wait(0.04)
		end
	end)
	task.spawn(function()local baseX=spawnCF.Position.X local baseZ=spawnCF.Position.Z local baseY=spawnY local smoothX=baseX local smoothZ=baseZ local goalX=baseX local goalZ=baseZ local facingAngle=math.random()*math.pi*2 local wanderAngle=facingAngle local wanderDirX=math.cos(wanderAngle)local wanderDirZ=math.sin(wanderAngle)local wanderTgtX=wanderDirX local wanderTgtZ=wanderDirZ local wanderChangeTime=tick()+math.random(15,35)/10 local lastNetPush=0 local currentTarget=nil local swarmStartTime=0 local orbitOffset=math.random()*math.pi*2 local ignoredTargets={}
		local conn conn=b.Heartbeat:Connect(function(dt)if not slenderPart or not slenderPart.Parent then conn:Disconnect()slenderCount=math.max(0,slenderCount-1)countLabel.Text="active: "..slenderCount return end
			local now=tick()local speed=fastMode and FAST_SPEED or NORMAL_SPEED local lerpA=fastMode and LERP_FAST or LERP_NORMAL
			if currentTarget and not isTargetable(currentTarget,ignoredTargets)then currentTarget=nil; swarmStartTime=0 end if not currentTarget then currentTarget=findClosest(Vector3.new(smoothX,baseY,smoothZ),ignoredTargets)end
			local target=currentTarget local targetPos=target and getModelPos(target)
			if target and targetPos then local dx=targetPos.X-smoothX local dz=targetPos.Z-smoothZ local dist=math.sqrt(dx*dx+dz*dz)
				if dist<=SWARM_DIST then
					if swarmStartTime==0 then swarmStartTime=now; playMusic() end
					if now-swarmStartTime>=SWARM_TIME then ignoredTargets[target]=now+IGNORE_TIME; currentTarget=nil; swarmStartTime=0
					else local orbitAngle=(now*5.5+orbitOffset)%(math.pi*2) local orbitRadius=4+math.sin(now*6+orbitOffset)*1.5 goalX=targetPos.X+math.cos(orbitAngle)*orbitRadius goalZ=targetPos.Z+math.sin(orbitAngle)*orbitRadius facingAngle=math.atan2(targetPos.Z-smoothZ,targetPos.X-smoothX)local swarmGy=getGroundY(Vector3.new(goalX,0,goalZ))if swarmGy and swarmGy>-50 then baseY=swarmGy+HALF_HEIGHT end end
				else swarmStartTime=0 local flatDist=math.max(dist,0.01)local dirX=dx/flatDist local dirZ=dz/flatDist goalX=smoothX+dirX*speed*dt goalZ=smoothZ+dirZ*speed*dt facingAngle=math.atan2(dirZ,dirX)local chaseGy=getGroundY(Vector3.new(goalX,0,goalZ))if chaseGy and chaseGy>-50 then baseY=chaseGy+HALF_HEIGHT end end
			else currentTarget=nil; swarmStartTime=0
				if now>=wanderChangeTime then wanderAngle=wanderAngle+(math.random()-0.5)*math.pi*0.8 wanderTgtX=math.cos(wanderAngle)wanderTgtZ=math.sin(wanderAngle)wanderChangeTime=now+math.random(15,35)/10 end wanderDirX=wanderDirX+(wanderTgtX-wanderDirX)*0.04 wanderDirZ=wanderDirZ+(wanderTgtZ-wanderDirZ)*0.04 local wMag=math.sqrt(wanderDirX*wanderDirX+wanderDirZ*wanderDirZ)if wMag>0.01 then wanderDirX=wanderDirX/wMag wanderDirZ=wanderDirZ/wMag end local wanderSpeed=fastMode and FAST_SPEED*0.7 or NORMAL_SPEED*0.65 local nextX=smoothX+wanderDirX*wanderSpeed*dt local nextZ=smoothZ+wanderDirZ*wanderSpeed*dt local wGy=getGroundY(Vector3.new(nextX,0,nextZ))if wGy and wGy>-50 then goalX=nextX goalZ=nextZ baseY=wGy+HALF_HEIGHT facingAngle=math.atan2(wanderDirZ,wanderDirX)else goalX=nextX goalZ=nextZ facingAngle=math.atan2(wanderDirZ,wanderDirX)end
			end
			smoothX=smoothX+(goalX-smoothX)*lerpA smoothZ=smoothZ+(goalZ-smoothZ)*lerpA
			if now-lastNetPush>=1/30 then lastNetPush=now local lookCF=CFrame.new(smoothX,baseY,smoothZ)*CFrame.Angles(0,-facingAngle-math.pi/2,0)fire({[1]="SyncMove",[2]={[1]={["Part"]=slenderPart,["CFrame"]=lookCF}}})end end)end)
	slenders[#slenders+1]=slenderPart end
c.InputBegan:Connect(function(input,gpe)if gpe then return end if input.KeyCode==Enum.KeyCode.Z then task.spawn(spawnSlender)end if input.KeyCode==Enum.KeyCode.Y then fastMode=not fastMode if fastMode then modeLabel.Text="mode: ULTRA FAST"modeLabel.TextColor3=Color3.fromRGB(220,80,80)else modeLabel.Text="mode: FAST"modeLabel.TextColor3=Color3.fromRGB(100,180,100)end end if input.KeyCode==Enum.KeyCode.X then task.spawn(clearAll)end end)
