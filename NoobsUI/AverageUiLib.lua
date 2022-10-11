local module = {}
local _Lc = game.Players.LocalPlayer
if game:GetService('RunService'):IsStudio() then
	module.parent = _Lc.PlayerGui:WaitForChild("Chat")
else
	module.parent = game.coregui
end

--[[{ -- Coloring thing for you
	ToggleOn = Color3.new(0, 1, 0),
	ToggleOff = Color3.new(1, 0, 0),
	Main = Color3.fromRGB(180, 108, 136),
	Drawer = Color3.fromRGB(194, 116, 146),
	View = Color3.fromRGB(157, 94, 118),
	DefualtTextColor = Color3.fromRGB(226, 226, 226)
}]]
function module:UI(uiName,Colors)
	uiName = uiName or 'NoobsUI'
	local Colors = Colors or {
		ToggleOn = Color3.new(0, 1, 0),
		ToggleOff = Color3.new(1, 0, 0),
		Main = Color3.fromRGB(180, 108, 136),
		Drawer = Color3.fromRGB(194, 116, 146),
		View = Color3.fromRGB(157, 94, 118),
		DefualtTextColor = Color3.fromRGB(226, 226, 226)
	}
	local skdelay = .05
	local cum = {}
	local Screen = Instance.new('ScreenGui',module.parent)
	local ___Main = Instance.new("Frame",Screen)
	local ___A = Instance.new("UICorner")
	local ___TOP = Instance.new("Frame")
	local ___Exit = Instance.new("ImageButton")
	local ___Title = Instance.new("TextLabel")
	local ___B = Instance.new("Frame")
	local ___Drawer = Instance.new("ScrollingFrame")
	local ___C = Instance.new("UIListLayout")
	local ___D = Instance.new("UIListLayout")
	local ___Contents = Instance.new("ScrollingFrame")
	local ___E = Instance.new("UIListLayout")
	local ___F = Instance.new("UIListLayout")

	___Main.BackgroundColor3 = Colors.Main
	___Main.BorderSizePixel = 0
	___Main.Position = UDim2.new(0.337252527, 0, 0.336956531, 0)
	___Main.Size = UDim2.new(0, 525, 0, 300)

	___A.CornerRadius = UDim.new(0, 10)
	___A.Parent = ___Main

	___TOP.Name = "Top"
	___TOP.Parent = ___Main
	___TOP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	___TOP.BackgroundTransparency = 1.000
	___TOP.BorderSizePixel = 0
	___TOP.Size = UDim2.new(1, 0, 0, 30)

	___Exit.Name = "Close"
	___Exit.Parent = ___TOP
	___Exit.BackgroundTransparency = 1.000
	___Exit.Position = UDim2.new(0.941993952, 0, -0.00507202139, 0)
	___Exit.Size = UDim2.new(0, 30, 0, 30)
	___Exit.ZIndex = 2
	___Exit.Image = "rbxassetid://3926305904"
	___Exit.ImageRectOffset = Vector2.new(284, 4)
	___Exit.ImageRectSize = Vector2.new(24, 24)

	___Title.Parent = ___TOP
	___Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	___Title.BackgroundTransparency = 1.000
	___Title.Size = UDim2.new(0, 489, 1, 0)
	___Title.Position = UDim2.new(0, 2.5, 0, 0)
	___Title.Font = Enum.Font.SourceSans
	___Title.Text = uiName
	___Title.TextWrapped = true
	___Title.RichText = true
	___Title.TextColor3 = Colors.DefualtTextColor
	___Title.TextSize = 28
	___Title.TextXAlignment = Enum.TextXAlignment.Left
	local UserInputService = game:GetService("UserInputService")
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		wait(skdelay)
		___Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	___TOP.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = ___Main.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	___TOP.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	___B.Name = "Bottom"
	___B.Parent = ___Main
	___B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	___B.BackgroundTransparency = 1.000
	___B.BorderSizePixel = 0
	___B.LayoutOrder = 1
	___B.Position = UDim2.new(0, 0, 0.100000001, 0)
	___B.Size = UDim2.new(0, 525, 0, 260)

	___Drawer.Name = "Side"
	___Drawer.Parent = ___B
	___Drawer.Active = true
	___Drawer.BackgroundColor3 = Colors.Drawer
	___Drawer.BorderSizePixel = 0
	___Drawer.Size = UDim2.new(0, 131, 0, 260)
	___Drawer.CanvasSize = UDim2.new(0, 0, 0, 0)
	___Drawer.ScrollBarThickness = 5
	___Drawer.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

	___C.Parent = ___Drawer
	___C.HorizontalAlignment = Enum.HorizontalAlignment.Center
	___C.SortOrder = Enum.SortOrder.LayoutOrder
	___C.Padding = UDim.new(0, 2)

	___D.Parent = ___B
	___D.FillDirection = Enum.FillDirection.Horizontal
	___D.SortOrder = Enum.SortOrder.LayoutOrder

	___Contents.Name = "Main"
	___Contents.Parent = ___B
	___Contents.Active = true
	___Contents.BackgroundColor3 = Colors.View
	___Contents.BorderSizePixel = 0
	___Contents.Position = UDim2.new(0.0742857158, 0, 0, 0)
	___Contents.Size = UDim2.new(0, 393, 0, 260)
	___Contents.CanvasSize = UDim2.new(0, 0, 0, 0)
	___Contents.LayoutOrder = 2
	___Contents.ScrollBarThickness = 5
	___Contents.AutomaticCanvasSize = "Y"

	___E.Parent = ___Contents
	___E.HorizontalAlignment = Enum.HorizontalAlignment.Center
	___E.SortOrder = Enum.SortOrder.LayoutOrder
	___E.Padding = UDim.new(0, 2)

	___F.Parent = ___Main
	___F.HorizontalAlignment = Enum.HorizontalAlignment.Center
	___F.SortOrder = Enum.SortOrder.LayoutOrder
	local _Anim = {
		game:GetService('TweenService'):Create(___Exit,TweenInfo.new(.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In),{
			Rotation = 45
		}),
		game:GetService('TweenService'):Create(___Exit,TweenInfo.new(.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In),{
			Rotation = 0
		})
	}
	___Exit.MouseButton1Click:Connect(function()
		if ___Exit.Rotation == 0 then
			_Anim[2]:Cancel()
			_Anim[1]:Play()
			___Contents:TweenSize(UDim2.new(0,393,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,.1,true)
			___Drawer:TweenSize(UDim2.new(0, 131, 0, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,.1,true)
			___Main:TweenSize(UDim2.new(0, 525, 0, 30),Enum.EasingDirection.In,Enum.EasingStyle.Sine,.1,true)
		else
			_Anim[1]:Cancel()
			_Anim[2]:Play()
			___Contents:TweenSize(UDim2.new(0,393,0,260),Enum.EasingDirection.In,Enum.EasingStyle.Sine,.1,true)
			___Drawer:TweenSize(UDim2.new(0, 131, 0, 260),Enum.EasingDirection.In,Enum.EasingStyle.Sine,.1,true)
			___Main:TweenSize(UDim2.new(0, 525, 0, 300),Enum.EasingDirection.In,Enum.EasingStyle.Sine,.1,true)
		end
	end)

	local _Mains={
		TabAM=0
	}
	local ColoringStuff = {
		Drop = {},Togg={}
	}
	function cum:Tab(Name)
		Name = Name or 'Tab'
		local __Tab = Instance.new("ImageButton")
		local __A = Instance.new("UICorner")
		local __B = Instance.new("ImageLabel")
		local __Text = Instance.new("TextLabel")
		local __C = Instance.new("UIListLayout")
		--
		local __Tabview = Instance.new("Frame")
		local __D = Instance.new("UIListLayout")

		__Tab.Name = "TabButton"
		__Tab.Parent = ___Drawer
		__Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		__Tab.LayoutOrder = _Mains.TabAM
		__Tab.BackgroundTransparency = 0.900
		__Tab.Position = UDim2.new(0, 0, -0.00384615385, 0)
		__Tab.Size = UDim2.new(0, 131, 0, 35)
		__Tab.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
		__Tab.ImageTransparency = 1.000

		__A.CornerRadius = UDim.new(0, 10)
		__A.Parent = __Tab

		__B.Parent = __Tab
		__B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		__B.BackgroundTransparency = 1.000
		__B.Size = UDim2.new(0, 25, 0, 25)
		__B.Image = "rbxassetid://3926305904"
		__B.ImageRectOffset = Vector2.new(764, 764)
		__B.ImageRectSize = Vector2.new(36, 36)

		__Text.Parent = __Tab
		__Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		__Text.BackgroundTransparency = 1.000
		__Text.Position = UDim2.new(0.293893129, 0, 0.291666687, 0)
		__Text.Size = UDim2.new(0, 102, 0, 25)
		__Text.Font = Enum.Font.SourceSans
		__Text.TextColor3 = Colors.DefualtTextColor
		__Text.LayoutOrder = 1
		__Text.TextSize = 14.000
		__Text.RichText = true
		__Text.Text = Name
		__Text.TextWrapped = true

		__C.Parent = __Tab
		__C.FillDirection = Enum.FillDirection.Horizontal
		__C.HorizontalAlignment = Enum.HorizontalAlignment.Center
		__C.SortOrder = Enum.SortOrder.LayoutOrder
		__C.VerticalAlignment = Enum.VerticalAlignment.Center

		__Tabview.Name = "Tab"
		__Tabview.Parent = ___Contents
		__Tabview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		__Tabview.BackgroundTransparency = 1.000
		__Tabview.Size = UDim2.new(1, 0, 0, 0)
		__Tabview.Visible = false

		__D.Parent = __Tabview
		__D.HorizontalAlignment = Enum.HorizontalAlignment.Center
		__D.SortOrder = Enum.SortOrder.LayoutOrder
		__D.Padding = UDim.new(0, 2)
		__Tab.MouseButton1Click:Connect(function()
			for i,v in ipairs(___Contents:GetChildren()) do
				if v:IsA('GuiObject') then
					v.Visible = false
				end
			end
			__Tabview.Visible = true
		end)
		local bussygrow = false
		local function growY(x,t)
			if bussygrow == false then
				bussygrow = true
				local endsize = UDim2.new(__Tabview.Size.X,__Tabview.Size.Y + UDim.new(0,x))
				for i=0,1,.1 do
					__Tabview.Size = __Tabview.Size:Lerp(endsize,i)
					if t then
						wait(.01)
					end
				end
				bussygrow = false
			end
		end
		local objc = 0
		local functions = {} 

		function functions:Text(Text)
			Text = Text or 'Text'
			local _Text = Instance.new("TextLabel",__Tabview)
			local _A = Instance.new("UICorner")

			_Text.Name = Text
			_Text.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
			_Text.BackgroundTransparency = 0.500
			_Text.BorderColor3 = Color3.fromRGB(27, 42, 53)
			_Text.BorderSizePixel = 0
			_Text.Position = UDim2.new(0.245547071, 0, 0, 0)
			_Text.Size = UDim2.new(0, 300, 0, 35)
			_Text.Font = Enum.Font.SourceSans
			_Text.TextColor3 = Colors.DefualtTextColor
			_Text.TextSize = 14.000
			_Text.RichText = true
			_Text.Text = Text
			_Text.TextWrapped = true

			_A.CornerRadius = UDim.new(0, 10)
			_A.Parent = _Text
			local called = {}
			local DB = false

			function called:newText(x)
				_Text.Text = x
			end
			function called:ExtendY(x)
				if DB == false then
					DB = true
					local endsize = UDim2.new(_Text.Size.X,_Text.Size.Y + UDim.new(0,x))
					for i=0,1,.1 do
						_Text.Size = _Text.Size:Lerp(endsize,i)
						wait(.0001)
					end
					DB = false
				end
			end
			function called:ChangeProperty(prop,val)
				_Text[prop] = val
			end
			growY(38)
			return called
		end
		function functions:Button(Text,onclick)
			Text = Text or 'Button'
			onclick = onclick or function() end
			local _Button = Instance.new("TextButton")
			local _A = Instance.new("UICorner")

			_Button.Name = Text
			_Button.Parent = __Tabview
			_Button.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
			_Button.BackgroundTransparency = 0.500
			_Button.Size = UDim2.new(0, 300, 0, 35)
			_Button.AutoButtonColor = true
			_Button.Font = Enum.Font.SourceSans
			_Button.TextColor3 = Colors.DefualtTextColor
			_Button.TextSize = 14.000
			_Button.RichText = true
			_Button.Text = Text
			_Button.TextWrapped = true
			_Button.MouseButton1Click:Connect(function()
				onclick()
			end)

			_A.CornerRadius = UDim.new(0, 10)
			_A.Parent = _Button

			local called,DB = {},false

			function called:newText(x)
				_Button.Text = x
			end
			function called:ExtendY(x)
				if DB == false then
					DB = true
					local endsize = UDim2.new(_Button.Size.X,_Button.Size.Y + UDim.new(0,x))
					for i=0,1,.1 do
						_Button.Size = _Button.Size:Lerp(endsize,i)
						wait(.0001)
					end
					DB = false
				end
			end
			function called:ChangeProperty(prop,val)
				_Button[prop] = val
			end
			function called:newOnclick(x)
				onclick = x
			end
			growY(38)
			return called
		end
		function functions:Toggle(Text,State,ontoggle)
			Text = Text or 'Toggle'
			State = State or false
			ontoggle = ontoggle or function() end
			local _Button = Instance.new("ImageButton")
			local _A = Instance.new("Frame")
			local _B = Instance.new("Frame")
			local _C = Instance.new("UICorner")
			local _D = Instance.new("Frame")
			local _E = Instance.new("UICorner")
			local _F = Instance.new("UICorner")
			local _G_ = Instance.new("UICorner")
			local _Text = Instance.new("TextLabel")

			_Button.Parent = __Tabview
			_Button.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
			_Button.BackgroundTransparency = 0.500
			_Button.Position = UDim2.new(0.155216292, 0, 0.169398904, 0)
			_Button.Size = UDim2.new(0, 300, 0, 35)
			_Button.AutoButtonColor = false
			_Button.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			_Button.ImageTransparency = 1.000
			_Button.Name = Text

			_A.Name = "switch"
			_A.Parent = _Button
			_A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_A.BackgroundTransparency = 1.000
			_A.Position = UDim2.new(0.666666687, 0, 0, 0)
			_A.Size = UDim2.new(0.333333522, 0, 1, 0)

			_B.Name = "holder"
			_B.Parent = _A
			_B.AnchorPoint = Vector2.new(0.5, 0.5)
			_B.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
			_B.BackgroundTransparency = 0.800
			_B.Position = UDim2.new(0.5, 0, 0.5, 0)
			_B.Size = UDim2.new(0.800000012, 0, 0.699999988, 0)

			_C.CornerRadius = UDim.new(0, 10)
			_C.Parent = _B

			_D.Name = "leverl"
			_D.Parent = _B
			_D.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			_D.Size = UDim2.new(0.5, 0, 1, 0)
			table.insert(ColoringStuff.Togg,_D)

			_E.CornerRadius = UDim.new(0, 10)
			_E.Parent = _D

			_F.CornerRadius = UDim.new(0, 10)
			_F.Parent = _A

			_G_.CornerRadius = UDim.new(0, 10)
			_G_.Parent = _Button

			_Text.Parent = _Button
			_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_Text.BackgroundTransparency = 1.000
			_Text.BorderSizePixel = 0
			_Text.Size = UDim2.new(0, 200, 0, 35)
			_Text.Font = Enum.Font.SourceSans
			_Text.TextColor3 = Colors.DefualtTextColor
			_Text.TextSize = 14.000
			_Text.RichText = true
			_Text.Text = Text
			local function changestate(x)
				if x == true then
					_D:TweenPosition(UDim2.new(.5,0,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,.1,true)	
					_D.BackgroundColor3 = _D.BackgroundColor3:Lerp(Colors.ToggleOn,1)
				elseif x == false then
					_D:TweenPosition(UDim2.new(0,0,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,.1,true)	
					_D.BackgroundColor3 = _D.BackgroundColor3:Lerp(Colors.ToggleOff,1)	
				end
			end
			_Button.MouseButton1Click:Connect(function()
				State = not State
				ontoggle(State)
				changestate(State)
			end)
			changestate(State)

			local called = {}

			function called:newText(x)
				_Text.Text = x
			end
			function called:newState(x)
				State = x
			end
			function called:newOntoggle(x)
				ontoggle = x
			end
			growY(38)
			return called
		end
		function functions:TextBox(Text,Typed,inputEnded)
			Text = Text or "Textbox"
			Typed = Typed or "x"
			inputEnded = inputEnded or function() end
			local _Frame = Instance.new("Frame")
			local _A = Instance.new("UIListLayout")
			local _Text = Instance.new("TextLabel")
			local _EditText = Instance.new("TextBox")
			local _B = Instance.new("UICorner")
			local _C = Instance.new("UICorner")

			_Frame.Name = Text
			_Frame.Parent = __Tabview
			_Frame.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
			_Frame.BackgroundTransparency = 0.500
			_Frame.Position = UDim2.new(0.29516539, 0, 0.316091955, 0)
			_Frame.Size = UDim2.new(0, 300, 0, 35)

			_A.Parent = _Frame
			_A.FillDirection = Enum.FillDirection.Horizontal
			_A.HorizontalAlignment = Enum.HorizontalAlignment.Center
			_A.SortOrder = Enum.SortOrder.LayoutOrder

			_Text.Parent = _Frame
			_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_Text.BackgroundTransparency = 1.000
			_Text.BorderSizePixel = 0
			_Text.Position = UDim2.new(0.245547071, 0, 0, 0)
			_Text.Size = UDim2.new(0, 200, 0, 35)
			_Text.Font = Enum.Font.SourceSans
			_Text.TextColor3 = Colors.DefualtTextColor
			_Text.TextSize = 16.000
			_Text.TextWrapped = true
			_Text.RichText = true
			_Text.Text = Text

			_EditText.Parent = _Frame
			_EditText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_EditText.BackgroundTransparency = 0.900
			_EditText.BorderSizePixel = 0
			_EditText.Position = UDim2.new(0.5, 0, 0, 0)
			_EditText.Size = UDim2.new(0, 100, 0, 35)
			_EditText.ClearTextOnFocus = false
			_EditText.Font = Enum.Font.SourceSans
			_EditText.Text = Typed
			_EditText.TextColor3 = Colors.DefualtTextColor
			_EditText.TextSize = 20.000
			_EditText.TextWrapped = true

			_B.CornerRadius = UDim.new(0, 10)
			_B.Parent = _EditText

			_C.CornerRadius = UDim.new(0, 10)
			_C.Parent = _Frame
			local attached = false
			local zzzz = _EditText.InputEnded:Connect(function()
				inputEnded(_EditText.Text)
			end)

			local called = {}

			function called:Edit(x)
				_EditText.Text = x
				inputEnded(_EditText.Text)
			end
			function called:ye()
				attached = true
				zzzz:Disconnect()
				return _EditText
			end
			function called:newText(x)
				_Text.Text = x
			end
			function called:newInputended(x)
				inputEnded = x
			end
			growY(38)
			return called
		end
		function functions:SeekBar(Min,Max,Current,onSeek,textbox,round)
			Max = Max or 100
			Min = Min or 0
			Current = Current or 0
			onSeek = onSeek or function() end
			round = round
			if round == nil then
				round = true
			end
			local seekbar = Instance.new("ImageButton")
			local UIListLayout = Instance.new("UIListLayout")
			local UICorner = Instance.new("UICorner")
			local bar = Instance.new("Frame")
			local seeking = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local UICorner_3 = Instance.new("UICorner")

			seekbar.Name = "seekbar"
			seekbar.Parent = __Tabview
			seekbar.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
			seekbar.BackgroundTransparency = 0.500
			seekbar.Size = UDim2.new(0, 300, 0, 35)
			seekbar.AutoButtonColor = false
			seekbar.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			seekbar.ImageTransparency = 1.000

			UIListLayout.Parent = seekbar
			UIListLayout.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			UICorner.CornerRadius = UDim.new(0, 10)
			UICorner.Parent = seekbar

			bar.Name = "bar"
			bar.Parent = seekbar
			bar.BackgroundColor3 = Color3.fromRGB(209, 170, 71)
			bar.BackgroundTransparency = 0.800
			bar.BorderSizePixel = 0
			bar.Position = UDim2.new(0.0250000004, 0, 0, 0)
			bar.Size = UDim2.new(0, 285, 0, 25)

			seeking.Name = "seeking"
			seeking.Parent = bar
			seeking.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
			seeking.BackgroundTransparency = 0.600
			seeking.BorderSizePixel = 0
			seeking.Size = UDim2.new(1, 0, 1, 0)

			UICorner_2.CornerRadius = UDim.new(0, 10)
			UICorner_2.Parent = seeking

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = bar
			local uis = game:GetService("UserInputService")
			local editbox = textbox
			local isdragg = false
			local current = Current
			local dragging
			local dragInput
			local dragStart
			local startPos
			
			local function Set(v)
				if v >= Max then
					seeking.Size = UDim2.new(1,0, 1,0)
				elseif v <= Min then
					seeking.Size = UDim2.new(0,0, 1,0)
				else
					local x
					local m = Min
					local n = Max
					if Min < 0 then
						m = Min*-1
					end
					if Max < 0 then
						n = Max*-1
					end
					if Min > 0 then
						x = ((v)/(n+m))
					else
						x = ((v+n)/(n+m))
					end
					seeking.Size = UDim2.new(x,0, 1,0)
				end
			end
			Set(current)
			local BOXEXIST = false
			if editbox~= nil then
				if editbox:IsA('TextBox') then
					BOXEXIST = true
				end end
			if BOXEXIST then
				editbox.FocusLost:Connect(function()
					if not isdragg then
						local allowed = {
							[""] = true,
							["-"] = true
						}
						local text = editbox.Text

						if typeof(tonumber(text)) == nil then
							editbox.Text = text:sub(1, #text - 1)
						elseif typeof(tonumber(text)) == "number" then
							current = tonumber(text)
							Set(current)
							onSeek(current)
						end
					end
				end)end

			local function update(input)
				local delta = input.Position - dragStart
				local xd = bar.AbsoluteSize.X
				local x = startPos.X.Scale + delta.X/xd
				wait(skdelay)
				x = math.clamp(x, 0, 1)
				current = Min + (Max - Min) * x
				local z = (current-Min)/Max
				if x > 0 then
					if x < 1 then
						seeking.Size = UDim2.new(x,0, 1,0)
					else
						seeking.Size = UDim2.new(1,0, 1,0)
					end
				else
					seeking.Size = UDim2.new(0, 0, 1, 0)
				end
				if BOXEXIST then
					if round then
						editbox.Text = math.round(current)
					else
						editbox.Text = current
					end
				end
				onSeek(current)
			end

			bar.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStart = input.Position
					startPos = seeking.Size

					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)
			bar.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			uis.InputChanged:Connect(function(input)
				if input == dragInput and dragging then
					update(input)
				end
			end)
			local called = {}

			function called:newCurrent(x)
				current = tonumber(x)
				Set(x)
				onSeek(current)
				if BOXEXIST then
					if round then
						editbox.Text = math.round(current)
					else
						editbox.Text = current
					end
				end
			end
			function called:newMin(x)
				Min = x
			end
			function called:newMax(x)
				Max = x
			end
			function called:newOnseek(x)
				onSeek = x
			end
			growY(38)
			return called
		end
		function functions:TextBoxs(Text,Typed,inputEnded1,inputEnded2,inputEnded3)
			Text = Text or {"X :","Y :","Z :"}
			Typed = Typed or {'','',''}
			inputEnded1 = inputEnded1 or function() end
			inputEnded2 = inputEnded2 or function() end
			inputEnded3 = inputEnded3 or function() end
			local small3 = Instance.new("Frame")
			local _B = Instance.new("UIListLayout")
			local _A = Instance.new("UICorner")
			local _C = Instance.new("Frame")
			local _D = Instance.new("UIListLayout")
			local _Text1 = Instance.new("TextLabel")
			local _EditText1 = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")
			local _E = Instance.new("Frame")
			local _F = Instance.new("UIListLayout")
			local _Text2 = Instance.new("TextLabel")
			local _EditText2 = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")
			local _G_ = Instance.new("Frame")
			local _H = Instance.new("UIListLayout")
			local _Text3 = Instance.new("TextLabel")
			local _EditText3 = Instance.new("TextBox")
			local _I = Instance.new("UICorner")

			small3.Name = Text[1]
			small3.Parent = __Tabview
			small3.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
			small3.BackgroundTransparency = 0.500
			small3.Position = UDim2.new(0.29516539, 0, 0.316091955, 0)
			small3.Size = UDim2.new(0, 300, 0, 35)

			_B.Parent = small3
			_B.FillDirection = Enum.FillDirection.Horizontal
			_B.HorizontalAlignment = Enum.HorizontalAlignment.Center
			_B.SortOrder = Enum.SortOrder.LayoutOrder

			_A.CornerRadius = UDim.new(0, 10)
			_A.Parent = small3

			_C.Parent = small3
			_C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_C.BackgroundTransparency = 1.000
			_C.Size = UDim2.new(0, 100, 1, 0)

			_D.Parent = _C
			_D.FillDirection = Enum.FillDirection.Horizontal
			_D.HorizontalAlignment = Enum.HorizontalAlignment.Center
			_D.SortOrder = Enum.SortOrder.LayoutOrder

			_Text1.Parent = _C
			_Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_Text1.BackgroundTransparency = 1.000
			_Text1.BorderSizePixel = 0
			_Text1.Position = UDim2.new(0.245547071, 0, 0, 0)
			_Text1.Size = UDim2.new(0, 50, 0, 35)
			_Text1.Font = Enum.Font.SourceSans
			_Text1.TextColor3 = Colors.DefualtTextColor
			_Text1.TextSize = 16.000
			_Text1.RichText = true
			_Text1.Text = Text[1]
			_Text1.TextWrapped = true

			_EditText1.Parent = _C
			_EditText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_EditText1.BackgroundTransparency = 0.900
			_EditText1.BorderSizePixel = 0
			_EditText1.Position = UDim2.new(0.444000006, 0, 0, 0)
			_EditText1.Size = UDim2.new(0, 50, 0, 35)
			_EditText1.ClearTextOnFocus = false
			_EditText1.Font = Enum.Font.SourceSans
			_EditText1.Text = Typed[1]
			_EditText1.TextColor3 = Colors.DefualtTextColor
			_EditText1.TextSize = 20.000
			_EditText1.TextWrapped = true

			UICorner.CornerRadius = UDim.new(0, 10)
			UICorner.Parent = _EditText1

			_E.Parent = small3
			_E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_E.BackgroundTransparency = 1.000
			_E.Size = UDim2.new(0, 100, 1, 0)

			_F.Parent = _E
			_F.FillDirection = Enum.FillDirection.Horizontal
			_F.HorizontalAlignment = Enum.HorizontalAlignment.Center
			_F.SortOrder = Enum.SortOrder.LayoutOrder

			_Text2.Parent = _E
			_Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_Text2.BackgroundTransparency = 1.000
			_Text2.BorderSizePixel = 0
			_Text2.Position = UDim2.new(0.245547071, 0, 0, 0)
			_Text2.Size = UDim2.new(0, 50, 0, 35)
			_Text2.Font = Enum.Font.SourceSans
			_Text2.TextColor3 = Colors.DefualtTextColor
			_Text2.TextSize = 16.000
			_Text2.RichText = true
			_Text2.Text = Text[2]
			_Text2.TextWrapped = true

			_EditText2.Parent = _E
			_EditText2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_EditText2.BackgroundTransparency = 0.900
			_EditText2.BorderSizePixel = 0
			_EditText2.Position = UDim2.new(0.444000006, 0, 0, 0)
			_EditText2.Size = UDim2.new(0, 50, 0, 35)
			_EditText2.ClearTextOnFocus = false
			_EditText2.Font = Enum.Font.SourceSans
			_EditText2.Text = Typed[2]
			_EditText2.TextColor3 = Colors.DefualtTextColor
			_EditText2.TextSize = 20.000
			_EditText2.TextWrapped = true

			UICorner_2.CornerRadius = UDim.new(0, 10)
			UICorner_2.Parent = _EditText2

			_G_.Parent = small3
			_G_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_G_.BackgroundTransparency = 1.000
			_G_.Size = UDim2.new(0, 100, 1, 0)

			_H.Parent = _G_
			_H.FillDirection = Enum.FillDirection.Horizontal
			_H.HorizontalAlignment = Enum.HorizontalAlignment.Center
			_H.SortOrder = Enum.SortOrder.LayoutOrder

			_Text3.Parent = _G_
			_Text3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_Text3.BackgroundTransparency = 1.000
			_Text3.BorderSizePixel = 0
			_Text3.Position = UDim2.new(0.245547071, 0, 0, 0)
			_Text3.Size = UDim2.new(0, 50, 0, 35)
			_Text3.Font = Enum.Font.SourceSans
			_Text3.TextColor3 = Colors.DefualtTextColor
			_Text3.TextSize = 16.000
			_Text3.RichText = true
			_Text3.Text = Text[3]
			_Text3.TextWrapped = true

			_EditText3.Parent = _G_
			_EditText3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_EditText3.BackgroundTransparency = 0.900
			_EditText3.BorderSizePixel = 0
			_EditText3.Position = UDim2.new(0.444000006, 0, 0, 0)
			_EditText3.Size = UDim2.new(0, 50, 0, 35)
			_EditText3.ClearTextOnFocus = false
			_EditText3.Font = Enum.Font.SourceSans
			_EditText3.Text = Typed[3]
			_EditText3.TextColor3 = Colors.DefualtTextColor
			_EditText3.TextSize = 20.000
			_EditText3.TextWrapped = true

			_I.CornerRadius = UDim.new(0, 10)
			_I.Parent = _EditText3

			local et1 = _EditText1.InputEnded:Connect(function()
				inputEnded1(_EditText1.Text)
			end)
			local et2 = _EditText2.InputEnded:Connect(function()
				inputEnded2(_EditText2.Text)
			end)
			local et3 = _EditText3.InputEnded:Connect(function()
				inputEnded3(_EditText3.Text)
			end)

			local called = {}

			function called:Edit(x,x1)
				x1 = x1 or 1
				if x1 == 1 then
					_EditText1.Text = x
					inputEnded1(_EditText1.Text)
				elseif x1 == 2 then
					_EditText2.Text = x
					inputEnded2(_EditText2.Text)
				elseif x1 == 3 then
					_EditText3.Text = x
					inputEnded3(_EditText3.Text)
				end
			end
			function called:ye(x)
				x = x or 1
				if x == 1 then
					et1:Disconnect()
					return _EditText1
				elseif x == 2 then
					et2:Disconnect()
					return _EditText2
				elseif x == 3 then
					et3:Disconnect()
					return _EditText3
				end
			end
			function called:newText(x,x1)
				x1 = x1 or 1
				if x1 == 1 then
					_Text1.Text = x
				elseif x1 == 2 then
					_Text2.Text = x
				elseif x1 == 3 then
					_Text3.Text = x
				end
			end
			function called:newInputended(x,x1)
				x1 = x1 or 1
				if x1 == 1 then
					inputEnded1 = x
				elseif x1 == 2 then
					inputEnded2 = x
				elseif x1 == 3 then
					inputEnded3 = x
				end
			end
			growY(38)
			return called
		end
		function functions:DropDown(Content,Callback)
			local Content = Content or {}
			local Callback = Callback or function() end
			local drop = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local UICorner = Instance.new("UICorner")
			local Drop = Instance.new("Frame")
			local ImageButton = Instance.new("ImageButton")
			local Frame = Instance.new("Frame")
			local UIPageLayout = Instance.new("UIPageLayout")
			local ScrollingFrame = Instance.new("ScrollingFrame")
			local UIListLayout_2 = Instance.new("UIListLayout")
			local Selection = Instance.new("Frame")
			local Up = Instance.new("TextButton")
			local Down = Instance.new("TextButton")
			local TextTemplate = Instance.new("TextLabel")
			local ButtonTemplate = Instance.new("TextButton")

			drop.Name = "drop"
			drop.Parent = __Tabview
			drop.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
			drop.BackgroundTransparency = 0.500
			drop.Position = UDim2.new(0.29516539, 0, 0.316091955, 0)
			drop.Size = UDim2.new(0, 300, 0, 35)

			UIListLayout.Parent = drop
			UIListLayout.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			UICorner.CornerRadius = UDim.new(0, 10)
			UICorner.Parent = drop

			Drop.Name = "Drop"
			Drop.Parent = drop
			Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Drop.BackgroundTransparency = 1.000
			Drop.Size = UDim2.new(0, 250, 0, 35)

			ImageButton.Parent = Drop
			ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageButton.BackgroundTransparency = 1.000
			ImageButton.Size = UDim2.new(0, 250, 0, 35)
			ImageButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			ImageButton.ImageTransparency = 1.000

			Frame.Parent = ImageButton
			Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame.BackgroundTransparency = 1.000
			Frame.ClipsDescendants = true
			Frame.Size = UDim2.new(0, 250, 0, 35)

			UIPageLayout.Parent = Frame
			UIPageLayout.FillDirection = Enum.FillDirection.Vertical
			UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIPageLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			UIPageLayout.Circular = true

			ScrollingFrame.Parent = ImageButton
			ScrollingFrame.Active = true
			ScrollingFrame.Name = "AllValuesDropped"
			ScrollingFrame.BackgroundColor3 = Colors.View
			ScrollingFrame.BackgroundTransparency = 0.4
			ScrollingFrame.BorderSizePixel = 0
			ScrollingFrame.Position = UDim2.new(0, 0, 0, 35)
			ScrollingFrame.Size = UDim2.new(0, 250, 0, 0)
			ScrollingFrame.ZIndex = 3
			ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
			ScrollingFrame.ScrollBarThickness = 3
			ScrollingFrame.Visible = false
			ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
			table.insert(ColoringStuff.Drop,ScrollingFrame)

			UIListLayout_2.Parent = ScrollingFrame
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

			Selection.Name = "Selection"
			Selection.Parent = drop
			Selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Selection.BackgroundTransparency = 1.000
			Selection.Size = UDim2.new(0, 50, 0, 35)

			Up.Name = "Up"
			Up.Parent = Selection
			Up.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Up.BackgroundTransparency = 1.000
			Up.Position = UDim2.new(0, 0, 0.0285714287, 0)
			Up.Size = UDim2.new(0, 50, 0, 17)
			Up.Font = Enum.Font.Code
			Up.Text = "˄"
			Up.TextColor3 = Colors.DefualtTextColor
			Up.TextSize = 20.000

			Down.Name = "Down"
			Down.Parent = Selection
			Down.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Down.BackgroundTransparency = 1.000
			Down.Position = UDim2.new(0, 0, 0, 18)
			Down.Size = UDim2.new(0, 50, 0, 17)
			Down.Font = Enum.Font.Code
			Down.Text = "˅"
			Down.TextColor3 = Colors.DefualtTextColor
			Down.TextSize = 20.000

			TextTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextTemplate.BackgroundTransparency = 1.000
			TextTemplate.Size = UDim2.new(1, 0, 1, 0)
			TextTemplate.Font = Enum.Font.SourceSans
			TextTemplate.TextColor3 = Colors.DefualtTextColor
			TextTemplate.RichText = true
			TextTemplate.TextSize = 14.000

			ButtonTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTemplate.BackgroundTransparency = 1.000
			ButtonTemplate.Size = UDim2.new(0, 250, 0, 25)
			ButtonTemplate.Font = Enum.Font.SourceSans
			ButtonTemplate.TextColor3 = Colors.DefualtTextColor
			ButtonTemplate.RichText = true
			ButtonTemplate.TextSize = 14.000
			ButtonTemplate.ZIndex = 4

			local contentPages = {}
			local page = UIPageLayout
			ScrollingFrame.AutomaticCanvasSize = "Y"
			page.TweenTime = .1
			page.ScrollWheelInputEnabled = false
			local easeInfo = {Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.1,true}
			local dropped = false
			local function quepro()
				for i,v in pairs(contentPages) do
					for i,v in pairs(v) do
						v:destroy()
					end
				end
				table.clear(contentPages)
				for i,v in ipairs(Content) do
					local lbal = TextTemplate:Clone()
					lbal.Parent = page.Parent
					lbal.Text = v
					lbal.Name = v
					local btton = ButtonTemplate:Clone()
					btton.Parent = ScrollingFrame
					btton.Text = v
					btton.Name = v
					btton.MouseButton1Click:Connect(function()
						page:JumpTo(lbal)
					end)
					table.insert(contentPages,{lbal,btton})
				end
			end
			quepro()
			ImageButton.MouseButton1Click:Connect(function()
				if dropped then
					ScrollingFrame:TweenSize(UDim2.new(0, 250,0, 0),unpack(easeInfo))
					growY(-71,true)
					ScrollingFrame.Visible = false
					dropped = false
				else
					ScrollingFrame.Visible = true
					ScrollingFrame:TweenSize(UDim2.new(0, 250,0, 70),unpack(easeInfo))
					growY(71,true)
					dropped = true
				end
			end)
			Selection.Down.MouseButton1Click:Connect(function()
				page:Next()
			end)
			Selection.Up.MouseButton1Click:Connect(function()
				page:Previous()
			end)
			local jumped = false
			page.Stopped:Connect(function(x)
				if x and not jumped then
					Callback(x.Name)
				end
			end)
			local called = {}

			function called:newList(x)
				Content = x
				quepro()
			end
			function called:CurrentSelection()
				return page.CurrentPage.Name
			end
			function called:SetSelection(x)
				if typeof(x) == "number" then
					page:JumpToIndex(x)
				else
					for i, v in ipairs(contentPages) do
						if v[1].Name == x then
							page:JumpTo(v[1])
						end
					end
				end
			end
			function called:newOnSelected(x)
				Callback = x
			end
			growY(38)
			return called
		end
		function functions:openPage()
			for i,v in ipairs(___Contents:GetChildren()) do
				if v:IsA('GuiObject') then
					v.Visible = false
				end
			end
			__Tabview.Visible = true
		end

		_Mains.TabAM += 1
		return functions
	end
	function cum:Color(Colorz)
		Colorz=Colorz or {
			ToggleOn = Color3.new(0, 1, 0),
			ToggleOff = Color3.new(1, 0, 0),
			Main = Color3.fromRGB(180, 108, 136),
			Drawer = Color3.fromRGB(194, 116, 146),
			View = Color3.fromRGB(157, 94, 118),
			DefualtTextColor = Color3.fromRGB(226, 226, 226)
		}
		Colors = Colorz
		___Main.BackgroundColor3 = Colorz.Main
		___Drawer.BackgroundColor3 = Colorz.Drawer
		___Contents.BackgroundColor3 = Colorz.View
		for _, tog in ipairs(ColoringStuff.Togg) do
			if tog.Position.X.Scale >= .5 then
				tog.BackgroundColor3 = Colorz.ToggleOn;else
					tog.BackgroundColor3 = Colorz.ToggleOff
			end
		end
		for _, drop in ipairs(ColoringStuff.Drop) do
			drop.BackgroundColor3 = Colorz.View
		end
		for i,v in pairs(___B:GetDescendants()) do
			if v.Name == 'AllValuesDropped' then
				v.BackgroundColor3 = Colorz.View
			end
			if v:IsA("TextLabel") or v:IsA("TextButton") then
				v.TextColor3 = Colorz.DefualtTextColor
			end
		end
	end
	return cum,Screen
end
return module
