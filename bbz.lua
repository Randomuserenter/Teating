
------------------------------------------------------------------------------------------------------------------------------ UI ---------------------------------------------------------------------------------------------------------------------------------------
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BLibrary%5D"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BThemeManager%5D"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BSaveManager%5D"))()


    local MarketplaceService = game:GetService("MarketplaceService")
    local success, info = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId)
    end)

        local Window = Library:CreateWindow({
            Title = 'Xecret Hub | ' .. info.Name,
            Center = true,
            AutoShow = true,
            TabPadding = 0,
            MenuFadeTime = 0
        })

    local Tabs = { 
        Main = Window:AddTab('Main'),
        ESP = Window:AddTab('Extrasensory Perception'),   
        UISettings = Window:AddTab('Settings')
    }
--------------------------------------------------------------------------------------------- Global Settings [1] ---------------------------------------------------------------------------------------------
task.wait(5)
local DataBox = Tabs.Main:AddLeftTabbox()
local DataTab = DataBox:AddTab('Data')

local TabBox2_1 = Tabs.Main:AddLeftTabbox()
local TeamTab = TabBox2_1:AddTab('Team Management')

local TabBox2_2 = Tabs.Main:AddLeftTabbox()
local RollTab = TabBox2_2:AddTab('Roll')

local TabBox1_1 = Tabs.Main:AddLeftTabbox()
local LegitTab = TabBox1_1:AddTab('Competition')

local TabBox1_2 = Tabs.Main:AddRightTabbox()
local RageTab = TabBox1_2:AddTab('Controller')

local TabBox3_2 = Tabs.Main:AddLeftTabbox()
local DefenseTab = TabBox3_2:AddTab('Defense')

local TabBox3_1 = Tabs.Main:AddRightTabbox()
local BallTab = TabBox3_1:AddTab('Ball')

local TabBoxCos_2 = Tabs.Main:AddRightTabbox()
local AntiTab = TabBoxCos_2:AddTab('Anti')

local TabBoxOlddd_2 = Tabs.Main:AddRightTabbox()
local AnimationTab = TabBoxOlddd_2:AddTab('Animations')

local TabBoxCos_1 = Tabs.Main:AddRightTabbox()
local MiscTab = TabBoxCos_1:AddTab('Misc')
--------------------------------------------------------------------------------------------- Global Settings [2] ---------------------------------------------------------------------------------------------
  task.wait(5)
local styles = {}
    for _, style in ipairs(game:GetService("ReplicatedStorage").Assets.SFX.Styles:GetChildren()) do
        table.insert(styles, style.Name)
    end

    local Zone = {}
    for _, zone in ipairs(game:GetService("ReplicatedStorage").Assets.Zones:GetChildren()) do
        table.insert(Zone, zone.Name)
    end

    local DunkAnimation = {}
    for _, dunk in ipairs(game:GetService("ReplicatedStorage").Assets.Animations.Dunks:GetChildren()) do
        table.insert(DunkAnimation, dunk.Name)
    end

    local Goal = {}
    for _, goal in ipairs(game:GetService("ReplicatedStorage").Assets.GoalEffects:GetChildren()) do
        table.insert(Goal, goal.Name)
    end
--------------------------------------------------------------------------------------------- Data ---------------------------------------------------------------------------------------------
 DataTab:AddButton({
    Text = 'Rollback',
    Func = function()
       for _,v in ipairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
 if v:IsA("RemoteEvent") and v.Name ~= "BAC" then
local args = {
	"\255",
	"\255"
}
v:FireServer(unpack(args))
end
end
game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end, 
    DoubleClick = false 
})
--------------------------------------------------------------------------------------------- Auto Spin Styles ---------------------------------------------------------------------------------------------
local SelectedStylesDropdownSpin
local RollingStyle = false

RollTab:AddDropdown('Select_Style_Dropdown', {
        Values = styles,
        Default = {},
        Multi = false,
        Text = 'Select Style',
        Callback = function(Value)
            SelectedStylesDropdownSpin = Value
        end
    })


    RollTab:AddToggle('Styles_AutoSpin_Toggle', {
        Text = '[Style] Auto Spin',
        Default = false,
        Callback = function(Value)
            RollingStyle = Value 
        if RollingStyle then
            task.spawn(function()
                while RollingStyle do
                    local player = game:GetService("Players").LocalPlayer
                    local playerStats = game:GetService("Players")[game.Players.LocalPlayer.Name]

                    if playerStats and playerStats:FindFirstChild("Style") then
                        local currentStyle = game:GetService("Players")[game.Players.LocalPlayer.Name].Style.Value
                        if currentStyle == SelectedStylesDropdownSpin then
                            RollingStyle = false 
                            return
                        end
                       local args = {
	true,
	"FroggyWoggy"
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("StyleService"):WaitForChild("RE"):WaitForChild(""):FireServer(unpack(args))

                        local args = {
	false,
	"FroggyWoggy"
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("StyleService"):WaitForChild("RE"):WaitForChild(""):FireServer(unpack(args))

                    end
                    task.wait(5) 
                end
            end)
        end
        end
    })
--------------------------------------------------------------------------------------------- Auto Spin Zone ---------------------------------------------------------------------------------------------
local SelectedZoneDropdownSpin
local RollingZone = false

RollTab:AddDropdown('Select_ZoneDropdown', {
        Values = Zone, 
        Default = {},
        Multi = false,
        Text = 'Select Zone',
        Callback = function(Value)
            SelectedZoneDropdownSpin = Value
        end
    })

    RollTab:AddToggle('Zone_AutoSpin_Toggle', {
        Text = '[Zone] Auto Spin',
        Default = false,
        Callback = function(Value)
            RollingZone = Value 
        if RollingZone then
            task.spawn(function()
                while RollingZone do
                    local player = game:GetService("Players").LocalPlayer
                    local playerStats = game:GetService("Players")[game.Players.LocalPlayer.Name]

                    if playerStats and playerStats:FindFirstChild("Zone") then
                        local currentStyle = game:GetService("Players")[game.Players.LocalPlayer.Name].Zone.Value
                        if currentStyle == SelectedZoneDropdownSpin then
                            RollingZone = false 
                            return
                        end
                       
                        for _,v in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):GetChildren()) do
v:FireServer(true)
end
                        for _,v in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):GetChildren()) do
v:FireServer()
end
                    end
                    task.wait(5) 
                end
            end)
        end
        end
    })
--------------------------------------------------------------------------------------------- Ball ---------------------------------------------------------------------------------------------
    local Look_At_Ball_GK_Connection

    BallTab:AddToggle('Look_At_Ball_GK_Toggle', {
        Text = 'Look at Ball',
        Default = false,
        Callback = function(Value)
            if Value then
                Look_At_Ball_GK_Connection = game:GetService("RunService").Heartbeat:Connect(function()
                   local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local ball = workspace:FindFirstChild("Basketball")
if ball then
    local direction = (ball.Position - hrp.Position).Unit
    local lookCFrame = CFrame.new(hrp.Position, hrp.Position + Vector3.new(direction.X, 0, direction.Z))
    hrp.CFrame = lookCFrame
end
                end)
            else
if Look_At_Ball_GK_Connection then
                Look_At_Ball_GK_Connection:Disconnect()
                Look_At_Ball_GK_Connection = nil
end
            end
        end
    })

    local Ball_Magnet_Connection 
    local Ball_Magnet_Range = 0
    local Ball_Magnet_Force = 0
    
    BallTab:AddToggle('Ball_Magnet_Toggle', {
        Text = 'Ball Magnet',
        Default = false,
        Callback = function(Value)
            if Value then
                Ball_Magnet_Connection = game:GetService("RunService").Heartbeat:Connect(function()
                    if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        if workspace:FindFirstChild("Basketball") and workspace:FindFirstChild("Basketball"):IsA("BasePart") and workspace:FindFirstChild("Basketball").AssemblyLinearVelocity.Magnitude < 35 then
                            local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - workspace:FindFirstChild("Basketball").Position).Magnitude
                            if distance <= Ball_Magnet_Range then
                                local direction = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, -2.5, 0) - workspace:FindFirstChild("Basketball").Position).Unit
                                workspace:FindFirstChild("Basketball"):ApplyImpulse(direction * Ball_Magnet_Force)
                            end
                        end
                    end
                end)
            else
                if Ball_Magnet_Connection then
                    Ball_Magnet_Connection:Disconnect()
                    Ball_Magnet_Connection = nil
                end
            end
        end
    })

    BallTab:AddSlider('Ball_Magnet_Range_Slider', {
        Text = 'Range',
        Default = Ball_Magnet_Range, 
        Min = Ball_Magnet_Range,
        Max = 50,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            Ball_Magnet_Range = Value 
        end
    })

    BallTab:AddSlider('Ball_Magnet_Force_Slider', {
        Text = 'Magnetic Force',
        Default = Ball_Magnet_Force, 
        Min = Ball_Magnet_Force,
        Max = 10,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            Ball_Magnet_Force = Value * 100
        end
    })
--------------------------------------------------------------------------------------------- Team ---------------------------------------------------------------------------------------------
local LastJoinTeamTime = 0
local SelectedTeamDropdown
local SelectedTeamPositionDropdown
local JoinTeamConnection

TeamTab:AddDropdown('Select_Team_Dropdown', {
    Values = {"Home", "Away"},
    Default = {},
    Multi = false,
    Text = 'Select Team',
    Callback = function(Value)
        SelectedTeamDropdown = Value
    end
})

