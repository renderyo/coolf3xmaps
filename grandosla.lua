local p=game.Players.LocalPlayer
local r=game:GetService("ReplicatedStorage")
local t
for _,v in pairs(p:GetDescendants()) do
	if v.Name=="SyncAPI" then
		t=v.Parent
		break
	end
end
if not t then
	for _,v in pairs(r:GetDescendants()) do
		if v.Name=="SyncAPI" then
			t=v.Parent
			break
		end
	end
end
if not t then return end
local e=t.SyncAPI.ServerEndpoint
local function c(a) return e:InvokeServer(unpack(a)) end
local function f(a) task.spawn(function() pcall(function() e:InvokeServer(unpack(a)) end) end) end
local pz={}
local d=0
local n=163
task.spawn(function()
	local z={}
	for _,v in ipairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			z[#z+1]=v
		end
	end
	if #z>0 then
		pcall(function()
			c({"Remove",z})
		end)
	end
end)

task.spawn(function()
	local o=c({'CreatePart','Ball',CFrame.new(0,260.5,0,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[1]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,260.5,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(96.000000,96.000000,96.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.972549,0.972549,0.972549),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Peak'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Corner',CFrame.new(40,8.5,40,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[2]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(40,8.5,40,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(16.000000,16.000000,16.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'CornerWedge'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,154.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[3]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,154.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,130.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[4]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,130.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,118.50003051757812,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[5]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,118.50003051757812,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,178.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[6]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,178.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,142.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[7]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,142.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,166.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[8]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,166.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,106.50001525878906,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[9]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,106.50001525878906,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,58.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[10]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,58.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,82.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[11]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,82.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,94.50001525878906,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[12]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,94.50001525878906,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,70.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[13]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,70.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,22.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[14]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,22.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,10.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[15]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,10.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,34.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[16]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,34.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,46.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[17]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,46.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0.000244140625,189,31.4998779296875,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[18]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0.000244140625,189,31.4998779296875,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,1.000000,62.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-2.5,185,29.5,-1,0,0,0,1,0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[19]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-2.5,185,29.5,-1,0,0,0,1,0,0,0,-1),Size=Vector3.new(51.000000,1.000000,5.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,185,31.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[20]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,185,31.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(5.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(30,185,0,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[21]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(30,185,0,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(64.000000,1.000000,4.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(31.5,188.99996948242188,0,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[22]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(31.5,188.99996948242188,0,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(64.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(31.5,187,-31.5,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[23]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(31.5,187,-31.5,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,3.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Corner',CFrame.new(40,8.5,-40,-1,0,0,0,1,0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[24]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(40,8.5,-40,-1,0,0,0,1,0,0,0,-1),Size=Vector3.new(16.000000,16.000000,16.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'CornerWedge'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Cylinder',CFrame.new(0,108.5,0,0,-1,0,-1,0,-0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[25]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,108.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(216.000000,32.000000,32.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'RingCore'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(30,92.5,-30,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[26]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(30,92.5,-30,1,0,0,0,1,0,0,0,1),Size=Vector3.new(4.000000,184.000000,4.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-9,21.500015258789062,-32.10003662109375,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[27]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-9,21.500015258789062,-32.10003662109375,1,0,0,0,1,0,0,0,1),Size=Vector3.new(16.000000,6.000000,0.200000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.792157,0.796078,0.819608),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-23.5,33,-32.10003662109375,0,0,-1,0,1,0,1,0,0),workspace})
	if not o then d=d+1 return end
	pz[28]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-23.5,33,-32.10003662109375,0,0,-1,0,1,0,1,0,0),Size=Vector3.new(0.200000,5.000000,5.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.972549,0.972549,0.972549),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Left,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Left,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=2507942',Transparency=0.000000}}})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0,185.00039672851562,-0.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[29]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,185.00039672851562,-0.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(56.000000,1.000000,55.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[30]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(96.000000,1.000000,96.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Root'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Wedge',CFrame.new(0,8.5,-40,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[31]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,8.5,-40,1,0,0,0,1,0,0,0,1),Size=Vector3.new(64.000000,16.000000,16.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wedge'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-24,29,-31.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[32]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,29,-31.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0,92.5,31.79998779296875,0,0,1,-1,0,0,0,-1,0),workspace})
	if not o then d=d+1 return end
	pz[33]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,92.5,31.79998779296875,0,0,1,-1,0,0,0,-1,0),Size=Vector3.new(184.000000,0.400000,56.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wall'})
	f({'SetLocked',{o},false})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,5.9999542236328125,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[34]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,5.9999542236328125,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-27.5,45.00004577636719,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[35]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-27.5,45.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,89.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,1.999969482421875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[36]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,1.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,11.999969482421875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[37]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,11.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,7.9999847412109375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[38]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,7.9999847412109375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,9.999969482421875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[39]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,9.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-23.5,45.00004577636719,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[40]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-23.5,45.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,89.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,3.9999542236328125,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[41]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,3.9999542236328125,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,39.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[42]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,39.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,21.999969482421875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[43]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,21.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,33.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[44]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,33.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,44.00004577636719,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[45]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,44.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,42.00004577636719,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[46]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,42.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,46.00004577636719,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[47]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,46.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,49.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[48]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,49.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,51.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[49]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,51.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,55.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[50]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,55.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,32.000091552734375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[51]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,32.000091552734375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,28.000015258789062,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[52]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,28.000015258789062,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,14,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[53]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,14,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,62.00004577636719,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[54]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,62.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,19.999969482421875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[55]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,19.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,26.000015258789062,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[56]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,26.000015258789062,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,16.00006103515625,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[57]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,16.00006103515625,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,53.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[58]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,53.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,48.00004577636719,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[59]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,48.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,17.999969482421875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[60]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,17.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,30.000045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[61]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,30.000045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,57.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[62]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,57.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,59.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[63]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,59.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,23.999969482421875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[64]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,23.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,35.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[65]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,35.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,37.99998474121094,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[66]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,37.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,67.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[67]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,67.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,69.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[68]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,69.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,79.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[69]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,79.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,83.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[70]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,83.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,65.9998779296875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[71]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,65.9998779296875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,75.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[72]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,75.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,71.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[73]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,71.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,77.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[74]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,77.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,63.9998779296875,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[75]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,63.9998779296875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,73.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[76]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,73.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,87.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[77]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,87.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,81.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[78]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,81.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-25.5,85.99984741210938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[79]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-25.5,85.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(4.5,92.25,-31.79998779296875,0,0,1,-1,0,0,0,-1,0),workspace})
	if not o then d=d+1 return end
	pz[80]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(4.5,92.25,-31.79998779296875,0,0,1,-1,0,0,0,-1,0),Size=Vector3.new(184.500000,0.400000,47.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wall'})
	f({'SetLocked',{o},false})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(23.5,137.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[81]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(23.5,137.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,97.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,90.00022888183594,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[82]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,90.00022888183594,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,100.00028991699219,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[83]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,100.00028991699219,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,96.00027465820312,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[84]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,96.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,102.00032043457031,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[85]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,102.00032043457031,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,106.00027465820312,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[86]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,106.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,108.00027465820312,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[87]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,108.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(27.5,137.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[88]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(27.5,137.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,97.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,98.00028991699219,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[89]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,98.00028991699219,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,104.00032043457031,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[90]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,104.00032043457031,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,94.000244140625,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[91]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,94.000244140625,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,92.000244140625,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[92]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,92.000244140625,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,110.00027465820312,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[93]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,110.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,114.00033569335938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[94]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,114.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,134.00042724609375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[95]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,134.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,140.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[96]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,140.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,138.0003662109375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[97]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,138.0003662109375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,142.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[98]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,142.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,130.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[99]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,130.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,144.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[100]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,144.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,150.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[101]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,150.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,136.00042724609375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[102]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,136.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,148.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[103]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,148.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,152.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[104]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,152.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,154.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[105]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,154.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,156.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[106]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,156.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,146.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[107]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,146.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,112.00027465820312,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[108]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,112.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,122.00030517578125,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[109]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,122.00030517578125,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,116.00033569335938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[110]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,116.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,120.0003662109375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[111]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,120.0003662109375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,124.00033569335938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[112]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,124.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,126.00033569335938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[113]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,126.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,128.00033569335938,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[114]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,128.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,132.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[115]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,132.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,118.0003662109375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[116]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,118.0003662109375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,170.00042724609375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[117]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,170.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,158.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[118]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,158.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,168.00042724609375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[119]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,168.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,176.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[120]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,176.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,162.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[121]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,162.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,160.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[122]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,160.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,164.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[123]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,164.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,166.00045776367188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[124]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,166.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,174.00039672851562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[125]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,174.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,172.00042724609375,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[126]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,172.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-24,5.5,-29.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[127]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,5.5,-29.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,10.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0,185,-30,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[128]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,185,-30,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(4.000000,1.000000,56.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-30,185,0,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[129]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-30,185,0,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(64.000000,1.000000,4.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-24,6.5,-30.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[130]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,6.5,-30.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,12.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-24,2.5,-26.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[131]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,2.5,-26.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,4.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-24,3.5,-27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[132]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,3.5,-27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,6.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-24,4.4999847412109375,-28.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[133]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,4.4999847412109375,-28.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,8.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-24,7.5,-31.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[134]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,7.5,-31.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,14.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-31.79998779296875,92.5,0,0,1,0,-1,0,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[135]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-31.79998779296875,92.5,0,0,1,0,-1,0,0,0,0,1),Size=Vector3.new(184.000000,0.400000,56.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wall'})
	f({'SetLocked',{o},false})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(31.5,187,31.5,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[136]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(31.5,187,31.5,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,3.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0.000244140625,188.99996948242188,-31.5001220703125,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[137]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0.000244140625,188.99996948242188,-31.5001220703125,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,1.000000,62.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-31.499755859375,188.99996948242188,-0.0001220703125,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[138]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-31.499755859375,188.99996948242188,-0.0001220703125,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(64.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-31.499755859375,187,31.4998779296875,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[139]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-31.499755859375,187,31.4998779296875,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,3.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-23.45001220703125,107,-31.79998779296875,0,0,1,-1,0,0,0,-1,0),workspace})
	if not o then d=d+1 return end
	pz[140]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-23.45001220703125,107,-31.79998779296875,0,0,1,-1,0,0,0,-1,0),Size=Vector3.new(155.000000,0.400000,9.100000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wall'})
	f({'SetLocked',{o},false})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-19.5,15,-31.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[141]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-19.5,15,-31.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,29.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-24,1.5,-25.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[142]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,1.5,-25.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,2.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,183.99990844726562,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[143]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,183.99990844726562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0,89,29.79998779296875,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[144]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,89,29.79998779296875,1,0,0,0,1,0,0,0,1),Size=Vector3.new(56.000000,1.000000,3.600000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,181.99996948242188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[145]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,181.99996948242188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,178,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[146]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,178,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(25.5,179.99996948242188,27.5,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[147]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(25.5,179.99996948242188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-30,92.5,-30,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[148]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-30,92.5,-30,1,0,0,0,1,0,0,0,1),Size=Vector3.new(4.000000,184.000000,4.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-30,92.5,30,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[149]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-30,92.5,30,1,0,0,0,1,0,0,0,1),Size=Vector3.new(4.000000,184.000000,4.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(31.79998779296875,92.5,0,0,1,0,-1,0,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[150]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(31.79998779296875,92.5,0,0,1,0,-1,0,0,0,0,1),Size=Vector3.new(184.000000,0.400000,56.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wall'})
	f({'SetLocked',{o},false})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Bottom,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	f({'CreateTextures',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal'}}})
	f({'SyncTexture',{{Part=o,Face=Enum.NormalId.Top,TextureType='Decal',Texture='http://www.roblox.com/asset/?id=45558204',Transparency=0.000000}}})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(30,92.5,30,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[151]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(30,92.5,30,1,0,0,0,1,0,0,0,1),Size=Vector3.new(4.000000,184.000000,4.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Wedge',CFrame.new(40,8.5,0,0,0,-1,0,1,0,1,0,0),workspace})
	if not o then d=d+1 return end
	pz[152]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(40,8.5,0,0,0,-1,0,1,0,1,0,0),Size=Vector3.new(64.000000,16.000000,16.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wedge'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Wedge',CFrame.new(-40,8.5,0,0,0,1,0,1,0,-0.9999998807907104,0,0),workspace})
	if not o then d=d+1 return end
	pz[153]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-40,8.5,0,0,0,1,0,1,0,-0.9999998807907104,0,0),Size=Vector3.new(64.000000,16.000000,16.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wedge'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(-31.499755859375,187,-31.5001220703125,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[154]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-31.499755859375,187,-31.5001220703125,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,3.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Part'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Corner',CFrame.new(-40,8.5,-40,0,0,-1,0,1,0,1,0,0),workspace})
	if not o then d=d+1 return end
	pz[155]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-40,8.5,-40,0,0,-1,0,1,0,1,0,0),Size=Vector3.new(16.000000,16.000000,16.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'CornerWedge'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Corner',CFrame.new(-40,8.5,40,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[156]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-40,8.5,40,1,0,0,0,1,0,0,0,1),Size=Vector3.new(16.000000,16.000000,16.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'CornerWedge'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Wedge',CFrame.new(0,8.5,40,-1,0,0,0,1,0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[157]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,8.5,40,-1,0,0,0,1,0,0,0,-1),Size=Vector3.new(64.000000,16.000000,16.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Wedge'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0,79.5,0,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[158]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,79.5,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(64.000000,158.000000,64.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.929412,0.917647,0.917647),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Defense'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0,91,0,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[159]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,91,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(64.000000,181.000000,64.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.929412,0.917647,0.917647),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Collide'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(15.8499755859375,189.5,0,0,0,1,0,1,0,-1,0,0),workspace})
	if not o then d=d+1 return end
	pz[160]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(15.8499755859375,189.5,0,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(3.500000,3.500000,0.500000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.015686,0.686275,0.925490),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Glass,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'Screen'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(15.5,189.5,0,0,0,1,-1,0,0,0,-1,0),workspace})
	if not o then d=d+1 return end
	pz[161]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(15.5,189.5,0,0,0,1,-1,0,0,0,-1,0),Size=Vector3.new(4.000000,4.000000,1.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.356863,0.364706,0.411765),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=0.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'ComputerRoot'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Wedge',CFrame.new(-24,8.5,-28,-1,0,0,0,1,0,0,0,-1),workspace})
	if not o then d=d+1 return end
	pz[162]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(-24,8.5,-28,-1,0,0,0,1,0,0,0,-1),Size=Vector3.new(8.000000,16.000000,8.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=true}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'StairCollide'})
	f({'SetLocked',{o},false})
	d=d+1
end)
task.spawn(function()
	local o=c({'CreatePart','Normal',CFrame.new(0,227,0,1,0,0,0,1,0,0,0,1),workspace})
	if not o then d=d+1 return end
	pz[163]=o
	f({'SyncResize',{{Part=o,CFrame=CFrame.new(0,227,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(64.000000,1.000000,64.000000)}}})
	f({'SyncColor',{{Part=o,Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
	f({'SyncMaterial',{{Part=o,Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
	f({'SyncCollision',{{Part=o,CanCollide=false}}})
	f({'SyncAnchor',{{Part=o,Anchored=true}}})
	f({'SetName',{o},'TopLight'})
	f({'SetLocked',{o},false})
	f({'CreateLights',{{Part=o,LightType='SurfaceLight'}}})
	f({'SyncLighting',{{Part=o,LightType='SurfaceLight',Brightness=0.500000,Range=60.000000,Color=Color3.new(1.000000,1.000000,1.000000),Shadows=false,Face=Enum.NormalId.Bottom}}})
	d=d+1
end)
repeat task.wait() until d>=163
c({'SyncResize',{{Part=pz[1],CFrame=CFrame.new(0,260.5,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(96.000000,96.000000,96.000000)},{Part=pz[2],CFrame=CFrame.new(40,8.5,40,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(16.000000,16.000000,16.000000)},{Part=pz[3],CFrame=CFrame.new(0,154.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[4],CFrame=CFrame.new(0,130.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[5],CFrame=CFrame.new(0,118.50003051757812,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[6],CFrame=CFrame.new(0,178.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[7],CFrame=CFrame.new(0,142.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[8],CFrame=CFrame.new(0,166.49996948242188,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[9],CFrame=CFrame.new(0,106.50001525878906,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[10],CFrame=CFrame.new(0,58.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[11],CFrame=CFrame.new(0,82.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[12],CFrame=CFrame.new(0,94.50001525878906,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[13],CFrame=CFrame.new(0,70.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[14],CFrame=CFrame.new(0,22.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[15],CFrame=CFrame.new(0,10.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[16],CFrame=CFrame.new(0,34.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[17],CFrame=CFrame.new(0,46.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(4.000000,52.000000,52.000000)},{Part=pz[18],CFrame=CFrame.new(0.000244140625,189,31.4998779296875,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,1.000000,62.000000)},{Part=pz[19],CFrame=CFrame.new(-2.5,185,29.5,-1,0,0,0,1,0,0,0,-1),Size=Vector3.new(51.000000,1.000000,5.000000)},{Part=pz[20],CFrame=CFrame.new(25.5,185,31.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(5.000000,1.000000,1.000000)},{Part=pz[21],CFrame=CFrame.new(30,185,0,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(64.000000,1.000000,4.000000)},{Part=pz[22],CFrame=CFrame.new(31.5,188.99996948242188,0,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(64.000000,1.000000,1.000000)},{Part=pz[23],CFrame=CFrame.new(31.5,187,-31.5,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,3.000000,1.000000)},{Part=pz[24],CFrame=CFrame.new(40,8.5,-40,-1,0,0,0,1,0,0,0,-1),Size=Vector3.new(16.000000,16.000000,16.000000)},{Part=pz[25],CFrame=CFrame.new(0,108.5,0,0,-1,0,-1,0,-0,0,0,-1),Size=Vector3.new(216.000000,32.000000,32.000000)},{Part=pz[26],CFrame=CFrame.new(30,92.5,-30,1,0,0,0,1,0,0,0,1),Size=Vector3.new(4.000000,184.000000,4.000000)},{Part=pz[27],CFrame=CFrame.new(-9,21.500015258789062,-32.10003662109375,1,0,0,0,1,0,0,0,1),Size=Vector3.new(16.000000,6.000000,0.200000)},{Part=pz[28],CFrame=CFrame.new(-23.5,33,-32.10003662109375,0,0,-1,0,1,0,1,0,0),Size=Vector3.new(0.200000,5.000000,5.000000)},{Part=pz[29],CFrame=CFrame.new(0,185.00039672851562,-0.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(56.000000,1.000000,55.000000)},{Part=pz[30],CFrame=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(96.000000,1.000000,96.000000)},{Part=pz[31],CFrame=CFrame.new(0,8.5,-40,1,0,0,0,1,0,0,0,1),Size=Vector3.new(64.000000,16.000000,16.000000)},{Part=pz[32],CFrame=CFrame.new(-24,29,-31.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,1.000000,1.000000)},{Part=pz[33],CFrame=CFrame.new(0,92.5,31.79998779296875,0,0,1,-1,0,0,0,-1,0),Size=Vector3.new(184.000000,0.400000,56.000000)},{Part=pz[34],CFrame=CFrame.new(-25.5,5.9999542236328125,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[35],CFrame=CFrame.new(-27.5,45.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,89.000000,1.000000)},{Part=pz[36],CFrame=CFrame.new(-25.5,1.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[37],CFrame=CFrame.new(-25.5,11.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[38],CFrame=CFrame.new(-25.5,7.9999847412109375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[39],CFrame=CFrame.new(-25.5,9.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[40],CFrame=CFrame.new(-23.5,45.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,89.000000,1.000000)},{Part=pz[41],CFrame=CFrame.new(-25.5,3.9999542236328125,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[42],CFrame=CFrame.new(-25.5,39.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[43],CFrame=CFrame.new(-25.5,21.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[44],CFrame=CFrame.new(-25.5,33.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[45],CFrame=CFrame.new(-25.5,44.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[46],CFrame=CFrame.new(-25.5,42.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[47],CFrame=CFrame.new(-25.5,46.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[48],CFrame=CFrame.new(-25.5,49.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
c({'SyncResize',{{Part=pz[49],CFrame=CFrame.new(-25.5,51.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[50],CFrame=CFrame.new(-25.5,55.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[51],CFrame=CFrame.new(-25.5,32.000091552734375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[52],CFrame=CFrame.new(-25.5,28.000015258789062,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[53],CFrame=CFrame.new(-25.5,14,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[54],CFrame=CFrame.new(-25.5,62.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[55],CFrame=CFrame.new(-25.5,19.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[56],CFrame=CFrame.new(-25.5,26.000015258789062,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[57],CFrame=CFrame.new(-25.5,16.00006103515625,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[58],CFrame=CFrame.new(-25.5,53.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[59],CFrame=CFrame.new(-25.5,48.00004577636719,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[60],CFrame=CFrame.new(-25.5,17.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[61],CFrame=CFrame.new(-25.5,30.000045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[62],CFrame=CFrame.new(-25.5,57.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[63],CFrame=CFrame.new(-25.5,59.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[64],CFrame=CFrame.new(-25.5,23.999969482421875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[65],CFrame=CFrame.new(-25.5,35.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[66],CFrame=CFrame.new(-25.5,37.99998474121094,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[67],CFrame=CFrame.new(-25.5,67.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[68],CFrame=CFrame.new(-25.5,69.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[69],CFrame=CFrame.new(-25.5,79.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[70],CFrame=CFrame.new(-25.5,83.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[71],CFrame=CFrame.new(-25.5,65.9998779296875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[72],CFrame=CFrame.new(-25.5,75.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[73],CFrame=CFrame.new(-25.5,71.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[74],CFrame=CFrame.new(-25.5,77.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[75],CFrame=CFrame.new(-25.5,63.9998779296875,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[76],CFrame=CFrame.new(-25.5,73.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[77],CFrame=CFrame.new(-25.5,87.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[78],CFrame=CFrame.new(-25.5,81.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[79],CFrame=CFrame.new(-25.5,85.99984741210938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[80],CFrame=CFrame.new(4.5,92.25,-31.79998779296875,0,0,1,-1,0,0,0,-1,0),Size=Vector3.new(184.500000,0.400000,47.000000)},{Part=pz[81],CFrame=CFrame.new(23.5,137.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,97.000000,1.000000)},{Part=pz[82],CFrame=CFrame.new(25.5,90.00022888183594,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[83],CFrame=CFrame.new(25.5,100.00028991699219,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[84],CFrame=CFrame.new(25.5,96.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[85],CFrame=CFrame.new(25.5,102.00032043457031,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[86],CFrame=CFrame.new(25.5,106.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[87],CFrame=CFrame.new(25.5,108.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[88],CFrame=CFrame.new(27.5,137.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,97.000000,1.000000)},{Part=pz[89],CFrame=CFrame.new(25.5,98.00028991699219,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[90],CFrame=CFrame.new(25.5,104.00032043457031,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[91],CFrame=CFrame.new(25.5,94.000244140625,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[92],CFrame=CFrame.new(25.5,92.000244140625,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[93],CFrame=CFrame.new(25.5,110.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[94],CFrame=CFrame.new(25.5,114.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[95],CFrame=CFrame.new(25.5,134.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[96],CFrame=CFrame.new(25.5,140.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)}}})
c({'SyncResize',{{Part=pz[97],CFrame=CFrame.new(25.5,138.0003662109375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[98],CFrame=CFrame.new(25.5,142.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[99],CFrame=CFrame.new(25.5,130.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[100],CFrame=CFrame.new(25.5,144.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[101],CFrame=CFrame.new(25.5,150.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[102],CFrame=CFrame.new(25.5,136.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[103],CFrame=CFrame.new(25.5,148.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[104],CFrame=CFrame.new(25.5,152.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[105],CFrame=CFrame.new(25.5,154.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[106],CFrame=CFrame.new(25.5,156.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[107],CFrame=CFrame.new(25.5,146.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[108],CFrame=CFrame.new(25.5,112.00027465820312,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[109],CFrame=CFrame.new(25.5,122.00030517578125,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[110],CFrame=CFrame.new(25.5,116.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[111],CFrame=CFrame.new(25.5,120.0003662109375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[112],CFrame=CFrame.new(25.5,124.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[113],CFrame=CFrame.new(25.5,126.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[114],CFrame=CFrame.new(25.5,128.00033569335938,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[115],CFrame=CFrame.new(25.5,132.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[116],CFrame=CFrame.new(25.5,118.0003662109375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[117],CFrame=CFrame.new(25.5,170.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[118],CFrame=CFrame.new(25.5,158.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[119],CFrame=CFrame.new(25.5,168.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[120],CFrame=CFrame.new(25.5,176.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[121],CFrame=CFrame.new(25.5,162.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[122],CFrame=CFrame.new(25.5,160.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[123],CFrame=CFrame.new(25.5,164.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[124],CFrame=CFrame.new(25.5,166.00045776367188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[125],CFrame=CFrame.new(25.5,174.00039672851562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[126],CFrame=CFrame.new(25.5,172.00042724609375,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[127],CFrame=CFrame.new(-24,5.5,-29.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,10.000000,1.000000)},{Part=pz[128],CFrame=CFrame.new(0,185,-30,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(4.000000,1.000000,56.000000)},{Part=pz[129],CFrame=CFrame.new(-30,185,0,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(64.000000,1.000000,4.000000)},{Part=pz[130],CFrame=CFrame.new(-24,6.5,-30.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,12.000000,1.000000)},{Part=pz[131],CFrame=CFrame.new(-24,2.5,-26.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,4.000000,1.000000)},{Part=pz[132],CFrame=CFrame.new(-24,3.5,-27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,6.000000,1.000000)},{Part=pz[133],CFrame=CFrame.new(-24,4.4999847412109375,-28.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,8.000000,1.000000)},{Part=pz[134],CFrame=CFrame.new(-24,7.5,-31.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,14.000000,1.000000)},{Part=pz[135],CFrame=CFrame.new(-31.79998779296875,92.5,0,0,1,0,-1,0,0,0,0,1),Size=Vector3.new(184.000000,0.400000,56.000000)},{Part=pz[136],CFrame=CFrame.new(31.5,187,31.5,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,3.000000,1.000000)},{Part=pz[137],CFrame=CFrame.new(0.000244140625,188.99996948242188,-31.5001220703125,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,1.000000,62.000000)},{Part=pz[138],CFrame=CFrame.new(-31.499755859375,188.99996948242188,-0.0001220703125,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(64.000000,1.000000,1.000000)},{Part=pz[139],CFrame=CFrame.new(-31.499755859375,187,31.4998779296875,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,3.000000,1.000000)},{Part=pz[140],CFrame=CFrame.new(-23.45001220703125,107,-31.79998779296875,0,0,1,-1,0,0,0,-1,0),Size=Vector3.new(155.000000,0.400000,9.100000)},{Part=pz[141],CFrame=CFrame.new(-19.5,15,-31.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(1.000000,29.000000,1.000000)},{Part=pz[142],CFrame=CFrame.new(-24,1.5,-25.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(8.000000,2.000000,1.000000)},{Part=pz[143],CFrame=CFrame.new(25.5,183.99990844726562,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[144],CFrame=CFrame.new(0,89,29.79998779296875,1,0,0,0,1,0,0,0,1),Size=Vector3.new(56.000000,1.000000,3.600000)}}})
c({'SyncResize',{{Part=pz[145],CFrame=CFrame.new(25.5,181.99996948242188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[146],CFrame=CFrame.new(25.5,178,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[147],CFrame=CFrame.new(25.5,179.99996948242188,27.5,1,0,0,0,1,0,0,0,1),Size=Vector3.new(3.000000,1.000000,1.000000)},{Part=pz[148],CFrame=CFrame.new(-30,92.5,-30,1,0,0,0,1,0,0,0,1),Size=Vector3.new(4.000000,184.000000,4.000000)},{Part=pz[149],CFrame=CFrame.new(-30,92.5,30,1,0,0,0,1,0,0,0,1),Size=Vector3.new(4.000000,184.000000,4.000000)},{Part=pz[150],CFrame=CFrame.new(31.79998779296875,92.5,0,0,1,0,-1,0,0,0,0,1),Size=Vector3.new(184.000000,0.400000,56.000000)},{Part=pz[151],CFrame=CFrame.new(30,92.5,30,1,0,0,0,1,0,0,0,1),Size=Vector3.new(4.000000,184.000000,4.000000)},{Part=pz[152],CFrame=CFrame.new(40,8.5,0,0,0,-1,0,1,0,1,0,0),Size=Vector3.new(64.000000,16.000000,16.000000)},{Part=pz[153],CFrame=CFrame.new(-40,8.5,0,0,0,1,0,1,0,-0.9999998807907104,0,0),Size=Vector3.new(64.000000,16.000000,16.000000)},{Part=pz[154],CFrame=CFrame.new(-31.499755859375,187,-31.5001220703125,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(1.000000,3.000000,1.000000)},{Part=pz[155],CFrame=CFrame.new(-40,8.5,-40,0,0,-1,0,1,0,1,0,0),Size=Vector3.new(16.000000,16.000000,16.000000)},{Part=pz[156],CFrame=CFrame.new(-40,8.5,40,1,0,0,0,1,0,0,0,1),Size=Vector3.new(16.000000,16.000000,16.000000)},{Part=pz[157],CFrame=CFrame.new(0,8.5,40,-1,0,0,0,1,0,0,0,-1),Size=Vector3.new(64.000000,16.000000,16.000000)},{Part=pz[158],CFrame=CFrame.new(0,79.5,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(64.000000,158.000000,64.000000)},{Part=pz[159],CFrame=CFrame.new(0,91,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(64.000000,181.000000,64.000000)},{Part=pz[160],CFrame=CFrame.new(15.8499755859375,189.5,0,0,0,1,0,1,0,-1,0,0),Size=Vector3.new(3.500000,3.500000,0.500000)},{Part=pz[161],CFrame=CFrame.new(15.5,189.5,0,0,0,1,-1,0,0,0,-1,0),Size=Vector3.new(4.000000,4.000000,1.000000)},{Part=pz[162],CFrame=CFrame.new(-24,8.5,-28,-1,0,0,0,1,0,0,0,-1),Size=Vector3.new(8.000000,16.000000,8.000000)},{Part=pz[163],CFrame=CFrame.new(0,227,0,1,0,0,0,1,0,0,0,1),Size=Vector3.new(64.000000,1.000000,64.000000)}}})
c({'SyncColor',{{Part=pz[1],Color=Color3.new(0.972549,0.972549,0.972549),UnionColoring=false},{Part=pz[2],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[3],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[4],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[5],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[6],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[7],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[8],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[9],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[10],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[11],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[12],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[13],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[14],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[15],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[16],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[17],Color=Color3.new(1.000000,0.000000,0.000000),UnionColoring=false},{Part=pz[18],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[19],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[20],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[21],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[22],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[23],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[24],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[25],Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false},{Part=pz[26],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[27],Color=Color3.new(0.792157,0.796078,0.819608),UnionColoring=false},{Part=pz[28],Color=Color3.new(0.972549,0.972549,0.972549),UnionColoring=false},{Part=pz[29],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[30],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[31],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[32],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[33],Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false},{Part=pz[34],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[35],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[36],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[37],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[38],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[39],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[40],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[41],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[42],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[43],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[44],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[45],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[46],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[47],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[48],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
c({'SyncColor',{{Part=pz[49],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[50],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[51],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[52],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[53],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[54],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[55],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[56],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[57],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[58],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[59],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[60],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[61],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[62],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[63],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[64],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[65],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[66],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[67],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[68],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[69],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[70],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[71],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[72],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[73],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[74],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[75],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[76],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[77],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[78],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[79],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[80],Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false},{Part=pz[81],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[82],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[83],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[84],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[85],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[86],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[87],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[88],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[89],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[90],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[91],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[92],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[93],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[94],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[95],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[96],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
c({'SyncColor',{{Part=pz[97],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[98],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[99],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[100],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[101],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[102],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[103],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[104],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[105],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[106],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[107],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[108],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[109],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[110],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[111],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[112],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[113],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[114],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[115],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[116],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[117],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[118],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[119],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[120],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[121],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[122],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[123],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[124],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[125],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[126],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[127],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[128],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[129],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[130],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[131],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[132],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[133],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[134],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[135],Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false},{Part=pz[136],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[137],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[138],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[139],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[140],Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false},{Part=pz[141],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[142],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[143],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[144],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
c({'SyncColor',{{Part=pz[145],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[146],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[147],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[148],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[149],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[150],Color=Color3.new(0.388235,0.372549,0.384314),UnionColoring=false},{Part=pz[151],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[152],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[153],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[154],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[155],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[156],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[157],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[158],Color=Color3.new(0.929412,0.917647,0.917647),UnionColoring=false},{Part=pz[159],Color=Color3.new(0.929412,0.917647,0.917647),UnionColoring=false},{Part=pz[160],Color=Color3.new(0.015686,0.686275,0.925490),UnionColoring=false},{Part=pz[161],Color=Color3.new(0.356863,0.364706,0.411765),UnionColoring=false},{Part=pz[162],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false},{Part=pz[163],Color=Color3.new(0.639216,0.635294,0.647059),UnionColoring=false}}})
c({'SyncMaterial',{{Part=pz[1],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[2],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[3],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[4],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[5],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[6],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[7],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[8],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[9],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[10],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[11],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[12],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[13],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[14],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[15],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[16],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[17],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[18],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[19],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[20],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[21],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[22],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[23],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[24],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[25],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[26],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[27],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[28],Material=Enum.Material.Neon,Transparency=0.000000,Reflectance=0.000000},{Part=pz[29],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[30],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[31],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[32],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[33],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000},{Part=pz[34],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[35],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[36],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[37],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[38],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[39],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[40],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[41],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[42],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[43],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[44],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[45],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[46],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[47],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[48],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
c({'SyncMaterial',{{Part=pz[49],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[50],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[51],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[52],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[53],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[54],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[55],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[56],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[57],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[58],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[59],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[60],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[61],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[62],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[63],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[64],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[65],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[66],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[67],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[68],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[69],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[70],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[71],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[72],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[73],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[74],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[75],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[76],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[77],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[78],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[79],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[80],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000},{Part=pz[81],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[82],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[83],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[84],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[85],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[86],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[87],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[88],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[89],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[90],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[91],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[92],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[93],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[94],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[95],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[96],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
c({'SyncMaterial',{{Part=pz[97],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[98],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[99],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[100],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[101],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[102],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[103],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[104],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[105],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[106],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[107],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[108],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[109],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[110],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[111],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[112],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[113],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[114],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[115],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[116],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[117],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[118],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[119],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[120],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[121],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[122],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[123],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[124],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[125],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[126],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[127],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[128],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[129],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[130],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[131],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[132],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[133],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[134],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[135],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000},{Part=pz[136],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[137],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[138],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[139],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[140],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000},{Part=pz[141],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[142],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[143],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[144],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000}}})
c({'SyncMaterial',{{Part=pz[145],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[146],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[147],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[148],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[149],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[150],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000},{Part=pz[151],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[152],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[153],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[154],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[155],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[156],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[157],Material=Enum.Material.Marble,Transparency=0.000000,Reflectance=0.000000},{Part=pz[158],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000},{Part=pz[159],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000},{Part=pz[160],Material=Enum.Material.Glass,Transparency=0.000000,Reflectance=0.000000},{Part=pz[161],Material=Enum.Material.Plastic,Transparency=0.000000,Reflectance=0.000000},{Part=pz[162],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000},{Part=pz[163],Material=Enum.Material.Plastic,Transparency=1.000000,Reflectance=0.000000}}})
c({'SyncCollision',{{Part=pz[1],CanCollide=true},{Part=pz[2],CanCollide=true},{Part=pz[3],CanCollide=true},{Part=pz[4],CanCollide=true},{Part=pz[5],CanCollide=true},{Part=pz[6],CanCollide=true},{Part=pz[7],CanCollide=true},{Part=pz[8],CanCollide=true},{Part=pz[9],CanCollide=true},{Part=pz[10],CanCollide=true},{Part=pz[11],CanCollide=true},{Part=pz[12],CanCollide=true},{Part=pz[13],CanCollide=true},{Part=pz[14],CanCollide=true},{Part=pz[15],CanCollide=true},{Part=pz[16],CanCollide=true},{Part=pz[17],CanCollide=true},{Part=pz[18],CanCollide=true},{Part=pz[19],CanCollide=true},{Part=pz[20],CanCollide=true},{Part=pz[21],CanCollide=true},{Part=pz[22],CanCollide=true},{Part=pz[23],CanCollide=true},{Part=pz[24],CanCollide=true},{Part=pz[25],CanCollide=true},{Part=pz[26],CanCollide=true},{Part=pz[27],CanCollide=true},{Part=pz[28],CanCollide=true},{Part=pz[29],CanCollide=true},{Part=pz[30],CanCollide=true},{Part=pz[31],CanCollide=true},{Part=pz[32],CanCollide=true},{Part=pz[33],CanCollide=true},{Part=pz[34],CanCollide=true},{Part=pz[35],CanCollide=true},{Part=pz[36],CanCollide=true},{Part=pz[37],CanCollide=true},{Part=pz[38],CanCollide=true},{Part=pz[39],CanCollide=true},{Part=pz[40],CanCollide=true},{Part=pz[41],CanCollide=true},{Part=pz[42],CanCollide=true},{Part=pz[43],CanCollide=true},{Part=pz[44],CanCollide=true},{Part=pz[45],CanCollide=true},{Part=pz[46],CanCollide=true},{Part=pz[47],CanCollide=true},{Part=pz[48],CanCollide=true}}})
c({'SyncCollision',{{Part=pz[49],CanCollide=true},{Part=pz[50],CanCollide=true},{Part=pz[51],CanCollide=true},{Part=pz[52],CanCollide=true},{Part=pz[53],CanCollide=true},{Part=pz[54],CanCollide=true},{Part=pz[55],CanCollide=true},{Part=pz[56],CanCollide=true},{Part=pz[57],CanCollide=true},{Part=pz[58],CanCollide=true},{Part=pz[59],CanCollide=true},{Part=pz[60],CanCollide=true},{Part=pz[61],CanCollide=true},{Part=pz[62],CanCollide=true},{Part=pz[63],CanCollide=true},{Part=pz[64],CanCollide=true},{Part=pz[65],CanCollide=true},{Part=pz[66],CanCollide=true},{Part=pz[67],CanCollide=true},{Part=pz[68],CanCollide=true},{Part=pz[69],CanCollide=true},{Part=pz[70],CanCollide=true},{Part=pz[71],CanCollide=true},{Part=pz[72],CanCollide=true},{Part=pz[73],CanCollide=true},{Part=pz[74],CanCollide=true},{Part=pz[75],CanCollide=true},{Part=pz[76],CanCollide=true},{Part=pz[77],CanCollide=true},{Part=pz[78],CanCollide=true},{Part=pz[79],CanCollide=true},{Part=pz[80],CanCollide=true},{Part=pz[81],CanCollide=true},{Part=pz[82],CanCollide=true},{Part=pz[83],CanCollide=true},{Part=pz[84],CanCollide=true},{Part=pz[85],CanCollide=true},{Part=pz[86],CanCollide=true},{Part=pz[87],CanCollide=true},{Part=pz[88],CanCollide=true},{Part=pz[89],CanCollide=true},{Part=pz[90],CanCollide=true},{Part=pz[91],CanCollide=true},{Part=pz[92],CanCollide=true},{Part=pz[93],CanCollide=true},{Part=pz[94],CanCollide=true},{Part=pz[95],CanCollide=true},{Part=pz[96],CanCollide=true}}})
c({'SyncCollision',{{Part=pz[97],CanCollide=true},{Part=pz[98],CanCollide=true},{Part=pz[99],CanCollide=true},{Part=pz[100],CanCollide=true},{Part=pz[101],CanCollide=true},{Part=pz[102],CanCollide=true},{Part=pz[103],CanCollide=true},{Part=pz[104],CanCollide=true},{Part=pz[105],CanCollide=true},{Part=pz[106],CanCollide=true},{Part=pz[107],CanCollide=true},{Part=pz[108],CanCollide=true},{Part=pz[109],CanCollide=true},{Part=pz[110],CanCollide=true},{Part=pz[111],CanCollide=true},{Part=pz[112],CanCollide=true},{Part=pz[113],CanCollide=true},{Part=pz[114],CanCollide=true},{Part=pz[115],CanCollide=true},{Part=pz[116],CanCollide=true},{Part=pz[117],CanCollide=true},{Part=pz[118],CanCollide=true},{Part=pz[119],CanCollide=true},{Part=pz[120],CanCollide=true},{Part=pz[121],CanCollide=true},{Part=pz[122],CanCollide=true},{Part=pz[123],CanCollide=true},{Part=pz[124],CanCollide=true},{Part=pz[125],CanCollide=true},{Part=pz[126],CanCollide=true},{Part=pz[127],CanCollide=false},{Part=pz[128],CanCollide=true},{Part=pz[129],CanCollide=true},{Part=pz[130],CanCollide=false},{Part=pz[131],CanCollide=false},{Part=pz[132],CanCollide=false},{Part=pz[133],CanCollide=false},{Part=pz[134],CanCollide=false},{Part=pz[135],CanCollide=true},{Part=pz[136],CanCollide=true},{Part=pz[137],CanCollide=true},{Part=pz[138],CanCollide=true},{Part=pz[139],CanCollide=true},{Part=pz[140],CanCollide=true},{Part=pz[141],CanCollide=true},{Part=pz[142],CanCollide=false},{Part=pz[143],CanCollide=true},{Part=pz[144],CanCollide=true}}})
c({'SyncCollision',{{Part=pz[145],CanCollide=true},{Part=pz[146],CanCollide=true},{Part=pz[147],CanCollide=true},{Part=pz[148],CanCollide=true},{Part=pz[149],CanCollide=true},{Part=pz[150],CanCollide=true},{Part=pz[151],CanCollide=true},{Part=pz[152],CanCollide=true},{Part=pz[153],CanCollide=true},{Part=pz[154],CanCollide=true},{Part=pz[155],CanCollide=true},{Part=pz[156],CanCollide=true},{Part=pz[157],CanCollide=true},{Part=pz[158],CanCollide=false},{Part=pz[159],CanCollide=false},{Part=pz[160],CanCollide=true},{Part=pz[161],CanCollide=true},{Part=pz[162],CanCollide=true},{Part=pz[163],CanCollide=false}}})
c({'SyncAnchor',{{Part=pz[1],Anchored=true},{Part=pz[2],Anchored=true},{Part=pz[3],Anchored=true},{Part=pz[4],Anchored=true},{Part=pz[5],Anchored=true},{Part=pz[6],Anchored=true},{Part=pz[7],Anchored=true},{Part=pz[8],Anchored=true},{Part=pz[9],Anchored=true},{Part=pz[10],Anchored=true},{Part=pz[11],Anchored=true},{Part=pz[12],Anchored=true},{Part=pz[13],Anchored=true},{Part=pz[14],Anchored=true},{Part=pz[15],Anchored=true},{Part=pz[16],Anchored=true},{Part=pz[17],Anchored=true},{Part=pz[18],Anchored=true},{Part=pz[19],Anchored=true},{Part=pz[20],Anchored=true},{Part=pz[21],Anchored=true},{Part=pz[22],Anchored=true},{Part=pz[23],Anchored=true},{Part=pz[24],Anchored=true},{Part=pz[25],Anchored=true},{Part=pz[26],Anchored=true},{Part=pz[27],Anchored=true},{Part=pz[28],Anchored=true},{Part=pz[29],Anchored=true},{Part=pz[30],Anchored=true},{Part=pz[31],Anchored=true},{Part=pz[32],Anchored=true},{Part=pz[33],Anchored=true},{Part=pz[34],Anchored=true},{Part=pz[35],Anchored=true},{Part=pz[36],Anchored=true},{Part=pz[37],Anchored=true},{Part=pz[38],Anchored=true},{Part=pz[39],Anchored=true},{Part=pz[40],Anchored=true},{Part=pz[41],Anchored=true},{Part=pz[42],Anchored=true},{Part=pz[43],Anchored=true},{Part=pz[44],Anchored=true},{Part=pz[45],Anchored=true},{Part=pz[46],Anchored=true},{Part=pz[47],Anchored=true},{Part=pz[48],Anchored=true}}})
c({'SyncAnchor',{{Part=pz[49],Anchored=true},{Part=pz[50],Anchored=true},{Part=pz[51],Anchored=true},{Part=pz[52],Anchored=true},{Part=pz[53],Anchored=true},{Part=pz[54],Anchored=true},{Part=pz[55],Anchored=true},{Part=pz[56],Anchored=true},{Part=pz[57],Anchored=true},{Part=pz[58],Anchored=true},{Part=pz[59],Anchored=true},{Part=pz[60],Anchored=true},{Part=pz[61],Anchored=true},{Part=pz[62],Anchored=true},{Part=pz[63],Anchored=true},{Part=pz[64],Anchored=true},{Part=pz[65],Anchored=true},{Part=pz[66],Anchored=true},{Part=pz[67],Anchored=true},{Part=pz[68],Anchored=true},{Part=pz[69],Anchored=true},{Part=pz[70],Anchored=true},{Part=pz[71],Anchored=true},{Part=pz[72],Anchored=true},{Part=pz[73],Anchored=true},{Part=pz[74],Anchored=true},{Part=pz[75],Anchored=true},{Part=pz[76],Anchored=true},{Part=pz[77],Anchored=true},{Part=pz[78],Anchored=true},{Part=pz[79],Anchored=true},{Part=pz[80],Anchored=true},{Part=pz[81],Anchored=true},{Part=pz[82],Anchored=true},{Part=pz[83],Anchored=true},{Part=pz[84],Anchored=true},{Part=pz[85],Anchored=true},{Part=pz[86],Anchored=true},{Part=pz[87],Anchored=true},{Part=pz[88],Anchored=true},{Part=pz[89],Anchored=true},{Part=pz[90],Anchored=true},{Part=pz[91],Anchored=true},{Part=pz[92],Anchored=true},{Part=pz[93],Anchored=true},{Part=pz[94],Anchored=true},{Part=pz[95],Anchored=true},{Part=pz[96],Anchored=true}}})
c({'SyncAnchor',{{Part=pz[97],Anchored=true},{Part=pz[98],Anchored=true},{Part=pz[99],Anchored=true},{Part=pz[100],Anchored=true},{Part=pz[101],Anchored=true},{Part=pz[102],Anchored=true},{Part=pz[103],Anchored=true},{Part=pz[104],Anchored=true},{Part=pz[105],Anchored=true},{Part=pz[106],Anchored=true},{Part=pz[107],Anchored=true},{Part=pz[108],Anchored=true},{Part=pz[109],Anchored=true},{Part=pz[110],Anchored=true},{Part=pz[111],Anchored=true},{Part=pz[112],Anchored=true},{Part=pz[113],Anchored=true},{Part=pz[114],Anchored=true},{Part=pz[115],Anchored=true},{Part=pz[116],Anchored=true},{Part=pz[117],Anchored=true},{Part=pz[118],Anchored=true},{Part=pz[119],Anchored=true},{Part=pz[120],Anchored=true},{Part=pz[121],Anchored=true},{Part=pz[122],Anchored=true},{Part=pz[123],Anchored=true},{Part=pz[124],Anchored=true},{Part=pz[125],Anchored=true},{Part=pz[126],Anchored=true},{Part=pz[127],Anchored=true},{Part=pz[128],Anchored=true},{Part=pz[129],Anchored=true},{Part=pz[130],Anchored=true},{Part=pz[131],Anchored=true},{Part=pz[132],Anchored=true},{Part=pz[133],Anchored=true},{Part=pz[134],Anchored=true},{Part=pz[135],Anchored=true},{Part=pz[136],Anchored=true},{Part=pz[137],Anchored=true},{Part=pz[138],Anchored=true},{Part=pz[139],Anchored=true},{Part=pz[140],Anchored=true},{Part=pz[141],Anchored=true},{Part=pz[142],Anchored=true},{Part=pz[143],Anchored=true},{Part=pz[144],Anchored=true}}})
c({'SyncAnchor',{{Part=pz[145],Anchored=true},{Part=pz[146],Anchored=true},{Part=pz[147],Anchored=true},{Part=pz[148],Anchored=true},{Part=pz[149],Anchored=true},{Part=pz[150],Anchored=true},{Part=pz[151],Anchored=true},{Part=pz[152],Anchored=true},{Part=pz[153],Anchored=true},{Part=pz[154],Anchored=true},{Part=pz[155],Anchored=true},{Part=pz[156],Anchored=true},{Part=pz[157],Anchored=true},{Part=pz[158],Anchored=true},{Part=pz[159],Anchored=true},{Part=pz[160],Anchored=true},{Part=pz[161],Anchored=true},{Part=pz[162],Anchored=true},{Part=pz[163],Anchored=true}}})
c({'SetName',{pz[1],pz[2],pz[3],pz[4],pz[5],pz[6],pz[7],pz[8],pz[9],pz[10],pz[11],pz[12],pz[13],pz[14],pz[15],pz[16],pz[17],pz[18],pz[19],pz[20],pz[21],pz[22],pz[23],pz[24],pz[25],pz[26],pz[27],pz[28],pz[29],pz[30],pz[31],pz[32],pz[33],pz[34],pz[35],pz[36],pz[37],pz[38],pz[39],pz[40],pz[41],pz[42],pz[43],pz[44],pz[45],pz[46],pz[47],pz[48]},{'Peak','CornerWedge','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','CornerWedge','RingCore','Part','Part','Part','Part','Root','Wedge','Part','Wall','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part'}})
c({'SetName',{pz[49],pz[50],pz[51],pz[52],pz[53],pz[54],pz[55],pz[56],pz[57],pz[58],pz[59],pz[60],pz[61],pz[62],pz[63],pz[64],pz[65],pz[66],pz[67],pz[68],pz[69],pz[70],pz[71],pz[72],pz[73],pz[74],pz[75],pz[76],pz[77],pz[78],pz[79],pz[80],pz[81],pz[82],pz[83],pz[84],pz[85],pz[86],pz[87],pz[88],pz[89],pz[90],pz[91],pz[92],pz[93],pz[94],pz[95],pz[96]},{'Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Wall','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part'}})
c({'SetName',{pz[97],pz[98],pz[99],pz[100],pz[101],pz[102],pz[103],pz[104],pz[105],pz[106],pz[107],pz[108],pz[109],pz[110],pz[111],pz[112],pz[113],pz[114],pz[115],pz[116],pz[117],pz[118],pz[119],pz[120],pz[121],pz[122],pz[123],pz[124],pz[125],pz[126],pz[127],pz[128],pz[129],pz[130],pz[131],pz[132],pz[133],pz[134],pz[135],pz[136],pz[137],pz[138],pz[139],pz[140],pz[141],pz[142],pz[143],pz[144]},{'Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Part','Wall','Part','Part','Part','Part','Wall','Part','Part','Part','Part'}})
c({'SetName',{pz[145],pz[146],pz[147],pz[148],pz[149],pz[150],pz[151],pz[152],pz[153],pz[154],pz[155],pz[156],pz[157],pz[158],pz[159],pz[160],pz[161],pz[162],pz[163]},{'Part','Part','Part','Part','Part','Wall','Part','Wedge','Wedge','Part','CornerWedge','CornerWedge','Wedge','Defense','Collide','Screen','ComputerRoot','StairCollide','TopLight'}})
c({'SetLocked',{pz[1],pz[2],pz[3],pz[4],pz[5],pz[6],pz[7],pz[8],pz[9],pz[10],pz[11],pz[12],pz[13],pz[14],pz[15],pz[16],pz[17],pz[18],pz[19],pz[20],pz[21],pz[22],pz[23],pz[24],pz[25],pz[26],pz[27],pz[28],pz[29],pz[30],pz[31],pz[32],pz[33],pz[34],pz[35],pz[36],pz[37],pz[38],pz[39],pz[40],pz[41],pz[42],pz[43],pz[44],pz[45],pz[46],pz[47],pz[48],pz[49],pz[50],pz[51],pz[52],pz[53],pz[54],pz[55],pz[56],pz[57],pz[58],pz[59],pz[60],pz[61],pz[62],pz[63],pz[64],pz[65],pz[66],pz[67],pz[68],pz[69],pz[70],pz[71],pz[72],pz[73],pz[74],pz[75],pz[76],pz[77],pz[78],pz[79],pz[80],pz[81],pz[82],pz[83],pz[84],pz[85],pz[86],pz[87],pz[88],pz[89],pz[90],pz[91],pz[92],pz[93],pz[94],pz[95],pz[96],pz[97],pz[98],pz[99],pz[100],pz[101],pz[102],pz[103],pz[104],pz[105],pz[106],pz[107],pz[108],pz[109],pz[110],pz[111],pz[112],pz[113],pz[114],pz[115],pz[116],pz[117],pz[118],pz[119],pz[120],pz[121],pz[122],pz[123],pz[124],pz[125],pz[126],pz[127],pz[128],pz[129],pz[130],pz[131],pz[132],pz[133],pz[134],pz[135],pz[136],pz[137],pz[138],pz[139],pz[140],pz[141],pz[142],pz[143],pz[144],pz[145],pz[146],pz[147],pz[148],pz[149],pz[150],pz[151],pz[152],pz[153],pz[154],pz[155],pz[156],pz[157],pz[158],pz[159],pz[160],pz[161],pz[162],pz[163]},false})
