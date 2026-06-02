local a=game:GetService("Players")
local b=game:GetService("ReplicatedStorage")
local c=game:GetService("Workspace")
local d=a.LocalPlayer
local e=d.Character or d.CharacterAdded:Wait()
local f
local g=0
while not f and g<20 do
g=g+1
for _,v in ipairs(d:WaitForChild("Backpack",3):GetDescendants()) do
if v.Name=="SyncAPI" then f=v.Parent;break end
end
if not f and d.Character then
for _,v in ipairs(d.Character:GetDescendants()) do
if v.Name=="SyncAPI" then f=v.Parent;break end
end
end
if not f then
for _,v in ipairs(b:GetDescendants()) do
if v.Name=="SyncAPI" then f=v.Parent;break end
end
end
if not f then task.wait(0.25) end
end
if not f then return end
local h=f:FindFirstChild("SyncAPI")
if not h then return end
local i=h:FindFirstChild("ServerEndpoint")
if not i then return end
local function j(k) return i:InvokeServer(unpack(k)) end

local l={}
local lp={}
if e:FindFirstChild("Head") and e.Head:IsA("BasePart") then
l[#l+1]=e.Head
lp[#lp+1]=e.Head.Position
end
for _,m in ipairs(a:GetPlayers()) do
if m~=d and m.Character and m.Character:FindFirstChild("Head") and m.Character.Head:IsA("BasePart") then
l[#l+1]=m.Character.Head
lp[#lp+1]=m.Character.Head.Position
end
end
for _,n in ipairs(c:GetChildren()) do
if n:IsA("Model") and n:FindFirstChildOfClass("Humanoid") then
local o=false
for _,m in ipairs(a:GetPlayers()) do
if m.Character==n then o=true;break end
end
if not o and n:FindFirstChild("Head") and n.Head:IsA("BasePart") then
l[#l+1]=n.Head
lp[#lp+1]=n.Head.Position
end
end
end
if #l==0 then return end

local p=10
local q=#l*p
local r={}
for _,s in ipairs(c:GetDescendants()) do
if s:IsA("BasePart") then r[s]=true end
end
local t={}
for u=1,#l do
for v=1,p do
local w=(u-1)*p+v
t[w]=false
task.spawn(function()
pcall(j,{[1]="Clone",[2]={l[u]},[3]=c})
t[w]=true
end)
end
end
local x=tick()
while true do
local y=true
for z=1,q do
if not t[z] then y=false;break end
end
if y then break end
if tick()-x>15 then break end
task.wait(0.05)
end
task.wait(1)

local aa={}
for _,ab in ipairs(c:GetDescendants()) do
if ab:IsA("BasePart") and not r[ab] and ab.Name~="SnakeHead" then
aa[#aa+1]=ab
end
end
if #aa==0 then return end

local ac={}
for ad=1,#l do ac[ad]={} end
for _,ae in ipairs(aa) do
local af=1e9
local ag=1
for ah=1,#l do
local ai=(ae.Position-lp[ah]).Magnitude
if ai<af then af=ai;ag=ah end
end
ac[ag][#ac[ag]+1]=ae
end

local aj={}
local ak={}
local al={}
for am=1,#l do
for an=1,#ac[am] do
local ao=ac[am][an]
aj[#aj+1]={["Part"]=ao,["Anchored"]=true}
ak[#ak+1]={["Part"]=ao,["CanCollide"]=false}
al[#al+1]=ao
end
end
j({[1]="SyncAnchor",[2]=aj})
j({[1]="SyncCollision",[2]=ak})
j({[1]="SetName",[2]=al,[3]="SnakeHead"})

local rp=RaycastParams.new()
rp.FilterType=Enum.RaycastFilterType.Blacklist
rp.FilterDescendantsInstances=al
rp.IgnoreWater=true
local function gy(pos)
local rh=c:Raycast(Vector3.new(pos.X,pos.Y+50,pos.Z),Vector3.new(0,-100,0),rp)
if rh then return rh.Position.Y end
return pos.Y
end

local snakes={}
for sn=1,#l do
local head=l[sn]
local segs=ac[sn]
if #segs>0 then
local sd={h=head,s=segs,a=math.random()*math.pi*2,sp=8+math.random()*5,sl=0.12+math.random()*0.08,d=2+math.random()*0.5,tr={}}
for i=1,#segs do
local pp=head.Position
sd.tr[i]={x=pp.X,y=pp.Y,z=pp.Z}
end
snakes[#snakes+1]=sd
end
end

local NET=1/30
local last=0
while true do
local now=tick()
local dt=0.03

for _,sd in ipairs(snakes) do
if sd.h.Parent then
local hp=sd.h.Position
sd.a=sd.a+math.sin(now*0.6)*0.035+0.015
local fx=math.cos(sd.a)
local fz=math.sin(sd.a)
local sl=math.sin(now*sd.sp*1.3)*sd.sl*3
local tx=hp.X+fx*sd.sp*dt+(fz)*sl
local tz=hp.Z+fz*sd.sp*dt+(-fx)*sl
local tg=gy(Vector3.new(tx,hp.Y,tz))
sd.tr[1].x=sd.tr[1].x+(tx-sd.tr[1].x)*0.3
sd.tr[1].z=sd.tr[1].z+(tz-sd.tr[1].z)*0.3
sd.tr[1].y=tg+1.2

for i=2,#sd.tr do
local pv=sd.tr[i-1]
local cv=sd.tr[i]
local dx=pv.x-cv.x
local dz=pv.z-cv.z
local dd=math.sqrt(dx*dx+dz*dz)
if dd>sd.d then
local rr=sd.d/dd
local nx=pv.x-dx*rr
local nz=pv.z-dz*rr
local ng=gy(Vector3.new(nx,pv.y,nz))
cv.x=cv.x+(nx-cv.x)*0.45
cv.z=cv.z+(nz-cv.z)*0.45
cv.y=ng+1.2
else
local ng=gy(Vector3.new(cv.x,pv.y,cv.z))
cv.y=ng+1.2
end
end
end
end

if now-last>=NET then
last=now
for _,sd in ipairs(snakes) do
if #sd.s>0 then
local all={}
for i,part in ipairs(sd.s) do
if part and part.Parent then
local tr=sd.tr[i]
local nxt=sd.tr[math.min(i+1,#sd.tr)]
local ang=math.atan2(nxt.z-tr.z,nxt.x-tr.x)
all[#all+1]={["Part"]=part,["CFrame"]=CFrame.new(tr.x,tr.y,tr.z)*CFrame.Angles(0,ang,0)}
end
end
local cs=6
for k=1,#all,cs do
local ch={}
for m=k,math.min(k+cs-1,#all) do ch[#ch+1]=all[m] end
task.spawn(function()pcall(j,{[1]="SyncMove",[2]=ch})end)
end
end
end
end

task.wait(dt)
end