TeamTab:AddDropdown('Select_Position_Dropdown', {
    Values = {"CF", "LW", "RW", "CM", "CB"},
    Default = {},
    Multi = false,
    Text = 'Select Position',
    Callback = function(Value)
        SelectedTeamPositionDropdown = Value
    end
})

TeamTab:AddToggle('Join_Team_Toggle', {
    Text = 'Join Team',
    Default = false,
    Callback = function(Value)
        if Value then
            JoinTeamConnection = game:GetService("RunService").Heartbeat:Connect(function()
                local currentTime = tick()
                if currentTime - LastJoinTeamTime >= 1 then
                    LastJoinTeamTime = currentTime
                    local player = game.Players.LocalPlayer
                    if player.Team.Name == "Visitor" then
                        local teamServiceRE = game:GetService("ReplicatedStorage"):WaitForChild("Packages")
                            :WaitForChild("Knit"):WaitForChild("Services")
                            :WaitForChild("TeamService"):WaitForChild("RE")
                        for _, v in ipairs(teamServiceRE:GetChildren()) do
                            if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
                                local args = {
                                    [1] = SelectedTeamDropdown,
                                    [2] = SelectedTeamPositionDropdown
                                }
                                v:FireServer(unpack(args))
                                task.wait(0.1)
                                if player.Team.Name ~= "Visitor" then
                                    break
                                end
                            end
                        end
                    end
                end
            end)
        else
            if JoinTeamConnection then
                JoinTeamConnection:Disconnect()
                JoinTeamConnection = nil
            end
        end
    end
})
--------------------------------------------------------------------------------------------- Movement ---------------------------------------------------------------------------------------------
    getgenv().Enabled = false
    getgenv().Speed = 0
    local OriginalSpeed = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed
    local HeartbeatConnectionWalkSpeed
    local PropertyConnectionWalkSpeed
    local CharacterAddedConnection
    
    function SetupWalkspeedEnforcer()
        if not game:GetService("Players").LocalPlayer.Character then return end
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then return end
    
        OriginalSpeed = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed
    
        if HeartbeatConnectionWalkSpeed then
            HeartbeatConnectionWalkSpeed:Disconnect()
        end
        if PropertyConnectionWalkSpeed then
            PropertyConnectionWalkSpeed:Disconnect()
        end
    
        HeartbeatConnectionWalkSpeed = game:GetService("RunService").Heartbeat:Connect(function()
            if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") and getgenv().Enabled then
                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = getgenv().Speed
            end
        end)
    
        PropertyConnectionWalkSpeed = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            if getgenv().Enabled then
                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = getgenv().Speed
            end
        end)
    end
    
    LegitTab:AddToggle('Speed_Boost_Toggle', {
        Text = 'Speed Boost %',
        Default = false,
        Callback = function(Value)
            if Value then
                getgenv().Enabled = true
                SetupWalkspeedEnforcer()
                CharacterAddedConnection = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
                    char:WaitForChild("Humanoid")
                    task.wait(0.1)
                    SetupWalkspeedEnforcer()
                end)
            else
                getgenv().Enabled = false
                if HeartbeatConnectionWalkSpeed then
                    HeartbeatConnectionWalkSpeed:Disconnect()
                    HeartbeatConnectionWalkSpeed = nil
                end
                if PropertyConnectionWalkSpeed then
                    PropertyConnectionWalkSpeed:Disconnect()
                    PropertyConnectionWalkSpeed = nil
                end
                if CharacterAddedConnection then
                    CharacterAddedConnection:Disconnect()
                    CharacterAddedConnection = nil
                end
                if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = OriginalSpeed
                end
            end
        end
    })
    
    LegitTab:AddSlider('Speed_Boost_Slider', {
        Text = 'Speed Boost %',
        Default = 0,
        Min = 0,
        Max = 10,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            getgenv().Speed = Value * 10
        end
    })
--------------------------------------------------------------------------------------------- Perfect Shoot ---------------------------------------------------------------------------------------------
local Shoot_Perfect_Connection
local Shoot_Perfect_Active = false
local Shoot_Perfect_Percent = 100

LegitTab:AddToggle('Perfect_Shoot_Toggle', {
    Text = 'Perfect Shoot',
    Default = false,
    Callback = function(Value)
        if Value then
            Shoot_Perfect_Connection = game:GetService("UserInputService").InputBegan:Connect(function(input, gp)
                if gp then return end
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    if Shoot_Perfect_Active then
                        Shoot_Perfect_Active = false
                    end

                    Shoot_Perfect_Active = true

                     task.spawn(function()
                        task.wait(0.45)
                        local startTime = tick()
                        while Shoot_Perfect_Active and tick() - startTime <= 1 do
                            local player = game:GetService("Players").LocalPlayer
                            local char = workspace:FindFirstChild(player.Name)
                            local hrp = char and char:FindFirstChild("HumanoidRootPart")
                            local hoop = workspace.Hoops[player.Team.Name] and workspace.Hoops[player.Team.Name].Hoop
                            local ball = char and char:FindFirstChild("Basketball")

                            if hrp and hoop and ball then
                                local rand = math.random(0, 100)
                                if rand <= Shoot_Perfect_Percent then
                                    hrp.CFrame = CFrame.new(hrp.Position, hoop.Position)
                                else
                                    local angleOffset = math.rad(math.random(-30, 30))
                                    local cf = CFrame.new(hrp.Position) * CFrame.Angles(0, angleOffset, 0)
                                    local newDir = cf.LookVector
                                    hrp.CFrame = CFrame.new(hrp.Position, hrp.Position + newDir)
                                end
                            end
                            task.wait()
                        end
                        Shoot_Perfect_Active = false
                    end)
                end
            end)
        else
            if Shoot_Perfect_Connection then
                Shoot_Perfect_Connection:Disconnect()
                Shoot_Perfect_Connection = nil
                Shoot_Perfect_Active = false
            end
        end
    end
})

LegitTab:AddSlider('Perfect_Shoot_Percent_Slider', {
    Text = 'Shoot Success %',
    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false,
    Callback = function(Value)
        Shoot_Perfect_Percent = Value
    end
})

--------------------------------------------------------------------------------------------- Auto Perfect Shoot ---------------------------------------------------------------------------------------------
    local Loop_AutoShoot_Connection = false
    local Range_Auto_Shoot = 50
    local Auto_Shoot_Connection

    LegitTab:AddToggle('Range_Auto_Shoot_Toggle', {
        Text = 'Auto Perfect Shoot',
        Default = false,
        Callback = function(Value)
            Loop_AutoShoot_Connection = Value
            if Value then
               if Auto_Shoot_Connection then Auto_Shoot_Connection:Disconnect() end
        Auto_Shoot_Connection = game:GetService("RunService").Heartbeat:Connect(function()
            if Loop_AutoShoot_Connection then
                 local player = game:GetService("Players").LocalPlayer
        local char = player.Character
        if not char then return end
        local HRP = char:FindFirstChild("HumanoidRootPart")
        local Humanoid = char:FindFirstChild("Humanoid")
        local hoop = workspace.Hoops[game:GetService("Players").LocalPlayer.Team.Name].Hoop
        if not (HRP and Humanoid and hoop) then return end
        if (HRP.Position - hoop.Position).Magnitude <= Range_Auto_Shoot and game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name):FindFirstChild("Basketball") then
            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, workspace.Hoops[game:GetService("Players").LocalPlayer.Team.Name].Hoop.Position)
            require(game:GetService("ReplicatedStorage").Controllers.BallController):Shoot()
        end
            end
        end)
            else
               if Auto_Shoot_Connection then
            Auto_Shoot_Connection:Disconnect()
            Auto_Shoot_Connection = nil
        end
            end
        end
    })

LegitTab:AddSlider('Range_Auto_Shoot_Slider', {
        Text = 'Shoot Range',
        Default = Range_Auto_Shoot,
        Min = Range_Auto_Shoot,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(value)
            Range_Auto_Shoot = value 
        end
    })
--------------------------------------------------------------------------------------------- Auto Dunk ---------------------------------------------------------------------------------------------
    local Loop_AutoDunk_Connection = false
    local Range_Auto_Dunk = 0
    local Auto_Dunk_Connection

    LegitTab:AddToggle('Range_Auto_Dunk_Toggle', {
        Text = 'Auto Dunk',
        Default = false,
        Callback = function(Value)
            Loop_AutoDunk_Connection = Value
            if Value then
               if Auto_Dunk_Connection then Auto_Dunk_Connection:Disconnect() end
        Auto_Dunk_Connection = game:GetService("RunService").Heartbeat:Connect(function()
            if Loop_AutoDunk_Connection then
                 local player = game:GetService("Players").LocalPlayer
        local char = player.Character
        if not char then return end
        local HRP = char:FindFirstChild("HumanoidRootPart")
        local Humanoid = char:FindFirstChild("Humanoid")
        local hoop = workspace.Hoops[game:GetService("Players").LocalPlayer.Team.Name].Hoop
        if not (HRP and Humanoid and hoop) then return end
        if (HRP.Position - hoop.Position).Magnitude <= Range_Auto_Dunk and game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name):FindFirstChild("Basketball") then
           require(game:GetService("ReplicatedStorage").Controllers.BallController):Dunk()
        end
            end
        end)
            else
               if Auto_Dunk_Connection then
            Auto_Dunk_Connection:Disconnect()
            Auto_Dunk_Connection = nil
        end
            end
        end
    })

