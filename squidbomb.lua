local p = game.Players.LocalPlayer
local r = game:GetService("ReplicatedStorage")
local mouse = p:GetMouse()

local t
for _,v in pairs(p:GetDescendants()) do if v.Name=="SyncAPI" then t=v.Parent end end
for _,v in pairs(r:GetDescendants()) do if v.Name=="SyncAPI" then t=v.Parent end end
if not t then return end

local remote = t.SyncAPI.ServerEndpoint
local RequestCommand = r:WaitForChild("HDAdminHDClient").Signals.RequestCommandSilent

local function inv(args)
	pcall(function() remote:InvokeServer(unpack(args)) end)
end

local function cmd(str)
	task.spawn(function()
		pcall(function() RequestCommand:InvokeServer(str) end)
	end)
end

local tool = Instance.new("Tool")
tool.Name = "Squidward Bomb"
tool.RequiresHandle = false
tool.Parent = p.Backpack

local squids = {}
local runMusicActive = false
local explodeMusicCooldown = false

local function playRunMusic()
	if runMusicActive then return end
	runMusicActive = true
	cmd(";music 142665235")
	task.wait(0.3)
	cmd(";pitch 2")
	task.wait(0.3)
	cmd(";volume inf")
end

local function playExplosionMusic()
	if explodeMusicCooldown then return end
	explodeMusicCooldown = true
	runMusicActive = false
	cmd(";music 2689242256")
	task.wait(0.3)
	cmd(";volume inf")
	task.delay(5, function()
		explodeMusicCooldown = false
	end)
end

local function getRawGroundY(pos)
	local ray = Ray.new(pos + Vector3.new(0,100,0), Vector3.new(0,-300,0))
	local hit, hitPos = workspace:FindPartOnRay(ray, p.Character)
	return hit and hitPos.Y or pos.Y
end

local function getGroundY(pos, part)
	local raw = getRawGroundY(pos)
	local meshScale = 0.01
	local sz = part.Size
	local effectiveH = sz.Y * meshScale
	return raw + (effectiveH / 2)
end

local function getTargets()
	local list = {}
	for _, plr in pairs(game.Players:GetPlayers()) do
		if plr ~= p and plr.Character then
			local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
			if hrp then table.insert(list, {hrp=hrp, name=plr.Name}) end
		end
	end
	return list
end

local function applyMesh(part)
	inv({"SyncAnchor",   {{Part=part, Anchored=true}}})
	inv({"SyncCollision",{{Part=part, CanCollide=false}}})
	inv({"CreateMeshes", {{Part=part}}})
	inv({"SyncMesh",     {{Part=part, MeshType="FileMesh"}}})
	inv({"SyncMesh",     {{Part=part, MeshId="rbxassetid://430191413"}}})
	inv({"SyncMesh",     {{Part=part, TextureId="rbxassetid://430191419"}}})
	inv({"SyncMesh",     {{Part=part, Scale=Vector3.new(0.01,0.01,0.01)}}})
end

local function removeSquid(index)
	local s = squids[index]
	if s and s.part and s.part.Parent then
		inv({"DeleteParts", {{Part=s.part}}})
	end
	table.remove(squids, index)
end

tool.Activated:Connect(function()
	local spawnPos = mouse.Hit.Position
	task.spawn(function()
		local ok, part = pcall(function()
			return remote:InvokeServer("CreatePart","Normal",CFrame.new(spawnPos),workspace)
		end)
		if not ok or not part then return end

		local gY     = getGroundY(spawnPos, part)
		local locked = Vector3.new(spawnPos.X, gY, spawnPos.Z)

		task.spawn(applyMesh, part)
		inv({"SyncMove",{{Part=part, CFrame=CFrame.new(locked)}}})

		table.insert(squids,{
			part     = part,
			pos      = locked,
			groundY  = gY,
			vel      = Vector3.zero,
			spd      = 0,
			off      = math.random()*100,
			wob      = math.random()*math.pi*2,
			exploded = false,
		})
		task.spawn(playRunMusic)
	end)
end)

task.spawn(function()
	while true do
		task.wait(0.016)
		local targets   = getTargets()
		local batch     = {}
		local now       = tick()
		local toRemove  = {}
		local anyMoving = false

		for i, s in pairs(squids) do
			if not (s.part and s.part.Parent) or s.exploded then continue end

			local newPos    = Vector3.new(s.pos.X, s.groundY, s.pos.Z)
			local lookAt    = newPos + Vector3.new(0,0,1)
			local hitTarget = nil

			if #targets > 0 then
				local tgt  = targets[(i % #targets)+1]
				local tpos = Vector3.new(tgt.hrp.Position.X, s.groundY, tgt.hrp.Position.Z)
				local flat = Vector3.new((tpos-newPos).X, 0, (tpos-newPos).Z)

				if flat.Magnitude <= 3.5 then
					hitTarget = tgt.name
				end

				if flat.Magnitude > 0.3 then
					flat  = flat.Unit
					s.spd = math.min(s.spd + 0.6, 80)
					anyMoving = true
				else
					s.spd = math.max(s.spd - 0.8, 0)
				end

				local sep = Vector3.zero
				for _, o in pairs(squids) do
					if o ~= s then
						local d = s.pos - o.pos
						d = Vector3.new(d.X,0,d.Z)
						local m = d.Magnitude
						if m < 2.2 and m > 0 then
							sep += d.Unit*(2.2-m)*0.6
						end
					end
				end

				local wob = Vector3.new(
					math.sin(now*9+s.wob)*0.4,
					0,
					math.cos(now*7+s.off)*0.4
				)

				s.vel  = s.vel:Lerp(flat*s.spd + wob + sep, 0.35)
				s.vel  = Vector3.new(s.vel.X, 0, s.vel.Z)
				newPos = Vector3.new(newPos.X + s.vel.X*0.016, s.groundY, newPos.Z + s.vel.Z*0.016)
				s.pos  = newPos
				lookAt = tpos
			else
				s.vel  = Vector3.zero
				s.spd  = 0
				newPos = Vector3.new(s.pos.X, s.groundY, s.pos.Z)
				s.pos  = newPos
			end

			if hitTarget then
				s.exploded = true
				task.spawn(function()
					local name = hitTarget
					pcall(function() RequestCommand:InvokeServer(";explode "..name) end)
					playExplosionMusic()
				end)
				table.insert(toRemove, i)
				continue
			end

			local fwd = lookAt - newPos
			local cf
			if fwd.Magnitude > 0.01 then
				cf = CFrame.lookAt(newPos, lookAt, Vector3.new(0,1,0)) * CFrame.Angles(0, math.pi, 0)
			else
				cf = CFrame.new(newPos)
			end

			table.insert(batch, {Part=s.part, CFrame=cf})
		end

		if anyMoving and not runMusicActive and not explodeMusicCooldown then
			task.spawn(playRunMusic)
		end

		for i = #toRemove, 1, -1 do
			removeSquid(toRemove[i])
		end

		if #batch > 0 then
			task.spawn(function()
				pcall(function()
					remote:InvokeServer("SyncMove", batch)
				end)
			end)
		end
	end
end)
