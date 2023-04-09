local new,module = Instance.new,{}

module.create = function(Name,colour,returnGui,DefPoss)
	colour = {
		Main = Color3.fromRGB(80,80,80),
		Dropped = Color3.fromRGB(60,60,60),
		Text = Color3.fromRGB(255, 255, 255)
	}
	returnGui = Enum.KeyCode.RightShift
	local ScreenGui = new('ScreenGui',game:GetService('CoreGui'):WaitForChild("RobloxGui"))
	local Main = new("Frame",ScreenGui)
	local A_Top = new("Frame",Main)
	local A_minimize = new("ImageButton",A_Top)
	local B_MenuButton = new("ImageButton",A_Top)
	local C_Title = new("TextLabel",A_Top)
	local UIListLayout = new("UIListLayout",A_Top)
	local UICorner = new("UICorner",A_Top)
	local UICorner_2 = new("UICorner",Main)
	local Body = new("Frame",Main)
	local Selection = new("ScrollingFrame",Body)
	local Menu = new("Frame",Body)
	local UIListLayout_3 = new("UIListLayout",Menu)
	local A_MenuName = new("TextLabel",Menu)
	local UICorner_3 = new("UICorner",A_MenuName)
	local B_MenuScrollFrame = new("ScrollingFrame",Menu)
	local MenuList = new("Frame",B_MenuScrollFrame)
	local UIListLayout_4 = new("UIListLayout",MenuList)
	local _C = {
		Name = Name,
		CurrentPage = {
			Name = '',
			opened = false
		}
	}
	Main.Name = "Main"
	Main.AnchorPoint = Vector2.new(0, 0)
	Main.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Main.Size = UDim2.new(0, 400, 0, 200)
	local _DefPoss = DefPoss
	if DefPoss == nil then
		if _G.Amount == nil then
			_G.Amount = 0
		end
		_DefPoss = UDim2.new(0, 0+(_G.Amount*15), 0, 0+(_G.Amount*30))
		_G.Amount += 1
	end
	Main.Position = _DefPoss

	A_Top.Name = "A_Top"
	A_Top.Parent = Main
	A_Top.BackgroundColor3 = Color3.fromRGB(123, 123, 123)
	A_Top.BackgroundTransparency = 0.800
	A_Top.BorderColor3 = Color3.fromRGB(27, 42, 53)
	A_Top.Size = UDim2.new(1, 0, 0, 25)

	B_MenuButton.Name = "B_MenuButton"
	B_MenuButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	B_MenuButton.BackgroundTransparency = 1.000
	B_MenuButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
	B_MenuButton.BorderSizePixel = 0
	B_MenuButton.Position = UDim2.new(0.0625, 0, 0, 0)
	B_MenuButton.Size = UDim2.new(0, 25, 0, 25)
	B_MenuButton.Image = "http://www.roblox.com/asset/?id=6031097225"

	A_minimize.Name = "A_minimize"
	A_minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	A_minimize.BackgroundTransparency = 1.000
	A_minimize.BorderColor3 = Color3.fromRGB(27, 42, 53)
	A_minimize.BorderSizePixel = 0
	A_minimize.Size = UDim2.new(0, 25, 0, 25)
	A_minimize.Image = "http://www.roblox.com/asset/?id=6031090990"

	C_Title.Name = "C_Title"
	C_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	C_Title.BackgroundTransparency = 1.000
	C_Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
	C_Title.BorderSizePixel = 0
	C_Title.Position = UDim2.new(0.125, 0, 0, 0)
	C_Title.Size = UDim2.new(0, 25, 0, 25)
	C_Title.Text = Name
	C_Title.Font = Enum.Font.SourceSans
	C_Title.TextColor3 = colour.Text
	C_Title.TextSize = 14.000
	C_Title.TextXAlignment = Enum.TextXAlignment.Left
	C_Title.AutomaticSize = "X"

	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 3)

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner_2.CornerRadius = UDim.new(0, 6)

	Body.Name = "Body"
	Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Body.BackgroundTransparency = 1.000
	Body.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Body.BorderSizePixel = 0
	Body.Position = UDim2.new(0, 0, 0, 26)
	Body.Size = UDim2.new(1, 0, 0, 169)

	Selection.Name = "Selection"
	Selection.AutomaticCanvasSize = "Y"
	Selection.Active = true
	Selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Selection.BackgroundTransparency = 1.000
	Selection.BorderSizePixel = 0
	Selection.Position = UDim2.new(0, 0, 0, 2)
	Selection.Size = UDim2.new(1, 0, 0.96449703, 0)
	Selection.Visible = false
	Selection.CanvasSize = UDim2.new(0, 0, 0, 0)
	Selection.ScrollBarThickness = 5
	Selection.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
	new("UIListLayout",Selection)

	Menu.Name = "Menu"
	Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Menu.BackgroundTransparency = 1.000
	Menu.BorderSizePixel = 0
	Menu.Position = UDim2.new(0, 0, 0, 2)
	Menu.Size = UDim2.new(1, 0, 0.96449703, 0)
	Menu.AutomaticSize = "Y"

	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Padding = UDim.new(0, 2)
	
	A_MenuName.LayoutOrder = -1
	A_MenuName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	A_MenuName.BackgroundTransparency = 0.850
	A_MenuName.Size = UDim2.new(0, 350, 0, 20)
	A_MenuName.Font = Enum.Font.SourceSans
	A_MenuName.Text = "Menu"
	A_MenuName.TextColor3 = colour.Text
	A_MenuName.TextSize = 14.000

	UICorner_3.CornerRadius = UDim.new(0, 6)

	B_MenuScrollFrame.Active = true
	B_MenuScrollFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	B_MenuScrollFrame.BackgroundTransparency = 1.000
	B_MenuScrollFrame.BorderSizePixel = 0
	B_MenuScrollFrame.Size = UDim2.new(1, 0, 0, 139)
	B_MenuScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	B_MenuScrollFrame.ScrollBarThickness = 5
	B_MenuScrollFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

	MenuList.Name = "MenuList"
	MenuList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MenuList.BackgroundTransparency = 1.000
	MenuList.BorderSizePixel = 0
	MenuList.Position = UDim2.new(0, 0, -0.00595238106, 0)
	MenuList.Size = UDim2.new(1, 0, 0, 0)

	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.Padding = UDim.new(0, 2)
	B_MenuScrollFrame.AutomaticCanvasSize = "Y"
	Selection.AutomaticCanvasSize = "Y"
	MenuList.AutomaticSize = "Y"
	Main.ClipsDescendants = true
	local gui = {
		Minimized = false
	}
	local uis = game:GetService("UserInputService")
	local dragging,dragInput,dragStart,startPos
	local dragdelay = .1/100
	local function update(input)
		local delta = input.Position - dragStart
		wait(dragdelay)
		Main.Position = UDim2.new(0, startPos.X.Offset + delta.X, 0, startPos.Y.Offset + delta.Y)
	end
	A_Top.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Main.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	A_Top.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	uis.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	uis.InputEnded:Connect(function(inp)
		if inp.KeyCode == returnGui then
			Main.Position = _DefPoss
		end
	end)
	local tweenInfo = {Enum.EasingDirection.In,Enum.EasingStyle.Sine,.2,true}
	A_minimize.MouseButton1Click:Connect(function()
		local pos = Main.Position
		if not gui.Minimized then
			local mainx = C_Title.AbsoluteSize.X + A_minimize.AbsoluteSize.X + B_MenuButton.AbsoluteSize.X+10
			Main:TweenSize(UDim2.fromOffset(mainx,A_Top.AbsoluteSize.Y),unpack(tweenInfo))
			Main:TweenPosition(pos,unpack(tweenInfo))
			Body.Visible = false
			A_minimize.Image = 'http://www.roblox.com/asset/?id=6031091004'
			C_Title.Text = _C.Name
		else
			local mainx = C_Title.AbsoluteSize.X + A_minimize.AbsoluteSize.X + B_MenuButton.AbsoluteSize.X
			Main:TweenSize(UDim2.fromOffset(400,200),unpack(tweenInfo))
			Main:TweenPosition(pos,unpack(tweenInfo))
			Body.Visible = true
			A_minimize.Image = 'http://www.roblox.com/asset/?id=6031090990'
			if  _C.CurrentPage.opened then
				C_Title.Text = _C.Name .. ' > ' .. _C.CurrentPage.Name
			else
				C_Title.Text = _C.Name 
			end
		end
		gui.Minimized = not gui.Minimized
	end)
	B_MenuButton.MouseButton1Click:Connect(function()
		if Menu.Visible then
			Selection.Visible = true
			Menu.Visible = false
			B_MenuButton.Image = "http://www.roblox.com/asset/?id=6031097229"
			C_Title.Text = _C.Name .. ' > ' .. _C.CurrentPage.Name
			_C.CurrentPage.opened = true
		else
			Selection.Visible = false
			Menu.Visible = true
			B_MenuButton.Image = "http://www.roblox.com/asset/?id=6031097225"
			C_Title.Text = _C.Name
			_C.CurrentPage.opened = false
		end
	end)
	local Main,TextLabels = {},{}
	Main.font = function(x)
		if typeof(x) == "EnumItem" then
			x = x.Name
		end
		if Enum.Font[x] == nil then
			return;end
		for i,v in pairs(Main:GetDescendants()) do
			if v:IsA("TextLabel") then
				v.Font = x
			end
		end
	end
	Main.textcolour = function(r,g,b)
		local rgb = Color3.fromRGB(r,g,b)
		colour.Text = rgb
		for i,v in pairs(Main:GetDescendants()) do
			if v:IsA("TextLabel") or v:IsA("TextButton") then
				v.TextColor = rgb
			end
		end
	end
	function Main.Page(Name)
		local Page = new("Frame",Selection)
		local Selection_Pages_layout = new("UIListLayout",Page)
		local menuTextButton = new("TextButton",MenuList)
		local menuTextButtonUICorner = new("UICorner",menuTextButton)
		local menuImage = new("ImageLabel",menuTextButton)

		menuImage.BackgroundTransparency = 1.000
		menuImage.BorderSizePixel = 0
		menuImage.Position = UDim2.new(-0, -18, 0, 0)
		menuImage.Rotation = 90.000
		menuImage.Size = UDim2.new(0, 25, 0, 25)
		menuImage.Image = "http://www.roblox.com/asset/?id=6031090990"

		Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Page.BackgroundTransparency = 1.000
		Page.BorderSizePixel = 0
		Page.Position = UDim2.new(0, 0, -0.00595238106, 0)
		Page.Size = UDim2.new(1, 0, 0, 0)
		Page.Visible = false

		Selection_Pages_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		Selection_Pages_layout.SortOrder = Enum.SortOrder.LayoutOrder
		Selection_Pages_layout.Padding = UDim.new(0, 2)

		menuTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		menuTextButton.BackgroundTransparency = 0.850
		menuTextButton.Size = UDim2.new(0, 335, 0, 25)
		menuTextButton.Font = Enum.Font.SourceSans
		menuTextButton.TextColor3 = colour.Text
		menuTextButton.TextSize = 14.000
		menuTextButton.Text = Name

		menuTextButtonUICorner.CornerRadius = UDim.new(0, 6)
		menuTextButtonUICorner.Parent = menuTextButton
		
		menuTextButton.MouseButton1Click:Connect(function()
			for i,v in pairs(Selection:GetChildren()) do
				if v:IsA("Frame") then
					v.Visible = false
				end
			end
			Page.Visible = true
			Menu.Visible = false
			Selection.Visible = true
			B_MenuButton.Image = "http://www.roblox.com/asset/?id=6031097229"
			_C.CurrentPage.Name = Name
			C_Title.Text = _C.Name .. ' > ' .. _C.CurrentPage.Name
			_C.CurrentPage.opened = true
		end)

		local function ExtendY(y)
			Selection.CanvasSize = UDim2.fromOffset(0,Selection.CanvasSize.Y + y)
		end

		local _Page,layout = {},{}
		function layout.Button(p,Text,Onclick)
			Text = Text or 'Button';Onclick = Onclick or function()print(Text);end;
			local Button = new("TextButton",p)
			local ButtonCorner = new("UICorner",Button)

			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 0.850
			Button.Size = UDim2.new(0, 350, 0, 25)
			Button.Font = Enum.Font.SourceSans
			Button.Text = Text
			Button.TextColor3 = colour.Text
			Button.TextSize = 14.000
			Page.Size = Page.Size + UDim2.new(0, 0, 0, 27)
			if p ~= Page then
				Button.Size = UDim2.new(0, 300, 0, 25)
			end

			ButtonCorner.CornerRadius = UDim.new(0, 6)
			local button1,button2 = Button.MouseButton1Click:Connect(Onclick)
			local _Button = {}

			_Button.Text = function(x)
				if x ~= nil then
					Button.Text = x
				else
					return Button.Text
				end
			end

			_Button.Onclick = function(x,c)
				c = c or false
				if c then
					if button2 ~= nil then
						button2:Disconnect()
					end
					button2 = Button.MouseButton2Click:Connect(x)
				else
					if button1 ~= nil then
						button1:Disconnect()
					end
					button1 = Button.MouseButton1Click:Connect(x)
				end
			end
			_Button.Extend = function(x)
				Button:TweenSize(UDim2.fromOffset(Button.AbsoluteSize.X,Button.AbsoluteSize.Y+x),unpack(tweenInfo))
			end

			return _Button
		end
		function layout.Text(p,tText)
			local Text = new("TextLabel",p)
			local TextCorner = new("UICorner",Text)

			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text.BackgroundTransparency = 0.850
			Text.Size = UDim2.new(0, 350, 0, 25)
			Text.Font = Enum.Font.SourceSans
			Text.TextColor3 = colour.Text
			Text.TextSize = 14.000
			Text.Text = tText
			Page.Size = Page.Size + UDim2.new(0, 0, 0, 27)
			if p ~= Page then
				Text.Size = UDim2.new(0, 300, 0, 25)
			end

			TextCorner.CornerRadius = UDim.new(0, 6)
			local _Text = {}
			
			_Text.Text = function(x)
				if x ~= nil then
					Text.Text = x
				else
					return Text.Text
				end
			end

			_Text.Extend = function(x)
				Text:TweenSize(UDim2.fromOffset(Text.AbsoluteSize.X,Text.AbsoluteSize.Y+x),unpack(tweenInfo))
			end
			
			return _Text
		end
		function layout.TextInput(p,tTitle,Value,Hint,FocusEnded)
			local TextInput = new("Frame",p)
			local InputLayout = new("UIListLayout",TextInput)
			local Title = new("TextLabel",TextInput)
			local InputCorner = new("UICorner",TextInput)
			local ValueInput = new("TextBox",TextInput)
			local ValueImage = new("ImageLabel",ValueInput)
			local ValueCorner = new("UICorner",ValueInput)
			Value,Hint,FocusEnded = Value or '',Hint or '',function(Text,enterPressed,inputThatCausedFocusLoss)
				print(Text,enterPressed,inputThatCausedFocusLoss)
			end
			local focusEvent = ValueInput.FocusLost:Connect(function(enterPressed,inputThatCausedFocusLoss)
				FocusEnded(ValueInput.Text,enterPressed,inputThatCausedFocusLoss)
			end)

			TextInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextInput.BackgroundTransparency = 0.850
			TextInput.Size = UDim2.new(0, 350, 0, 25)
			Page.Size = Page.Size + UDim2.new(0, 0, 0, 27)

			InputLayout.Name = "InputLayout"
			InputLayout.FillDirection = Enum.FillDirection.Horizontal
			InputLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			InputLayout.SortOrder = Enum.SortOrder.LayoutOrder
			InputLayout.Padding = UDim.new(0, 35)

			Title.Name = "Title"
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0, 12, 0, 0)
			Title.Size = UDim2.new(-0, 200, 1, 0)
			Title.Font = Enum.Font.SourceSans
			Title.TextColor3 = colour.Text
			Title.TextSize = 14.000
			Title.Text = tTitle
			Title.TextXAlignment = Enum.TextXAlignment.Left

			InputCorner.CornerRadius = UDim.new(0, 6)
			InputCorner.Name = "InputCorner"

			ValueInput.Name = "ValueInput"
			ValueInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ValueInput.BackgroundTransparency = 0.950
			ValueInput.Size = UDim2.new(0, 80, 1, 0)
			ValueInput.ClearTextOnFocus = false
			ValueInput.Font = Enum.Font.SourceSans
			ValueInput.TextColor3 = colour.Text
			ValueInput.TextSize = 14.000
			ValueInput.Text = Value
			ValueInput.LayoutOrder = 1
			ValueInput.PlaceholderText = Hint

			ValueImage.Name = "ValueImage"
			ValueImage.BackgroundTransparency = 1.000
			ValueImage.BorderSizePixel = 0
			ValueImage.Position = UDim2.new(0, -30, 0, 0)
			ValueImage.Size = UDim2.new(0, 25, 0, 25)
			ValueImage.Image = "http://www.roblox.com/asset/?id=6034328955"

			ValueCorner.CornerRadius = UDim.new(0, 6)
			ValueCorner.Name = "ValueCorner"
			if p ~= Page then
				TextInput.Size = UDim2.new(0, 300, 0, 25)
				Title.Size = UDim2.new(0, 150, 1, 0)
			end
			local _TextInput = {}

			_TextInput.Title = function(x)
				if x ~= nil then
					Title.Text = x
				else
					return Title.Text
				end
			end
			_TextInput.Value = function(x)
				if x ~= nil then
					ValueInput.Text = x
				else
					return ValueInput.Text
				end
			end
			_TextInput.OnFocusEnded = function(x)
				if x ~= nil then return;end;
				focusEvent:Disconnect()
				focusEvent = ValueInput.FocusLost:Connect(function(enterPressed,inputThatCausedFocusLoss)
					FocusEnded(ValueInput.Text,enterPressed,inputThatCausedFocusLoss)
				end)
			end

			return _TextInput
		end
		function layout.Checkbox(p,tTitle,Value,OnChange)
			local CheckBox = new("ImageButton",p)
			local CheckBoxCorner = new("UICorner",CheckBox)
			local Title = new("TextLabel",CheckBox)
			local BoxImage = new("Frame",CheckBox)
			local ImageCorner = new("UICorner",BoxImage)
			local ToggleOff = new("ImageLabel",BoxImage)
			local ToggledOn = new("ImageLabel",BoxImage)
			local CheckBoxLayout = new("UIListLayout",CheckBox)
			Value,OnChange = Value or false,OnChange or function(Value)
				print(Value)
			end

			CheckBox.Name = "CheckBox"
			CheckBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CheckBox.BackgroundTransparency = 0.850
			CheckBox.Size = UDim2.new(0, 350, 0, 25)
			CheckBox.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			CheckBox.ImageTransparency = 1.000
			Page.Size = Page.Size + UDim2.new(0, 0, 0, 27)

			CheckBoxCorner.CornerRadius = UDim.new(0, 6)
			CheckBoxCorner.Name = "CheckBoxCorner"

			Title.Name = "Title"
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0, 27, 0, 0)
			Title.Size = UDim2.new(0, 245, 1, 0)
			Title.Text = tTitle
			Title.Font = Enum.Font.SourceSans
			Title.TextColor3 = colour.Text
			Title.TextSize = 14.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			BoxImage.Name = "BoxImage"
			BoxImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BoxImage.BackgroundTransparency = 1.000
			BoxImage.Position = UDim2.new(0, 310, 0, 0)
			BoxImage.LayoutOrder = 1
			BoxImage.Size = UDim2.new(0, 25, 0, 25)

			ImageCorner.CornerRadius = UDim.new(0, 6)
			ImageCorner.Name = "ImageCorner"

			ToggleOff.Name = "ToggleOff"
			ToggleOff.BackgroundTransparency = 1.000
			ToggleOff.BorderSizePixel = 0
			ToggleOff.AnchorPoint = Vector2.new(.5,.5)
			ToggleOff.Size = UDim2.new(1, 0, 1, 0)
			ToggleOff.Position = UDim2.new(.5, 0, .5, 0)
			ToggleOff.Image = "http://www.roblox.com/asset/?id=6031068420"

			ToggledOn.Name = "ToggledOn"
			ToggledOn.BackgroundTransparency = 1.000
			ToggledOn.BorderSizePixel = 0
			ToggledOn.AnchorPoint = Vector2.new(.5,.5)
			ToggledOn.Position = UDim2.new(.5, 0, .5, 0)
			ToggledOn.Image = "http://www.roblox.com/asset/?id=6031068421"

			CheckBoxLayout.Name = "CheckBoxLayout"
			CheckBoxLayout.FillDirection = Enum.FillDirection.Horizontal
			CheckBoxLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			CheckBoxLayout.SortOrder = Enum.SortOrder.LayoutOrder
			CheckBoxLayout.Padding = UDim.new(0, 10)
			local function setChecked()
				Value = not Value
				OnChange(Value)
				if Value then
					ToggleOff:TweenSize(UDim2.new(0, 0, 0, 0),unpack(tweenInfo))
					ToggledOn:TweenSize(UDim2.new(1, 0, 1, 0),unpack(tweenInfo))
				else
					ToggleOff:TweenSize(UDim2.new(1, 0, 1, 0),unpack(tweenInfo))
					ToggledOn:TweenSize(UDim2.new(0, 0, 0, 0),unpack(tweenInfo))
				end
			end
			CheckBox.MouseButton1Click:Connect(setChecked)
			if p ~= Page then
				CheckBox.Size = UDim2.new(0, 300, 0, 25)
				Title.Size = UDim2.new(0, 195, 1, 0)
			end
			local _CheckBox = {}

			_CheckBox.Title = function(x)
				if x ~= nil then
					Title.Text = x
				else
					return Title.Text
				end
			end
			_CheckBox.Value = function(x)
				if typeof(x) ~= 'boolean' then
					return
				end
				if x ~= nil then
					Value = x
					OnChange(Value)
					if Value then
						ToggleOff:TweenSize(UDim2.new(0, 0, 0, 0),unpack(tweenInfo))
						ToggledOn:TweenSize(UDim2.new(1, 0, 1, 0),unpack(tweenInfo))
					else
						ToggleOff:TweenSize(UDim2.new(1, 0, 1, 0),unpack(tweenInfo))
						ToggledOn:TweenSize(UDim2.new(0, 0, 0, 0),unpack(tweenInfo))
					end
				else
					return Value
				end
			end
			_CheckBox.OnChange = function(x)
				if x ~= nil then return;end;
				OnChange = x
			end

			return _CheckBox
		end
		function layout.BindInput(p,tTitle,Bind,OnPressed)
			local BindInput = new("ImageButton",p)
			local InputCorner = new("UICorner",BindInput)
			local Title = new("TextLabel",BindInput)
			local BindName = new("TextLabel",BindInput)
			local NameCorner = new("UICorner",BindInput)
			local NameImage = new("ImageLabel",BindName)
			local InputLayout = new("UIListLayout",BindInput)
			local uis = game:GetService("UserInputService")
			Bind,OnPressed = Bind or 'X',OnPressed or function(gameProcessed)
				print(gameProcessed)
			end
			if typeof(Bind) == "EnumItem" then
				if Bind ~= returnGui then
					Bind = Bind.Name
				else
					Bind = "X"
					warn('bindinput : ',tTitle,'Changed to',Bind)
				end
			elseif typeof(Bind) == "string" then
				if not (Enum.KeyCode[Bind]) and Enum.KeyCode[Bind] == returnGui then
					Bind = "X"
					warn('bindinput : ',tTitle,'Changed to',Bind)
				end
			else
				Bind = "X"
			end

			BindInput.Name = "BindInput"
			BindInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BindInput.BackgroundTransparency = 0.850
			BindInput.Size = UDim2.new(0, 350, 0, 25)
			BindInput.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			BindInput.ImageTransparency = 1.000
			Page.Size = Page.Size + UDim2.new(0, 0, 0, 27)

			InputCorner.CornerRadius = UDim.new(0, 6)
			InputCorner.Name = "InputCorner"

			Title.Name = "Title"
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0, 81, 0, 0)
			Title.Size = UDim2.new(0, 220, 1, 0)
			Title.Font = Enum.Font.SourceSans
			Title.Text = tTitle
			Title.TextColor3 = colour.Text
			Title.TextSize = 14.000
			Title.LayoutOrder = -1
			Title.TextXAlignment = Enum.TextXAlignment.Left

			BindName.Name = "BindName"
			BindName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BindName.BackgroundTransparency = 0.900
			BindName.BorderSizePixel = 0
			BindName.Position = UDim2.new(0, 275, 0, 0)
			BindName.Size = UDim2.new(0, 60, 1, 0)
			BindName.Font = Enum.Font.SourceSans
			BindName.Text = Bind
			BindName.TextColor3 = colour.Text
			BindName.TextSize = 14.000

			NameCorner.CornerRadius = UDim.new(0, 6)
			NameCorner.Name = "NameCorner"

			NameImage.Name = "NameImage"
			NameImage.BackgroundTransparency = 1.000
			NameImage.BorderSizePixel = 0
			NameImage.Position = UDim2.new(0, -30, 0, 0)
			NameImage.Size = UDim2.new(0, 25, 0, 25)
			NameImage.Image = "http://www.roblox.com/asset/?id=6026568225"

			InputLayout.Name = "InputLayout"
			InputLayout.FillDirection = Enum.FillDirection.Horizontal
			InputLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			InputLayout.SortOrder = Enum.SortOrder.LayoutOrder
			InputLayout.Padding = UDim.new(0, 35)
			BindInput.MouseButton1Click:Connect(function()
				uis.InputEnded:Wait()
				local x;x=uis.InputBegan:Connect(function(inp)
					if inp.UserInputType == Enum.UserInputType.Keyboard then
						if inp.KeyCode ~= returnGui then
							Bind = inp.KeyCode.Name
							BindName.Text = Bind
							x:Disconnect()
						end
					end
				end)
			end)
			uis.InputEnded:Connect(function(i,gp)
				if i.KeyCode.Name == Bind then
					OnPressed(gp,tTitle)
				end
			end)
			if p ~= Page then
				BindInput.Size = UDim2.new(0, 300, 0, 25)
				Title.Size = UDim2.new(0, 170, 1, 0)
			end
			local _Input = {}

			_Input.Title = function(x)
				if x ~= nil then
					Title.Text = x
					tTitle = x
				else
					return Title.Text
				end
			end
			_Input.Bind = function(x)
				if x ~= nil then
					Bind = x
				else
					return Bind
				end
			end
			_Input.IsDown = function()
				return uis:IsKeyDown(Enum.KeyCode[Bind])
			end
			_Input.OnPressed = function(x)
				if x ~= nil then return;end;
				OnPressed = x
			end

			return _Input
		end
		function layout.Dropdown(p,tTitle,Selections,index,OnSelection)
			local Dropdown = new("Frame",p)
			local DropdownLayout = new("UIListLayout",Dropdown)
			local Title = new("TextLabel",Dropdown)
			local DropdownCorner = new("UICorner",Dropdown)
			local Drop = new("ImageButton",Dropdown)
			local DropCorner = new("UICorner",Drop)
			local DropImage = new("ImageLabel",Drop)
			local DropSelectionFrame = new("Frame",Drop)
			local DroppedItems = new("ScrollingFrame",DropSelectionFrame)
			local DroppedItemsLayout = new("UIListLayout",DroppedItems)
			local DropSelectionFrameCorner = new("UICorner",Drop)
			local Selected = new("TextLabel",Drop)
			Selections,OnSelection = {'Item','Item1','Item2','Item3'},OnSelection or function(x,i)
				print(x,i)
			end

			Dropdown.Name = "Dropdown"
			Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Dropdown.BackgroundTransparency = 0.850
			Dropdown.Size = UDim2.new(0, 350, 0, 25)
			Page.Size = Page.Size + UDim2.new(0, 0, 0, 27)

			DropdownLayout.Name = "DropdownLayout"
			DropdownLayout.FillDirection = Enum.FillDirection.Horizontal
			DropdownLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			DropdownLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropdownLayout.Padding = UDim.new(0, 35)

			Title.Name = "Title"
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderSizePixel = 0
			Title.LayoutOrder = -1
			Title.Position = UDim2.new(0, 17, 0, 0)
			Title.Size = UDim2.new(-0, 150, 1, 0)
			Title.Font = Enum.Font.SourceSans
			Title.TextColor3 = colour.Text
			Title.TextSize = 14.000
			Title.Text = tTitle
			Title.TextXAlignment = Enum.TextXAlignment.Left

			DropdownCorner.CornerRadius = UDim.new(0, 6)
			DropdownCorner.Name = "DropdownCorner"

			Drop.Name = "Drop"
			Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Drop.BackgroundTransparency = 0.900
			Drop.Size = UDim2.new(0, 125, 1, 0)
			Drop.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			Drop.ImageTransparency = 1.000

			DropCorner.CornerRadius = UDim.new(0, 6)
			DropCorner.Name = "DropCorner"

			DropImage.Name = "DropImage"
			DropImage.BackgroundTransparency = 1.000
			DropImage.BorderSizePixel = 0
			DropImage.Position = UDim2.new(0, -30, 0, 0)
			DropImage.Size = UDim2.new(0, 25, 0, 25)
			DropImage.Image = "http://www.roblox.com/asset/?id=6031104644" or "http://www.roblox.com/asset/?id=6031104681"

			DropSelectionFrame.Name = "DropSelectionFrame"
			DropSelectionFrame.BackgroundColor3 = colour.Dropped
			DropSelectionFrame.Position = UDim2.new(0, 0, 1, 0)
			DropSelectionFrame.Size = UDim2.new(1, 0, 0, 60)
			DropSelectionFrame.Visible = false
			DropSelectionFrame.BorderSizePixel = 0
			DropSelectionFrame.ZIndex = 2

			DroppedItems.Name = "DroppedItems"
			DroppedItems.Active = true
			DroppedItems.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DroppedItems.BackgroundTransparency = 1.000
			DroppedItems.Size = UDim2.new(1, 0, 1, 0)
			DroppedItems.CanvasSize = UDim2.new(0, 0, 0, 0)
			DroppedItems.ScrollBarThickness = 3
			DroppedItems.AutomaticCanvasSize = "Y"
			DroppedItems.ZIndex = 2

			DroppedItemsLayout.Name = "DroppedItemsLayout"
			DroppedItemsLayout.SortOrder = Enum.SortOrder.LayoutOrder

			DropSelectionFrameCorner.CornerRadius = UDim.new(0, 6)
			DropSelectionFrameCorner.Name = "DropSelectionFrameCorner"

			Selected.Name = "Selected"
			Selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Selected.BackgroundTransparency = 1.000
			Selected.Size = UDim2.new(1, 0, 1, 0)
			Selected.Font = Enum.Font.SourceSans
			Selected.TextColor3 = colour.Text
			Selected.TextSize = 14.000
			local opened = false
			local SelectionsItems = {}
			for i,v in pairs(Selections) do
				Selected.Text = v
				break
			end
			local setopened = function(x)
				if x == nil then
					opened = not opened
					if opened then
						DropSelectionFrame.Visible = true
						DropImage.Image = "http://www.roblox.com/asset/?id=6031104681"
						Page.Size = Page.Size + UDim2.new(0, 0, 0, 62)
					else
						DropSelectionFrame.Visible = false
						DropImage.Image = "http://www.roblox.com/asset/?id=6031104644"
						Page.Size = Page.Size - UDim2.new(0, 0, 0, 62)
					end
				else
					opened = x
					if x then
						DropSelectionFrame.Visible = true
						DropImage.Image = "http://www.roblox.com/asset/?id=6031104681"
						Page.Size = Page.Size + UDim2.new(0, 0, 0, 62)
					else
						DropSelectionFrame.Visible = false
						DropImage.Image = "http://www.roblox.com/asset/?id=6031104644"
						Page.Size = Page.Size - UDim2.new(0, 0, 0, 62)
					end
				end
			end
			local function CreateItem(txt,i)
				local Item = new("TextButton",DroppedItems)
				Item.Name = "Item"
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(1, 0, 0, 20)
				Item.Font = Enum.Font.SourceSans
				Item.TextColor3 = colour.Text
				Item.TextSize = 14.000
				Item.Text = txt
				Item.ZIndex = 2
				Item.MouseButton1Click:Connect(function()
					Selected.Text = txt
					OnSelection(txt,i)
					setopened(false)
				end)
				return Item
			end
			for i,v in pairs(Selections) do
				table.insert(SelectionsItems,CreateItem(v,i))
			end
			Drop.MouseButton1Click:Connect(setopened)
			if p ~= Page then
				Dropdown.Size = UDim2.new(0, 300, 0, 25)
				Title.Size = UDim2.new(0, 100, 1, 0)
			end
			local _Drop = {}

			_Drop.Title = function(x)
				if x ~= nil then
					Title.Text = x
					tTitle = x
				else
					return Title.Text
				end
			end
			_Drop.Selections = function(x)
				if x ~= nil then
					Selections = x
					for i,v in pairs(SelectionsItems) do
						v:Destroy()
					end
					for i,v in pairs(Selections) do
						table.insert(SelectionsItems,CreateItem(v))
					end
				else
					return Selected.Text
				end
			end
			_Drop.OnSelection = function(x)
				if x ~= nil then return;end;
				OnSelection = x
			end

			return _Drop
		end


		_Page.Button = function(Text,Onclick)
			return layout.Button(Page,Text,Onclick)
		end
		_Page.Text = function(Text)
			return layout.Text(Page,Text)
		end
		_Page.TextInput = function(Title,Value,Hint,FocusEnded)
			return layout.TextInput(Page,Title,Value,Hint,FocusEnded)
		end
		_Page.Checkbox = function(Title,Value,OnChange)
			return layout.Checkbox(Page,Title,Value,OnChange)
		end
		_Page.BindInput = function(Title,Bind,OnPressed)
			return layout.BindInput(Page,Title,Bind,OnPressed)
		end
		_Page.Dropdown = function(Title,Selections,OnSelection)
			return layout.Dropdown(Page,Title,Selections,OnSelection)
		end
		_Page.Section = function()
			local Section = new("Frame",Page)
			local Section_Corner = new("UICorner")
			local Section_Layout = new("UIListLayout")

			Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Section.BackgroundTransparency = 0.900
			Section.BorderSizePixel = 0
			Section.Position = UDim2.new(-0.0149999997, 0, 0.330000013, 0)
			Section.Size = UDim2.new(0, 350, 0, 2)
			Section.AutomaticSize = "Y"

			Section_Corner.CornerRadius = UDim.new(0, 6)
			Section_Corner.Name = "Section_Corner"
			Section_Corner.Parent = Section

			Section_Layout.Name = "Section_Layout"
			Section_Layout.Parent = Section
			Section_Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			Section_Layout.SortOrder = Enum.SortOrder.LayoutOrder
			Section_Layout.Padding = UDim.new(0, 2)
			local _Section = {}
			
			for i,v in pairs(layout) do
				_Section[i] = function(...)
					return layout[i](Section,...)
				end
			end
			
			return _Section
		end
		
		return _Page
	end
	return Main
end

return module