LegitTab:AddSlider('Range_Auto_Dunk_Slider', {
        Text = 'Dunk Range',
        Default = Range_Auto_Dunk,
        Min = Range_Auto_Dunk,
        Max = 50,
        Rounding = 0,
        Compact = false,
        Callback = function(value)
            Range_Auto_Dunk = value 
        end
    })
--------------------------------------------------------------------------------------------- Auto Awakeing ---------------------------------------------------------------------------------------------
    local Auto_Awakeing_Connection
    local LastAwakenTime = 0
    local AwakeningService = require(game:GetService("ReplicatedStorage").Packages.Knit).GetService("AwakeningService")

    LegitTab:AddToggle('Auto_AwakeningService_Toggle', {
        Text = 'Auto Awakening',
        Default = false,
        Callback = function(Value)
            if Value then
                Auto_Awakeing_Connection = game:GetService("RunService").Heartbeat:Connect(function()
                    local currentTime = tick()
                    if game:GetService("Players").LocalPlayer.PlayerGui.InGame.BG.Bars.AwakeningBar.Visible and currentTime - LastAwakenTime >= 1 then
                        LastAwakenTime = currentTime
                       AwakeningService.Awaken:Fire({ timeSent = workspace:GetServerTimeNow() })
                    end
                end)
            else
                if Auto_Awakeing_Connection then
                    Auto_Awakeing_Connection:Disconnect()
                    Auto_Awakeing_Connection = nil
                end
            end
        end
    })
--------------------------------------------------------------------------------------------- Auto Zone ---------------------------------------------------------------------------------------------
local Auto_Zone_Connection
local Zone_Delay_Time = 0
    LegitTab:AddToggle('Auto_Zone_Toggle', {
        Text = 'Auto Zone',
        Default = false,
        Callback = function(Value)
            if Value then
                Auto_Zone_Connection = game:GetService("RunService").Heartbeat:Connect(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.InGame.BG.Bars.ZoneBar.Bar.Key.Text == "PRESS" then
                        task.wait(Zone_Delay_Time) 
                           game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.T, false, game)
                    task.wait(.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.T, false, game)
                    end
                end)
            else
                if Auto_Zone_Connection then
                    Auto_Zone_Connection:Disconnect()
                    Auto_Zone_Connection = nil
                end
            end
        end
    })

    LegitTab:AddSlider('Auto_Zone_Delay', {
        Text = 'Zone Delay',
        Default = 0,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(value)
            Zone_Delay_Time = value 
        end
    })
--------------------------------------------------------------------------------------------- Auto Steal ---------------------------------------------------------------------------------------------
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Distnacesteal = 20
    local myPlayer = Players.LocalPlayer
    local toggleState = false
    local badtime = 0
local loopautosteal 
    DefenseTab:AddToggle('autosteal', {
        Text = 'Auto Steal',
        Default = false,
        Callback = function(enabled)
          if enabled then
 local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

loopautosteal = RunService.RenderStepped:Connect(function()
    if tick() - badtime >= 1 then
        badtime = tick()
	local character = LocalPlayer.Character
	if not character or not character:FindFirstChild("HumanoidRootPart") then return end

	local hrp = character.HumanoidRootPart
	local closestPlayer
	local shortestDistance = Distnacesteal

	for _, player in pairs(Players:GetPlayers()) do
		if player ~= LocalPlayer and player.Team ~= LocalPlayer.Team then
			local enemyChar = workspace:FindFirstChild(player.Name)
			if enemyChar and enemyChar:FindFirstChild("Basketball") and enemyChar:FindFirstChild("HumanoidRootPart") then
				local distance = (enemyChar.Basketball.Position - hrp.Position).Magnitude
				if distance <= shortestDistance then
					shortestDistance = distance
					closestPlayer = enemyChar
				end
			end
		end
	end

	if closestPlayer then
		local enemyHRP = closestPlayer.HumanoidRootPart
		local lookVector = (enemyHRP.Position - hrp.Position).Unit
		hrp.CFrame = CFrame.new(hrp.Position, hrp.Position + Vector3.new(lookVector.X, 0, lookVector.Z))

                    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                    task.wait(.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game)
	end
end
end)

          else
if loopautosteal then 
loopautosteal:Disconnect()
loopautosteal = nil
end
          end
        end
    })

    DefenseTab:AddSlider('rangesteal', {
        Text = 'Range',
        Default = 20,
        Min = 10,
        Max = 30,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Distnacesteal = Value
        end
    })
--------------------------------------------------------------------------------------------- Auto Dribble ---------------------------------------------------------------------------------------------
    local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)
    local BallController = Knit.GetController("BallController")
    local LocalPlayer = Players.LocalPlayer
    local detectionRange = 15
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local animationsToWatch = {
        ReplicatedStorage.Assets.Animations.Blocks.Blocked,
        ReplicatedStorage.Assets.Animations.Blocks.TipOff,
        ReplicatedStorage.Assets.Animations.Blocks.StealR,
        ReplicatedStorage.Assets.Animations.Blocks.StealL,
        ReplicatedStorage.Assets.Animations.Blocks.Rebound,
        ReplicatedStorage.Assets.Animations.Blocks.JumpBlock2,
        ReplicatedStorage.Assets.Animations.Blocks.JumpBlock,
    }

    local watchedAnimIds = {}
    for _, anim in ipairs(animationsToWatch) do
        table.insert(watchedAnimIds, anim.AnimationId)
    end

    local myPlayer = Players.LocalPlayer
    local toggleState = false

    local activeConnections = {}

    local function isOtherTeam(player)
        return player.Team ~= myPlayer.Team
    end

    local function clearConnections()
        for _, conn in pairs(activeConnections) do
            if conn and conn.Disconnect then
                conn:Disconnect()
            end
        end
        table.clear(activeConnections)
    end

    local function onCharacterAdded(player, character)
        local humanoid = character:WaitForChild("Humanoid", 0.1)
        local rootPart = character:WaitForChild("HumanoidRootPart", 0.1)

        if humanoid and rootPart then
            local conn = humanoid.AnimationPlayed:Connect(function(animationTrack)
                local anim = animationTrack.Animation
                if not anim then return end
                if not table.find(watchedAnimIds, anim.AnimationId) then return end
                if not isOtherTeam(player) then return end

                local localChar = myPlayer.Character
                if not localChar then return end

                local localRoot = localChar:FindFirstChild("HumanoidRootPart")
                if not localRoot then return end

                local distance = (localRoot.Position - rootPart.Position).Magnitude
                if distance <= detectionRange then
                    BallController:Dribble()
                end
            end)

            table.insert(activeConnections, conn)
        end
    end

    local function onPlayerAdded(player)
        if player ~= myPlayer then
            if player.Character then
                onCharacterAdded(player, player.Character)
            end
            local conn = player.CharacterAdded:Connect(function(char)
                onCharacterAdded(player, char)
            end)
            table.insert(activeConnections, conn)
        end
    end

    DefenseTab:AddToggle('Auto_Dribble_Toggle', {
        Text = 'Auto Dribble',
        Default = false,
        Callback = function(state)
            if state then
                for _, player in ipairs(Players:GetPlayers()) do
                    onPlayerAdded(player)
                end
                local conn = Players.PlayerAdded:Connect(onPlayerAdded)
                table.insert(activeConnections, conn)
            else
                clearConnections()
            end
        end
    })

    DefenseTab:AddSlider('rangedribble', {
        Text = 'Range',
        Default = 15,
        Min = 10,
        Max = 30,
        Rounding = 0,
        Compact = false,
        Callback = function(value)
            detectionRange = value
        end
    })
--------------------------------------------------------------------------------------------- Auto Block Shoot ---------------------------------------------------------------------------------------------
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")

    local DistnaceblockShoot = 20
    local connectionsShoot = {}
    local playerAddedConnectionShoot

    local animationsToDetectShoot = {
        ReplicatedStorage.Assets.Animations.Shots.ShootR,
        ReplicatedStorage.Assets.Animations.Shots.ShootL,
        ReplicatedStorage.Assets.Animations.Shots.ShootF,
        ReplicatedStorage.Assets.Animations.Shots.ShootB,
    }

    local animationsMapShoot = {}
    for _, anim in ipairs(animationsToDetectShoot) do
        animationsMapShoot[anim.AnimationId] = true
    end

    DefenseTab:AddToggle('autoblockshoot', {
        Text = 'Auto Block Shoot',
        Default = false,
        Callback = function(enabled)
            if enabled then
                local function onTrackPlayedShoot(player, track)
                    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
                    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
                    if player.Team == LocalPlayer.Team then return end

                    local distance = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if distance > DistnaceblockShoot then return end

                    if animationsMapShoot[track.Animation.AnimationId] then
                        local startTime = tick()
                        repeat
                            task.wait(0.1)
                        until track.TimePosition > 0.5 or tick() - startTime > 1

                        if track.TimePosition > 0.5 then
if game:GetService("UserInputService").KeyboardEnabled then
     game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Space, false, game)
                        task.wait(1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Space, false, game)
elseif game:GetService("UserInputService").TouchEnabled then
   game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
end
                        end
                    end
                end

                local function connectPlayerShoot(player)
                    local function onCharacterAddedShoot(character)
                        local humanoid = character:WaitForChild("Humanoid")
                        table.insert(connectionsShoot, humanoid.AnimationPlayed:Connect(function(track)
                            onTrackPlayedShoot(player, track)
                        end))
                    end

                    table.insert(connectionsShoot, player.CharacterAdded:Connect(onCharacterAddedShoot))
                    if player.Character then
                        onCharacterAddedShoot(player.Character)
                    end
                end

                for _, player in ipairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer then
                        connectPlayerShoot(player)
                    end
                end

                playerAddedConnectionShoot = Players.PlayerAdded:Connect(function(player)
                    connectPlayerShoot(player)
                end)
            else
                for _, connection in ipairs(connectionsShoot) do
                    connection:Disconnect()
                end
                connectionsShoot = {}

                if playerAddedConnectionShoot then
                    playerAddedConnectionShoot:Disconnect()
                    playerAddedConnectionShoot = nil
                end
            end
        end
    })

    DefenseTab:AddSlider('rangeblockshoot', {
        Text = 'Range',
        Default = 20,
        Min = 10,
        Max = 30,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            DistnaceblockShoot = Value
        end
    })
