local P=game:GetService("Players")local R=game:GetService("ReplicatedStorage")local U=game:GetService("UserInputService")
local p=P.LocalPlayer
local C4_MESH=437332079
local C4_TEX=437332085
local C4_SCALE=Vector3.new(0.002,0.002,0.002)
local C4_Y=1
local EXP_RADIUS=30
local BIG_THRESH=2000
local CORROSION_DELAY=3
local BEEP_AUDIO=76810240098992
local EXP_AUDIO=139210252225248
local BEEP_TIME=10
local EXP_SOUND_TIME=3
local placed={}
local autoExp=false
local bigMode=false
local equipped=false
local soundPlaying=false
local f3xRemote=nil
local function g()local t
for _,v in p:GetDescendants()do if v.Name=="SyncAPI"then f3xRemote=v.Parent.SyncAPI.ServerEndpoint return end end
for _,v in R:GetDescendants()do if v.Name=="SyncAPI"then f3xRemote=v.Parent.SyncAPI.ServerEndpoint return end end
end
g()
local function _(...)if f3xRemote then f3xRemote:InvokeServer(unpack({...}))end end
local function A(p,b)_({1="SyncCollision",2={{["Part"]=p,["CanCollide"]=b}}})end
local function B(b,p)_({1="SyncAnchor",2={{["Part"]=p,["Anchored"]=b}}})end
local function C(c,p)_({1="CreatePart",2="Normal",3=c,4=p})end
local function D(p)_({1="Remove",2={p}})end
local function M(p,c)_({1="SyncMove",2={{["Part"]=p,["CFrame"]=c}}})end
local function RZ(p,s,c)_({1="SyncResize",2={{["Part"]=p,["CFrame"]=c,["Size"]=s}}})end
local function W(p,t,l)_({1="CreateWelds",2={p,t},3=l})end
local function S(n,p)_({1="SetName",2={p},3=n})end
local function CM(p)_({1="CreateMeshes",2={{["Part"]=p}}})end
local function SM(p,m)_({1="SyncMesh",2={{["Part"]=p,["MeshId"]="rbxassetid://"..m}}})end
local function ST(p,t)_({1="SyncMesh",2={{["Part"]=p,["TextureId"]="rbxassetid://"..t}}})end
local function MRS(p,s)_({1="SyncMesh",2={{["Part"]=p,["Scale"]=s}}})end
local function MO(p,o)_({1="SyncMesh",2={{["Part"]=p,["Offset"]=o}}})end
local function TR(p,i)_({1="SyncMaterial",2={{["Part"]=p,["Transparency"]=i}}})end
local function CL(p,c)_({1="SyncColor",2={{["Part"]=p,["Color"]=c,["UnionColoring"]=false}}})end
local function DEC(p,t)_({1="CreateDecorations",2={{["Part"]=p,["DecorationType"]=t}}})end
local function SD(p,c,o,r,s)_({1="SyncDecorate",2={{["Part"]=p,["DecorationType"]="Smoke",["Color"]=c,["Opacity"]=o,["RiseVelocity"]=r,["Size"]=s}}})end
local function SF(p,c,sc,h,s)_({1="SyncDecorate",2={{["Part"]=p,["DecorationType"]="Fire",["Color"]=c,["SecondaryColor"]=sc,["Heat"]=h,["Size"]=s}}})end
local RC=R:WaitForChild("HDAdminHDClient").Signals.RequestCommandSilent
local function HM(a)RC:InvokeServer(";music "..tostring(a))end
local function HV(v)RC:InvokeServer(";volume "..tostring(v))end
local function HU()RC:InvokeServer(";unmusic")end
local tool=Instance.new("Tool")tool.Name="C4 Explosive"tool.RequiresHandle=true tool.CanBeDropped=false
local h=Instance.new("Part")h.Name="Handle"h.Size=Vector3.new(1,1,1)h.Transparency=1 h.CanCollide=false h.Parent=tool
tool.Parent=p.Backpack
local function setupHandle()
local handle=tool:FindFirstChild("Handle")if not handle then return end
task.spawn(function()
task.wait(0.5)CM(handle)task.wait(0.4)SM(handle,C4_MESH)task.wait(0.15)ST(handle,C4_TEX)task.wait(0.15)MRS(handle,C4_SCALE)task.wait(0.15)MO(handle,Vector3.new(0,C4_Y,0))task.wait(0.1)TR(handle,0)
end)
end
tool.Equipped:Connect(function()equipped=true task.spawn(setupHandle)end)
tool.Unequipped:Connect(function()equipped=false end)
local function getSurfaceCF(tp,hp,hn)
local up=hn
local look
if math.abs(up:Dot(Vector3.new(0,1,0)))>0.99 then look=Vector3.new(1,0,0)else look=Vector3.new(0,1,0)end
local right=up:Cross(look).Unit
look=right:Cross(up).Unit
return CFrame.new(hp.X,hp.Y,hp.Z,right.X,up.X,look.X,right.Y,up.Y,look.Y,right.Z,up.Z,look.Z)
end
local function playSound(aid,dur)
if soundPlaying then return false end
soundPlaying=true
task.spawn(function()
HV("inf")task.wait(0.3)HM(aid)task.wait(dur)HU()task.wait(0.5)soundPlaying=false
end)
return true
end
local function explode(entry)
local cp=entry.part if not cp or not cp.Parent then return end
local ep=cp.Position
playSound(EXP_AUDIO,EXP_SOUND_TIME)
DEC(cp,"Smoke")task.wait(0.1)SD(cp,Color3.fromRGB(40,40,40),0.8,15,15)task.wait(0.1)DEC(cp,"Fire")task.wait(0.1)SF(cp,Color3.fromRGB(255,100,0),Color3.fromRGB(255,200,0),25,20)
local aff={}
for _,o in workspace:GetDescendants()do
if o:IsA("BasePart")and o~=cp and not o:IsDescendantOf(p.Character or p.CharacterAdded:Wait())then
local dist=(o.Position-ep).Magnitude
if dist<=EXP_RADIUS then
local vol=o.Size.X*o.Size.Y*o.Size.Z
local isBig=vol>BIG_THRESH
if not(isBig and not bigMode)then table.insert(aff,{part=o,dist=dist})end
end
end
end
for _,e in pairs(aff)do B(false,e.part)task.wait(0.05)end
for _,e in pairs(aff)do
DEC(e.part,"Fire")task.wait(0.1)
SF(e.part,Color3.fromRGB(255,math.random(50,150),0),Color3.fromRGB(255,math.random(150,255),0),math.random(5,20),math.random(3,18))
task.wait(0.05)
end
task.spawn(function()
task.wait(CORROSION_DELAY)
for _,e in pairs(aff)do
if e.part and e.part.Parent then
_({1="SyncMaterial",2={{["Part"]=e.part,["Material"]=Enum.Material.CorrodedMetal}})task.wait(0.05)
CL(e.part,Color3.fromRGB(math.random(40,80),math.random(30,50),math.random(20,40)))task.wait(0.05)
end
end
end)
task.wait(0.5)
if cp and cp.Parent then D(cp)end
end
local function detonateAll()
if #placed==0 then return end
local t={}for _,e in pairs(placed)do table.insert(t,e)end placed={}
for _,e in pairs(t)do task.spawn(function()explode(e)end)task.wait(0.1)end
end
local function autoExpSeq(cp)
if not cp or not cp.Parent then return end
playSound(BEEP_AUDIO,BEEP_TIME)
local start=tick()
while tick()-start<BEEP_TIME do
if not cp or not cp.Parent then return end
local elapsed=tick()-start
local progress=elapsed/BEEP_TIME
local flash=math.max(0.5-(progress*0.4),0.05)
CL(cp,Color3.fromRGB(255,0,0))task.wait(flash*0.3)
if not cp or not cp.Parent then return end
CL(cp,Color3.fromRGB(80,80,60))task.wait(flash*0.7)
end
for idx,e in pairs(placed)do
if e.part==cp then
table.remove(placed,idx)
playSound(EXP_AUDIO,EXP_SOUND_TIME)
explode(e)break
end
end
end
local function placeC4()
if not equipped then return end
local mouse=p:GetMouse()
local target=mouse.Target if not target then return end
local char=p.Character or p.CharacterAdded:Wait()
if target:IsDescendantOf(char)then return end
local hitPos=mouse.Hit.Position
local hitNormal=Vector3.new(0,1,0)
local rp=RaycastParams.new()rp.FilterType=Enum.RaycastFilterType.Exclude rp.FilterDescendantsInstances={char}
local origin=mouse.Origin.Position
local direction=(hitPos-origin).Unit*1000
local result=workspace:Raycast(origin,direction,rp)
if result then hitNormal=result.Normal hitPos=result.Position end
local surfaceCF=getSurfaceCF(target,hitPos,hitNormal)
C(surfaceCF,workspace)task.wait(0.6)
local c4part=nil
for _,v in pairs(workspace:GetChildren())do
if v:IsA("BasePart")and v.Name=="Part"and(v.Position-hitPos).Magnitude<5 then c4part=v end
end
if not c4part then return end
RZ(c4part,Vector3.new(1,0.4,1.5),surfaceCF)task.wait(0.15)B(true,c4part)task.wait(0.1)CL(c4part,Color3.fromRGB(80,80,60))task.wait(0.1)CM(c4part)task.wait(0.35)SM(c4part,C4_MESH)task.wait(0.1)ST(c4part,C4_TEX)task.wait(0.1)MRS(c4part,C4_SCALE)task.wait(0.1)MO(c4part,Vector3.new(0,C4_Y,0))task.wait(0.1)M(c4part,surfaceCF)task.wait(0.1)W(c4part,target,target)task.wait(0.1)S("C4_Explosive",c4part)task.wait(0.1)
table.insert(placed,{part=c4part,target=target})
if autoExp then task.spawn(function()autoExpSeq(c4part)end)end
end
tool.Activated:Connect(function()task.spawn(placeC4)end)
U.InputBegan:Connect(function(input,gp)
if gp then return end
if input.KeyCode==Enum.KeyCode.G then task.spawn(detonateAll)end
if input.KeyCode==Enum.KeyCode.V then autoExp=not autoExp end
if input.KeyCode==Enum.KeyCode.K then bigMode=not bigMode end
end)
p.CharacterAdded:Connect(function(newChar)
task.wait(1)
g()
if not p.Backpack:FindFirstChild("C4 Explosive")then tool.Parent=p.Backpack end
if equipped then task.spawn(setupHandle)end
end)