--------------------------------------------------------------------------------------------- Auto Block Pass ---------------------------------------------------------------------------------------------
    local DistnaceblockPass = 20
    local connectionsPass = {}
    local playerAddedConnectionPass

    local animationsToDetectPass = {
        ReplicatedStorage.Assets.Animations.Passes.StraightPass2,
        ReplicatedStorage.Assets.Animations.Passes.StraightPass1,
        ReplicatedStorage.Assets.Animations.Passes.Pass2L,
        ReplicatedStorage.Assets.Animations.Passes.Pass2R,
        ReplicatedStorage.Assets.Animations.Passes.Pass1R,
        ReplicatedStorage.Assets.Animations.Passes.Pass1L,
        ReplicatedStorage.Assets.Animations.Passes.JumpPassR,
        ReplicatedStorage.Assets.Animations.Passes.JumpPassL,
        ReplicatedStorage.Assets.Animations.Passes.JumpPassF,
    }

    local animationsMapPass = {}
    for _, anim in ipairs(animationsToDetectPass) do
        animationsMapPass[anim.AnimationId] = true
    end

    DefenseTab:AddToggle('autoblockpass', {
        Text = 'Auto Block Pass',
        Default = false,
        Callback = function(enabled)
            if enabled then
                local function onTrackPlayedPass(player, track)
                    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
                    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
                    if player.Team == LocalPlayer.Team then return end

                    local distance = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if distance > DistnaceblockPass then return end

                    if animationsMapPass[track.Animation.AnimationId] then
                       if game:GetService("UserInputService").KeyboardEnabled then
     game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Space, false, game)
                        task.wait(1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Space, false, game)
elseif game:GetService("UserInputService").TouchEnabled then
   game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
end
                    end
                end

                local function connectPlayerPass(player)
                    local function onCharacterAddedPass(character)
                        local humanoid = character:WaitForChild("Humanoid")
                        table.insert(connectionsPass, humanoid.AnimationPlayed:Connect(function(track)
                            onTrackPlayedPass(player, track)
                        end))
                    end

                    table.insert(connectionsPass, player.CharacterAdded:Connect(onCharacterAddedPass))
                    if player.Character then
                        onCharacterAddedPass(player.Character)
                    end
                end

                for _, player in ipairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer then
                        connectPlayerPass(player)
                    end
                end

                playerAddedConnectionPass = Players.PlayerAdded:Connect(function(player)
                    connectPlayerPass(player)
                end)
            else
                for _, connection in ipairs(connectionsPass) do
                    connection:Disconnect()
                end
                connectionsPass = {}

                if playerAddedConnectionPass then
                    playerAddedConnectionPass:Disconnect()
                    playerAddedConnectionPass = nil
                end
            end
        end
    })

    DefenseTab:AddSlider('rangeblockpass', {
        Text = 'Range',
        Default = 20,
        Min = 10,
        Max = 30,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            DistnaceblockPass = Value
        end
    })
--------------------------------------------------------------------------------------------- No Ability Cooldown ---------------------------------------------------------------------------------------------
local CooldownAbilitiesModule = require(game:GetService("ReplicatedStorage").Shared.Tables.Cooldowns)
local DefaultCooldowns = {}
for style, cds in pairs(CooldownAbilitiesModule.Abilities) do
    DefaultCooldowns[style] = { unpack(cds) }
end

RageTab:AddToggle('No_Ability_Cooldown', {
    Text = 'No Abilities Cooldown',
    Default = false,
    Callback = function(Value)
        if Value then
            workspace:SetAttribute("NoAbilityCooldowns", true)
            for style, cds in pairs(CooldownAbilitiesModule.Abilities) do
                for i = 1, #cds do
                    cds[i] = 0
                end
            end
        else
            workspace:SetAttribute("NoAbilityCooldowns", false)
            for style, cds in pairs(CooldownAbilitiesModule.Abilities) do
                for i = 1, #cds do
                    cds[i] = DefaultCooldowns[style][i]
                end
            end
        end
    end
})
--------------------------------------------------------------------------------------------- No Dribble Cooldown ---------------------------------------------------------------------------------------------
local No_Dribble_Cooldown_Connection_GC = {}

RageTab:AddToggle('No_Dribble_Cooldown_Toggle', {
    Text = 'No Dribble Cooldown',
    Default = false,
    Callback = function(Value)
        if Value then
            for i, v in pairs(getgc(true)) do
                if typeof(v) == "table" and not isreadonly(v) then
                    for key, value in pairs(v) do
                        if typeof(key) == "string" and string.find(string.lower(key), "dribblecooldown") and typeof(value) == "table" then
                            No_Dribble_Cooldown_Connection_GC[v] = No_Dribble_Cooldown_Connection_GC[v] or {}
                            No_Dribble_Cooldown_Connection_GC[v][key] = value
                            v[key] = nil
                        end
                    end
                end
            end
        else
            for tbl, keys in pairs(No_Dribble_Cooldown_Connection_GC) do
                for key, value in pairs(keys) do
                    tbl[key] = value
                end
            end
            No_Dribble_Cooldown_Connection_GC = {}
        end
    end
})
--------------------------------------------------------------------------------------------- No Jump Cooldown ---------------------------------------------------------------------------------------------
local No_Jump_Cooldown_Connection

RageTab:AddToggle('nocdjump', {
    Text = 'No Jump Cooldown',
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local humanoid = player.Character and player.Character:WaitForChild("Humanoid")
        local jumpBlockAnim = game:GetService("ReplicatedStorage").Assets.Animations.Blocks.JumpBlock

        if Value then
            if humanoid then
                humanoid.UseJumpPower = true
                humanoid.JumpPower = 37.94733192391388
                No_Jump_Cooldown_Connection = game:GetService("RunService").Heartbeat:Connect(function()
                    if not player.Character:FindFirstChild('Basketball') then return end
                    local animator = humanoid:FindFirstChildWhichIsA("Animator")
                    if animator then
                        for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                            if track.Animation == jumpBlockAnim then
                                track:Stop()
                            end
                        end
                    end
                end)
            end
        else
            if No_Jump_Cooldown_Connection then
                No_Jump_Cooldown_Connection:Disconnect()
                No_Jump_Cooldown_Connection = nil
            end
            if humanoid then
                humanoid.UseJumpPower = false
                humanoid.JumpPower = humanoid.JumpPower
            end
        end
    end
})
--------------------------------------------------------------------------------------------- Instant Pass ---------------------------------------------------------------------------------------------
local oldPass = require(game:GetService("ReplicatedStorage").Packages.Knit).GetController("PassController").Pass

RageTab:AddToggle('Instant_Pass_Toggle', {
    Text = 'Instant Pass',
    Default = false,
    Callback = function(Value)
        if Value then
            require(game:GetService("ReplicatedStorage").Packages.Knit).GetController("PassController").Pass = function(self, targetPart)
                local character = targetPart and targetPart:FindFirstAncestorOfClass("Model")
                if character then
                    local targetPlayer = game:GetService("Players"):GetPlayerFromCharacter(character)
                    if targetPlayer and targetPlayer.Team == game:GetService("Players").LocalPlayer.Team then
                        if game:GetService("Workspace"):WaitForChild("Basketball") and game:GetService("Workspace"):WaitForChild("Basketball"):IsA("BasePart") then
                            local hrp = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                game:GetService("Workspace"):WaitForChild("Basketball").CFrame = CFrame.new(hrp.Position + Vector3.new(0, 3, 0))
                                 game:GetService("Workspace"):WaitForChild("Basketball").CFrame = targetPlayer.HumanoidRootPart.Position
                            end
                        end
                    end
                end
                return oldPass(self, targetPart)
            end
        else
            require(game:GetService("ReplicatedStorage").Packages.Knit).GetController("PassController").Pass = oldPass
        end
    end
})
--------------------------------------------------------------------------------------------- Instant Goal ---------------------------------------------------------------------------------------------
local Instant_Goal_Connection

RageTab:AddToggle('Instant_Goal_Toggle', {
    Text = 'Instant Goal',
    Default = false,
    Callback = function(Value)
        if Value then
            Instant_Goal_Connection = game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
                if not gameProcessed then
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        local player = game:GetService("Players").LocalPlayer
                        local character = workspace:FindFirstChild(player.Name)
                        if character then
                            local ball = character:FindFirstChild("Basketball")
                            if not ball then
                                ball = workspace:WaitForChild("Basketball", 1) 
                            end
                            if ball then
                                local targetPosition
                                if player.Team and player.Team.Name == "Home" then
                                    targetPosition = workspace.Hoops.Home.Hoop.Position + Vector3.new(0, 1, 0)
                                elseif player.Team and player.Team.Name == "Away" then
                                    targetPosition = workspace.Hoops.Away.Hoop.Position + Vector3.new(0, 1, 0)
                                end

                                if targetPosition then
                                    ball.CFrame = CFrame.new(targetPosition)
                                    local goalPosition = targetPosition - Vector3.new(0, 10, 0)

                                    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                                    local tween = game:GetService("TweenService"):Create(ball, tweenInfo, {Position = goalPosition})
                                    tween:Play()
                                end
                            end
                        end
                    end
                end
            end)
        else
            if Instant_Goal_Connection then
                Instant_Goal_Connection:Disconnect()
                Instant_Goal_Connection = nil
            end
        end
    end
})

--------------------------------------------------------------------------------------------- Infinite Dribble ---------------------------------------------------------------------------------------------
local Original_Dribble_GC = {}

RageTab:AddToggle('Infinite_Dribble', {
    Text = 'Infinite Dribble',
    Default = false,
    Callback = function(Value)
        if Value then
            for i, v in pairs(getgc(true)) do
                if typeof(v) == "table" and not isreadonly(v) then
                    for key, value in pairs(v) do
                        if typeof(key) == "string" and string.find(string.lower(key), "getmaxdribble") and typeof(value) == "function" then
                            if not Original_Dribble_GC[v] then
                                Original_Dribble_GC[v] = {}
                            end
                            if not Original_Dribble_GC[v][key] then
                                Original_Dribble_GC[v][key] = value
                            end
                            v[key] = function() return math.huge end
                        end
                    end
                end
            end
        else
            for tbl, keys in pairs(Original_Dribble_GC) do
                if typeof(tbl) == "table" and not isreadonly(tbl) then
                    for key, originalFunc in pairs(keys) do
                        tbl[key] = originalFunc
                    end
                end
            end
            Original_Dribble_GC = {}
        end
    end
})
--------------------------------------------------------------------------------------------- Add Amount Dribble ---------------------------------------------------------------------------------------------
local Add_Stamina_Dribble_Value = 3
local Add_Stamina_Dribble_Enabled = false

RageTab:AddToggle('Add_Amount_Dribble', {
    Text = 'Dribble Amount',
    Default = false,
    Callback = function(Value)
        Add_Stamina_Dribble_Enabled = Value
        if Add_Stamina_Dribble_Enabled then
            for i, v in pairs(getgc(true)) do
                if typeof(v) == "table" and not isreadonly(v) then
                    for key, value in pairs(v) do
                        if typeof(key) == "string" and string.find(string.lower(key), "getmaxdribble") and typeof(value) == "function" then
                            v[key] = function() return Add_Stamina_Dribble_Value end
                        end
                    end
                end
            end
        else
             for i, v in pairs(getgc(true)) do
                if typeof(v) == "table" and not isreadonly(v) then
                    for key, value in pairs(v) do
                        if typeof(key) == "string" and string.find(string.lower(key), "getmaxdribble") and typeof(value) == "function" then
                            v[key] = function() return 3 end
                        end
                    end
                end
            end
        end
    end
})

RageTab:AddSlider('Add_Amount_Dribble_Slider', {
    Text = 'Add Dribble Amount %',
    Default = Add_Stamina_Dribble_Value,
    Min = Add_Stamina_Dribble_Value,
    Max = 30,
    Rounding = 0,
    Compact = false,
    Callback = function(Value)
        Add_Stamina_Dribble_Value = Value
        if Add_Stamina_Dribble_Enabled then
            for i, v in pairs(getgc(true)) do
                if typeof(v) == "table" and not isreadonly(v) then
                    for key, value in pairs(v) do
                        if typeof(key) == "string" and string.find(string.lower(key), "getmaxdribble") and typeof(value) == "function" then
                            v[key] = function() return Add_Stamina_Dribble_Value end
                        end
                    end
                end
            end
        end
    end
})
--------------------------------------------------------------------------------------------- Animations ---------------------------------------------------------------------------------------------
local SelectedFakeAnimationShoot
local Track_Fake_Shoot 
local Animations_FakeShoot = {
        PumpFake = "rbxassetid://116636356590637",
        ShootB = "rbxassetid://93426416285702",
        ShootF = "rbxassetid://92462901193976",
        ShootL = "rbxassetid://97638974924509",
        ShootR = "rbxassetid://103324749935306"
    }

    AnimationTab:AddDropdown('Fake_Animation_Shooting', {
        Values = {"PumpFake", "ShootB", "ShootF", "ShootL", "ShootR"},
        Default = {},
        Multi = false,
        Text = 'Select Animation Shooting Fake',
        Callback = function(value)
            SelectedFakeAnimationShoot = Animations_FakeShoot[value]
        end
    })
       AnimationTab:AddLabel('Shooting Fake'):AddKeyPicker('Fake_Animation_Playing_Shoot', {
        Default = '?', 
        SyncToggleState = false,
        Mode = 'Toggle', 
        Text = 'Shooting Fake', 
        NoUI = true, 
        Callback = function(Value)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)
            if Value then
                local animation = Instance.new("Animation")
                animation.AnimationId = SelectedFakeAnimationShoot

                Track_Fake_Shoot = animator:LoadAnimation(animation)
                Track_Fake_Shoot:Play()
            else
                local animation = Instance.new("Animation")
                animation.AnimationId = SelectedFakeAnimationShoot

                Track_Fake_Shoot = animator:LoadAnimation(animation)
                Track_Fake_Shoot:Play()
            end
        end,
    })
--------------------------------------------------------------------------------------------- Anti Pass ---------------------------------------------------------------------------------------------
local PassController = require(game:GetService("ReplicatedStorage").Packages.Knit).GetController("PassController")
local AntiPassConnection = PassController.Pass

AntiTab:AddToggle('Anti_Pass_Toggle', {
    Text = 'Anti Pass',
    Default = false,
    Callback = function(Value)
        if Value then
            PassController.Pass = function(...) return end
        else
            PassController.Pass = AntiPassConnection
        end
    end
})
--------------------------------------------------------------------------------------------- Anti Ragdoll ---------------------------------------------------------------------------------------------
local Anti_Ragdoll_Connection_Value
local Anti_Ragdoll_Connection_Connection

AntiTab:AddToggle('Anti_Ragdoll_Toggle', {
    Text = 'Anti Ragdoll',
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer

        if Value then
            Anti_Ragdoll_Connection_Connection = game:GetService("RunService").Heartbeat:Connect(function()
                if player.Character then
                    local ragdollR6 = player.Character:FindFirstChild("RagdollR6")
                    local isRagdoll = player.Character:FindFirstChild("IsRagdoll")

                    if ragdollR6 and ragdollR6:FindFirstChild("RagdollClient") then
                        ragdollR6.RagdollClient.Disabled = true
                    end

                    if isRagdoll then
                        isRagdoll.Value = false
                    end
                end
            end)

            if player.Character then
                local isRagdoll = player.Character:FindFirstChild("IsRagdoll")
                if isRagdoll then
                    Anti_Ragdoll_Connection_Value = isRagdoll.Changed:Connect(function()
                        isRagdoll.Value = false
                    end)
                end
            end

        else
            if player.Character then
                local ragdollR6 = player.Character:FindFirstChild("RagdollR6")
                if ragdollR6 and ragdollR6:FindFirstChild("RagdollClient") then
                    ragdollR6.RagdollClient.Disabled = false
                end
            end

            if Anti_Ragdoll_Connection_Connection then
                Anti_Ragdoll_Connection_Connection:Disconnect()
                Anti_Ragdoll_Connection_Connection = nil
            end

            if Anti_Ragdoll_Connection_Value then
                Anti_Ragdoll_Connection_Value:Disconnect()
                Anti_Ragdoll_Connection_Value = nil
            end
        end
    end
})
--------------------------------------------------------------------------------------------- Anti Ankle Breaker ---------------------------------------------------------------------------------------------
local Ankle_Connection = {}

AntiTab:AddToggle('Anti_Ankle_Breaker ', {
    Text = 'Anti Ankle Breaker',
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in pairs(getgc(true)) do
                if typeof(v) == "table" and not isreadonly(v) then
                    for key, value in pairs(v) do
                        if typeof(key) == "string" and key:lower():find("anklebreak") then
                            table.insert(Ankle_Connection, {table = v, key = key, value = value})
                            v[key] = nil
                        end
                    end
                end
            end
        else
            for _, data in pairs(Ankle_Connection) do
                data.table[data.key] = data.value
            end
            table.clear(Ankle_Connection)
        end
    end
})
--------------------------------------------------------------------------------------------- Anti Barrier ---------------------------------------------------------------------------------------------
local BarrierLastCheckTime = 0
local NoBarrierConnection

AntiTab:AddToggle('Anti_Barrier_Toggle', {
        Text = 'Anti Barrier',
        Default = false,
        Callback = function(Value)
            if Value then
                NoBarrierConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    if tick() - BarrierLastCheckTime >= 1 then
                        BarrierLastCheckTime = tick()
                        if workspace:FindFirstChild("BARRIER") then
                            workspace.BARRIER.CanCollide = false
                        end
                    end
                end)
            else
                if NoBarrierConnection then
                    NoBarrierConnection:Disconnect()
                    NoBarrierConnection = nil
                end
            end
        end
    })
--------------------------------------------------------------------------------------------- Visual Style/Zone  ---------------------------------------------------------------------------------------------
    local Style_Old = game:GetService("Players").LocalPlayer.Style.Value
    local Zone_Old = game:GetService("Players").LocalPlayer.Zone.Value
    local Style_Selected_Dropdown
    local Zone_Selected_Dropdown
    MiscTab:AddDropdown('Select_Styles_Value_Dropdown', {
        Values = styles,
        Default = {},
        Multi = false,
        Text = 'Select Style',
        Callback = function(Value)
                Style_Selected_Dropdown = Value
        end
    })
    MiscTab:AddToggle('Get_Style_Toggle', {
        Text = 'Get Style',
        Default = false,
        Callback = function(Value)
            if Value then
                game:GetService("Players").LocalPlayer.Style.Value = Style_Selected_Dropdown
            else
                game:GetService("Players").LocalPlayer.Style.Value = Style_Old 
            end
        end
    })

    MiscTab:AddDropdown('Select_Zone_Value_Dropdown', {
        Values = Zone,
        Default = {},
        Multi = false,
        Text = 'Select Zone',
        Callback = function(Value)
        Zone_Selected_Dropdown = Value
        end
    })

    MiscTab:AddToggle('Get_Zone_Toggle', {
        Text = 'Get Zone',
        Default = false,
        Callback = function(Value)
            if Value then
                game:GetService("Players").LocalPlayer.Zone.Value = Zone_Selected_Dropdown 
            else
                game:GetService("Players").LocalPlayer.Zone.Value = Zone_Old 
            end
        end
    })
--------------------------------------------------------------------------------------------- ESP BALL ---------------------------------------------------------------------------------------------
local Ball_ESP_Box = Tabs.ESP:AddLeftTabbox()
local Ball_ESP_Tab = Ball_ESP_Box:AddTab('Ball')
local Rays_BallPrediction = {}
local BallPrediction_Connection
local Trajectory_Color = Color3.new(1, 1, 1)
local Trajectory_Transparency_Value = 0

Ball_ESP_Tab:AddToggle('Ball_Trajectory', {
    Text = 'Ball Trajectory',
    Default = false,
    Callback = function(Value)
        if Value then
            repeat wait() until workspace:FindFirstChild("Basketball")
            local basketball = workspace.Basketball
            local gravity = workspace.Gravity

            local function predictLandingPoint(pos, vel)
                local g = Vector3.new(0, -gravity, 0)
                local t = (-vel.Y - math.sqrt(vel.Y^2 + 2 * gravity * pos.Y)) / -gravity
                if t < 0 then t = 0 end
                local landingPos = pos + vel * t + 0.5 * g * t * t
                return landingPos
            end

            local function createRay()
                if not Rays_BallPrediction[basketball] then
                    local rayPart = Instance.new("Part")
                    rayPart.Anchored = true
                    rayPart.CanCollide = false
                    rayPart.Color = Trajectory_Color
                    rayPart.Material = Enum.Material.Neon
                    rayPart.Transparency = Trajectory_Transparency_Value
                    rayPart.Size = Vector3.new(0.2, 0.2, 10)
                    rayPart.CFrame = basketball.CFrame
                    rayPart.Parent = workspace
                    Rays_BallPrediction[basketball] = rayPart
                end
            end

            BallPrediction_Connection = game:GetService("RunService").Heartbeat:Connect(function()
                if not basketball or not basketball.Parent then
                    local rayPart = Rays_BallPrediction[basketball]
                    if rayPart and rayPart.Parent then
                        rayPart:Destroy()
                    end
                    Rays_BallPrediction = {}
                    return
                end

                createRay()
                local pos = basketball.Position
                local vel = basketball.AssemblyLinearVelocity
                local predicted = predictLandingPoint(pos, vel)
                local direction = (predicted - pos)
                local distance = direction.Magnitude
                local rayPart = Rays_BallPrediction[basketball]
                rayPart.Size = Vector3.new(0.2, 0.2, distance)
                rayPart.CFrame = CFrame.new(pos, predicted) * CFrame.new(0, 0, -distance / 2)
                rayPart.Color = Trajectory_Color
                rayPart.Transparency = Trajectory_Transparency_Value
            end)
        else
            if BallPrediction_Connection then
                BallPrediction_Connection:Disconnect()
                BallPrediction_Connection = nil
            end
            for _, rayPart in pairs(Rays_BallPrediction) do
                if rayPart and rayPart.Parent then
                    rayPart:Destroy()
                end
            end
            Rays_BallPrediction = {}
        end
    end
})

:AddColorPicker('Color_Ball_Trajectory', {
    Default = Trajectory_Color,
    Title = 'Trajectory Color',
    Transparency = 0,
    Callback = function(Value)
        Trajectory_Color = Value
    end
})

Ball_ESP_Tab:AddSlider('Trajectory_Transparency', {
    Text = 'Trajectory Transparency',
    Default = Trajectory_Transparency_Value,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Trajectory_Transparency_Value = Value
    end
})

Ball_ESP_Tab:AddDivider()
local Circles_BallPrediction = {}
local BallPrediction_Connection_Prediction
local Prediction_Color = Color3.new(1, 1, 1)
local Prediction_Transparency_Value = 0

Ball_ESP_Tab:AddToggle('Ball_Prediction', {
    Text = 'Ball Prediction',
    Default = false,
    Callback = function(Value)
        if Value then
            repeat wait() until workspace:FindFirstChild("Basketball")
            local ball = workspace.Basketball

            local function createPredictionCircle()
                if not Circles_BallPrediction[ball] then
                    local circlePart = Instance.new("Part")
                    circlePart.Anchored = true
                    circlePart.CanCollide = false
                    circlePart.Shape = Enum.PartType.Ball
                    circlePart.Material = Enum.Material.Neon
                    circlePart.Size = Vector3.new(3, 3, 3)
                    circlePart.Color = Prediction_Color
                    circlePart.Transparency = Prediction_Transparency_Value
                    circlePart.Orientation = Vector3.new(0, 0, 90)
                    circlePart.Parent = workspace
                    Circles_BallPrediction[ball] = circlePart
                end
            end

            local function predictFallPosition()
                local gravity = workspace.Gravity
                local velocity = ball.AssemblyLinearVelocity
                local position = ball.Position
                local timeToFall = (velocity.Y + math.sqrt(velocity.Y^2 + 2 * gravity * position.Y)) / gravity
                local fallPosition = position + velocity * timeToFall
                return Vector3.new(fallPosition.X, 0.5, fallPosition.Z)
            end

            BallPrediction_Connection_Prediction = game:GetService("RunService").Heartbeat:Connect(function()
                if not ball or not ball.Parent then
                    local circlePart = Circles_BallPrediction[ball]
                    if circlePart and circlePart.Parent then
                        circlePart:Destroy()
                    end
                    Circles_BallPrediction = {}
                    return
                end

                createPredictionCircle()
                local predictedPosition = predictFallPosition()
                local circlePart = Circles_BallPrediction[ball]
                circlePart.Position = predictedPosition
                circlePart.Color = Prediction_Color
                circlePart.Transparency = Prediction_Transparency_Value
            end)
        else
            if BallPrediction_Connection_Prediction then
                BallPrediction_Connection_Prediction:Disconnect()
                BallPrediction_Connection_Prediction = nil
            end
            for _, circlePart in pairs(Circles_BallPrediction) do
                if circlePart and circlePart.Parent then
                    circlePart:Destroy()
                end
            end
            Circles_BallPrediction = {}
        end
    end
})

:AddColorPicker('Color_Ball_Prediction', {
    Default = Prediction_Color,
    Title = 'Prediction Color',
    Transparency = 0,
    Callback = function(Value)
        Prediction_Color = Value
    end
})

Ball_ESP_Tab:AddSlider('Prediction_Transparency', {
    Text = 'Prediction Transparency',
    Default = Prediction_Transparency_Value,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Prediction_Transparency_Value = Value
    end
})


Ball_ESP_Tab:AddDivider()
local ESP_Ball_Rays = {}
local ESP_BALL_CONNECTION
local Line_Color = Color3.new(0.4, 0.988235, 1)
local Line_Transparency_Value = 0
local Line_Distance_Value = 1000

Ball_ESP_Tab:AddToggle('ESP_Balls_Line_Toggle', {
    Text = 'Ball Line ESP',
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        if Value then
            repeat wait() until workspace:FindFirstChild("Basketball")
            local ball = workspace.Basketball

            local function createESPRay()
                if not ESP_Ball_Rays[ball] then
                    local rayPart = Instance.new("Part")
                    rayPart.Anchored = true
                    rayPart.CanCollide = false
                    rayPart.Color = Line_Color
                    rayPart.Material = Enum.Material.Neon
                    rayPart.Transparency = Line_Transparency_Value
                    rayPart.Size = Vector3.new(0.2, 0.2, 1)
                    rayPart.Parent = workspace
                    ESP_Ball_Rays[ball] = rayPart
                end
            end

            ESP_BALL_CONNECTION = game:GetService("RunService").Heartbeat:Connect(function()
                character = player.Character
                if not character then return end
                hrp = character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                if not ball or not ball.Parent then
                    if ESP_Ball_Rays[ball] then
                        ESP_Ball_Rays[ball]:Destroy()
                    end
                    ESP_Ball_Rays = {}
                    return
                end

                local distance = (ball.Position - hrp.Position).Magnitude
                if distance <= Line_Distance_Value then
                    createESPRay()
                    local direction = (ball.Position - hrp.Position)
                    local rayPart = ESP_Ball_Rays[ball]
                    rayPart.Size = Vector3.new(0.2, 0.2, distance)
                    rayPart.CFrame = CFrame.new(hrp.Position, ball.Position) * CFrame.new(0, 0, -distance / 2)
                    rayPart.Transparency = Line_Transparency_Value
                    rayPart.Color = Line_Color
                else
                    if ESP_Ball_Rays[ball] then
                        ESP_Ball_Rays[ball]:Destroy()
                        ESP_Ball_Rays[ball] = nil
                    end
                end
            end)
        else
            if ESP_BALL_CONNECTION then
                ESP_BALL_CONNECTION:Disconnect()
                ESP_BALL_CONNECTION = nil
            end
            for _, rayPart in pairs(ESP_Ball_Rays) do
                if rayPart and rayPart.Parent then
                    rayPart:Destroy()
                end
            end
            ESP_Ball_Rays = {}
        end
    end
})

:AddColorPicker('Color_Ball_Line', {
    Default = Line_Color,
    Title = 'Line Color',
    Transparency = 0,
    Callback = function(Value)
        Line_Color = Value
    end
})

Ball_ESP_Tab:AddSlider('Line_Transparency', {
    Text = 'Line Transparency',
    Default = Line_Transparency_Value,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Line_Transparency_Value = Value
    end
})

Ball_ESP_Tab:AddSlider('Line_Distance', {
    Text = 'Line Distance',
    Default = Line_Distance_Value,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Line_Distance_Value = Value
    end
})

Ball_ESP_Tab:AddDivider()
local ESP_Ball_Highlight = {}
local ESP_BALL_HIGHLIGHT_CONNECTION
local Highlight_Color = Color3.new(0.952941, 0.423529, 0.396078)
local Highlight_Transparency_Value = 0
local Highlight_Distance_Value = 1000

Ball_ESP_Tab:AddToggle('ESP_Balls_Highlight_Toggle', {
    Text = 'Ball Highlight ESP',
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        if Value then
            repeat wait() until workspace:FindFirstChild("Basketball")
            local ball = workspace.Basketball

            local function createESPHighlight()
                if not ESP_Ball_Highlight[ball] then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = Highlight_Color
                    highlight.FillTransparency = Highlight_Transparency_Value
                    highlight.OutlineTransparency = 1
                    highlight.Adornee = ball
                    highlight.Parent = ball
                    ESP_Ball_Highlight[ball] = highlight
                end
            end

            ESP_BALL_HIGHLIGHT_CONNECTION = game:GetService("RunService").Heartbeat:Connect(function()
                character = player.Character
                if not character then return end
                hrp = character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                if not ball or not ball.Parent then
                    if ESP_Ball_Highlight[ball] then
                        ESP_Ball_Highlight[ball]:Destroy()
                    end
                    ESP_Ball_Highlight = {}
                    return
                end

                local distance = (ball.Position - hrp.Position).Magnitude
                if distance <= Highlight_Distance_Value then
                    createESPHighlight()
                    local highlight = ESP_Ball_Highlight[ball]
                    if highlight then
                        highlight.FillColor = Highlight_Color
                        highlight.FillTransparency = Highlight_Transparency_Value
                    end
                else
                    if ESP_Ball_Highlight[ball] then
                        ESP_Ball_Highlight[ball]:Destroy()
                        ESP_Ball_Highlight[ball] = nil
                    end
                end
            end)
        else
            if ESP_BALL_HIGHLIGHT_CONNECTION then
                ESP_BALL_HIGHLIGHT_CONNECTION:Disconnect()
                ESP_BALL_HIGHLIGHT_CONNECTION = nil
            end
            for _, highlight in pairs(ESP_Ball_Highlight) do
                if highlight then
                    highlight:Destroy()
                end
            end
            ESP_Ball_Highlight = {}
        end
    end
})

:AddColorPicker('Color_Ball_Highlight', {
    Default = Highlight_Color,
    Title = 'Highlight Color',
    Transparency = 0,
    Callback = function(Value)
        Highlight_Color = Value
    end
})

Ball_ESP_Tab:AddSlider('Highlight_Transparency', {
    Text = 'Highlight Transparency',
    Default = Highlight_Transparency_Value,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Highlight_Transparency_Value = Value
    end
})

Ball_ESP_Tab:AddSlider('Highlight_Distance', {
    Text = 'Highlight Distance',
    Default = Highlight_Distance_Value,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Highlight_Distance_Value = Value
    end
})


Ball_ESP_Tab:AddDivider()
local ESP_Ball_Box = {}
local ESP_BALL_BOX_CONNECTION
local Box_Color = Color3.new(1, 1, 1)
local Box_Transparency_Value = 0
local Box_Distance_Value = 1000

Ball_ESP_Tab:AddToggle('ESP_Balls_Box_Toggle', {
    Text = 'Ball Box ESP',
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        if Value then
            repeat wait() until workspace:FindFirstChild("Basketball")
            local ball = workspace.Basketball

            local function createESPBox()
                if not ESP_Ball_Box[ball] then
                    local box = Instance.new("SelectionBox")
                    box.Adornee = ball
                    box.LineThickness = 0.05
                    box.Color3 = Box_Color
                    box.Transparency = Box_Transparency_Value
                    box.Name = "BallESPBox"
                    box.Parent = ball
                    ESP_Ball_Box[ball] = box
                end
            end

            ESP_BALL_BOX_CONNECTION = game:GetService("RunService").Heartbeat:Connect(function()
                character = player.Character
                if not character then return end
                hrp = character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                if not ball or not ball.Parent then
                    if ESP_Ball_Box[ball] then
                        ESP_Ball_Box[ball]:Destroy()
                    end
                    ESP_Ball_Box = {}
                    return
                end

                local distance = (ball.Position - hrp.Position).Magnitude
                if distance <= Box_Distance_Value then
                    createESPBox()
                    local box = ESP_Ball_Box[ball]
                    if box then
                        box.Color3 = Box_Color
                        box.Transparency = Box_Transparency_Value
                    end
                else
                    if ESP_Ball_Box[ball] then
                        ESP_Ball_Box[ball]:Destroy()
                        ESP_Ball_Box[ball] = nil
                    end
                end
            end)
        else
            if ESP_BALL_BOX_CONNECTION then
                ESP_BALL_BOX_CONNECTION:Disconnect()
                ESP_BALL_BOX_CONNECTION = nil
            end
            for _, box in pairs(ESP_Ball_Box) do
                if box then
                    box:Destroy()
                end
            end
            ESP_Ball_Box = {}
        end
    end
})
:AddColorPicker('Color_Ball_Box', {
    Default = Box_Color,
    Title = 'Box Color',
    Transparency = 0,
    Callback = function(Value)
        Box_Color = Value
    end
})

Ball_ESP_Tab:AddSlider('Box_Transparency', {
    Text = 'Box Transparency',
    Default = Box_Transparency_Value,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Box_Transparency_Value = Value
    end
})

Ball_ESP_Tab:AddSlider('Box_Distance', {
    Text = 'Box Distance',
    Default = Box_Distance_Value,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Box_Distance_Value = Value
    end
})
--------------------------------------------------------------------------------------------- ESP PLAYER ---------------------------------------------------------------------------------------------
do
local Player_ESP_Box = Tabs.ESP:AddRightTabbox()
local Player_ESP_TAB = Player_ESP_Box:AddTab('Player')

local ESP_Player_Rays = {}
local ESP_PLAYER_CONNECTION
local Player_Line_Color = Color3.new(1, 1, 1)
local Player_Line_Transparency = 0
local Player_Line_Distance = 1000
local ESP_Player_Team_Mode = "Everyone"
local ESP_Player_Team_Mode_1 = "Everyone"
local ESP_Player_Team_Mode_2 = "Everyone"
local ESP_Player_Highlights = {}
local ESP_PLAYER_CONNECTION_Highlights
local Player_Highlight_Color = Color3.new(0.423529, 0.941176, 1)
local Player_Highlight_Transparency = 0
local Player_Highlight_Distance = 1000
local ESP_Player_Boxes = {}
local ESP_PLAYER_CONNECTION_Box
local Player_Box_Color = Color3.new(1, 0.384313, 0.960784)
local Player_Box_Transparency = 0
local Player_Box_Distance = 1000


Player_ESP_TAB:AddDropdown('ESP_Player_Team_Select', {
    Values = { "Everyone", "Enemies Only" },
    Default = "Everyone",
    Multi = false,
    Text = 'Target Players',
    Callback = function(Value)
        ESP_Player_Team_Mode = Value
    end
})

Player_ESP_TAB:AddToggle('ESP_Players_Line_Toggle', {
    Text = 'Player Line ESP',
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        if Value then
            ESP_PLAYER_CONNECTION = game:GetService("RunService").Heartbeat:Connect(function()
                character = player.Character
                if not character then return end
                hrp = character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                for targetPlayer, ray in pairs(ESP_Player_Rays) do
                    if not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        if ray and ray.Parent then ray:Destroy() end
                        ESP_Player_Rays[targetPlayer] = nil
                    end
                end

                for _, target in ipairs(game:GetService("Players"):GetPlayers()) do
                    if target ~= player and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                        if ESP_Player_Team_Mode == "Enemies Only" and target.Team == player.Team then continue end

                        local targetHRP = target.Character.HumanoidRootPart
                        local distance = (targetHRP.Position - hrp.Position).Magnitude
                        if distance <= Player_Line_Distance then
                            if not ESP_Player_Rays[target] then
                                local ray = Instance.new("Part")
                                ray.Anchored = true
                                ray.CanCollide = false
                                ray.Material = Enum.Material.Neon
                                ray.Size = Vector3.new(0.2, 0.2, 1)
                                ray.Transparency = Player_Line_Transparency
                                ray.Color = Player_Line_Color
                                ray.Name = "PlayerESPRay"
                                ray.Parent = workspace
                                ESP_Player_Rays[target] = ray
                            end

                            local direction = targetHRP.Position - hrp.Position
                            local rayPart = ESP_Player_Rays[target]
                            rayPart.Size = Vector3.new(0.2, 0.2, direction.Magnitude)
                            rayPart.CFrame = CFrame.new(hrp.Position, targetHRP.Position) * CFrame.new(0, 0, -direction.Magnitude / 2)
                            rayPart.Color = Player_Line_Color
                            rayPart.Transparency = Player_Line_Transparency
                        else
                            if ESP_Player_Rays[target] then
                                ESP_Player_Rays[target]:Destroy()
                                ESP_Player_Rays[target] = nil
                            end
                        end
                    end
                end
            end)
        else
            if ESP_PLAYER_CONNECTION then
                ESP_PLAYER_CONNECTION:Disconnect()
                ESP_PLAYER_CONNECTION = nil
            end
            for _, ray in pairs(ESP_Player_Rays) do
                if ray then ray:Destroy() end
            end
            ESP_Player_Rays = {}
        end
    end
})
:AddColorPicker('Color_Player_Line', {
    Default = Player_Line_Color,
    Title = 'Line Color',
    Transparency = 0,
    Callback = function(Value)
        Player_Line_Color = Value
    end
})

Player_ESP_TAB:AddSlider('Player_Line_Transparency', {
    Text = 'Player Line Transparency',
    Default = Player_Line_Transparency,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Player_Line_Transparency = Value
    end
})

Player_ESP_TAB:AddSlider('Player_Line_Distance', {
    Text = 'Player Line Distance',
    Default = Player_Line_Distance,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Player_Line_Distance = Value
    end
})

Player_ESP_TAB:AddDivider()

Player_ESP_TAB:AddDropdown('ESP_Player_Team_Select', {
    Values = { "Everyone", "Enemies Only" },
    Default = "Everyone",
    Multi = false,
    Text = 'Target Players',
    Callback = function(Value)
        ESP_Player_Team_Mode_1 = Value
    end
})

Player_ESP_TAB:AddToggle('ESP_Players_Highlight_Toggle', {
    Text = 'Player Highlight ESP',
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        if Value then
            ESP_PLAYER_CONNECTION_Highlights = game:GetService("RunService").Heartbeat:Connect(function()
                character = player.Character
                if not character then return end
                hrp = character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                for targetPlayer, highlight in pairs(ESP_Player_Highlights) do
                    if not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        if highlight and highlight.Parent then highlight:Destroy() end
                        ESP_Player_Highlights[targetPlayer] = nil
                    end
                end

                for _, target in ipairs(game:GetService("Players"):GetPlayers()) do
                    if target ~= player and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                        if ESP_Player_Team_Mode_1 == "Enemies Only" and target.Team == player.Team then continue end

                        local targetHRP = target.Character.HumanoidRootPart
                        local distance = (targetHRP.Position - hrp.Position).Magnitude
                        if distance <= Player_Highlight_Distance then
                            if not ESP_Player_Highlights[target] then
                                local highlight = Instance.new("Highlight")
                                highlight.Name = "PlayerESPHighlight"
                                highlight.FillColor = Player_Highlight_Color
                                highlight.FillTransparency = Player_Highlight_Transparency
                                highlight.OutlineTransparency = 1
                                highlight.Adornee = target.Character
                                highlight.Parent = target.Character
                                ESP_Player_Highlights[target] = highlight
                            else
                                local highlight = ESP_Player_Highlights[target]
                                highlight.FillColor = Player_Highlight_Color
                                highlight.FillTransparency = Player_Highlight_Transparency
                            end
                        else
                            if ESP_Player_Highlights[target] then
                                ESP_Player_Highlights[target]:Destroy()
                                ESP_Player_Highlights[target] = nil
                            end
                        end
                    end
                end
            end)
        else
            if ESP_PLAYER_CONNECTION_Highlights then
                ESP_PLAYER_CONNECTION_Highlights:Disconnect()
                ESP_PLAYER_CONNECTION_Highlights = nil
            end
            for _, highlight in pairs(ESP_Player_Highlights) do
                if highlight then highlight:Destroy() end
            end
            ESP_Player_Highlights = {}
        end
    end
})
:AddColorPicker('Color_Player_Highlight', {
    Default = Player_Highlight_Color,
    Title = 'Highlight Color',
    Transparency = 0,
    Callback = function(Value)
        Player_Highlight_Color = Value
    end
})

Player_ESP_TAB:AddSlider('Player_Highlight_Transparency', {
    Text = 'Highlight Transparency',
    Default = Player_Highlight_Transparency,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Player_Highlight_Transparency = Value
    end
})

Player_ESP_TAB:AddSlider('Player_Highlight_Distance', {
    Text = 'Highlight Distance',
    Default = Player_Highlight_Distance,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Player_Highlight_Distance = Value
    end
})

Player_ESP_TAB:AddDivider()

Player_ESP_TAB:AddDropdown('ESP_Player_Team_Select_Box', {
    Values = { "Everyone", "Enemies Only" },
    Default = "Everyone",
    Multi = false,
    Text = 'Target Players',
    Callback = function(Value)
        ESP_Player_Team_Mode_2 = Value
    end
})

Player_ESP_TAB:AddToggle('ESP_Players_Box_Toggle', {
    Text = 'Player Box ESP',
    Default = false,
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        if Value then
            ESP_PLAYER_CONNECTION_Box = game:GetService("RunService").Heartbeat:Connect(function()
                character = player.Character
                if not character then return end
                hrp = character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                for targetPlayer, box in pairs(ESP_Player_Boxes) do
                    if not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        if box and box.Parent then box:Destroy() end
                        ESP_Player_Boxes[targetPlayer] = nil
                    end
                end

                for _, target in ipairs(game:GetService("Players"):GetPlayers()) do
                    if target ~= player and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                        if ESP_Player_Team_Mode_2 == "Enemies Only" and target.Team == player.Team then continue end

                        local targetHRP = target.Character.HumanoidRootPart
                        local distance = (targetHRP.Position - hrp.Position).Magnitude
                        if distance <= Player_Box_Distance then
                            if not ESP_Player_Boxes[target] then
                                local box = Instance.new("SelectionBox")
                                box.Name = "PlayerESPBox"
                                box.Adornee = target.Character
                                box.LineThickness = 0.05
                                box.Color3 = Player_Box_Color
                                box.Transparency = Player_Box_Transparency
                                box.Parent = target.Character
                                ESP_Player_Boxes[target] = box
                            else
                                local box = ESP_Player_Boxes[target]
                                box.Color3 = Player_Box_Color
                                box.Transparency = Player_Box_Transparency
                            end
                        else
                            if ESP_Player_Boxes[target] then
                                ESP_Player_Boxes[target]:Destroy()
                                ESP_Player_Boxes[target] = nil
                            end
                        end
                    end
                end
            end)
        else
            if ESP_PLAYER_CONNECTION_Box then
                ESP_PLAYER_CONNECTION_Box:Disconnect()
                ESP_PLAYER_CONNECTION_Box = nil
            end
            for _, box in pairs(ESP_Player_Boxes) do
                if box then box:Destroy() end
            end
            ESP_Player_Boxes = {}
        end
    end
})
:AddColorPicker('Color_Player_Box', {
    Default = Player_Box_Color,
    Title = 'Box Color',
    Transparency = 0,
    Callback = function(Value)
        Player_Box_Color = Value
    end
})

Player_ESP_TAB:AddSlider('Player_Box_Transparency', {
    Text = 'Box Transparency',
    Default = Player_Box_Transparency,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Player_Box_Transparency = Value
    end
})

Player_ESP_TAB:AddSlider('Player_Box_Distance', {
    Text = 'Box Distance',
    Default = Player_Box_Distance,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        Player_Box_Distance = Value
    end
})

end
-- UI SETTINGS --
    local MenuGroup = Tabs.UISettings:AddLeftGroupbox('Xecret Control Panel')
    local confirmUnload = false
    MenuGroup:AddButton('Close Xecret Hub', function()
        if not confirmUnload then
            confirmUnload = true
            Library:Notify("WOULD YOU LIKE TO CONTINUTE?", 5)
            task.delay(3, function()
                confirmUnload = false
            end)
        else
            Library:Unload()
        end
    end) 
    MenuGroup:AddLabel('Keybind')
    :AddKeyPicker('MenuKeybind', {Default = 'RightShift', NoUI = true, Text = 'Menu keybind'})
    Library.ToggleKeybind = Options.MenuKeybind
    ThemeManager:SetLibrary(Library)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({'MenuKeybind'})
    ThemeManager:SetFolder('XecretHub')
    SaveManager:SetFolder('XecretHub/XecretHub-Settings')
    SaveManager:BuildConfigSection(Tabs.UISettings)
    ThemeManager:ApplyToTab(Tabs.UISettings)
    SaveManager:LoadAutoloadConfig()
