if getgenv().topBarAddon ~= nil then
	return
end
getgenv().topBarAddon = {}
getgenv().topBarAddon.Buttons = {}
getgenv().topBarAddon.serv = {}
function topBarAddon.Button(Text,Callback,Img)
	table.insert(topBarAddon.Buttons,{
		["Text"] = Text or "Litterally a button",
		["Callback"] = Callback or function()
			print(Text)
		end,
		Img = Img or {
			Image = "rbxasset://LuaPackages/Packages/_Index/FoundationImages/FoundationImages/SpriteSheets/img_set_1x_7.png",
			ImageRectOffset = Vector2.new(304, 266),
			ImageRectSize = Vector2.new(36, 36)
		}
	})
end
local function CreateButton(Text,Callback,Img,ord,p)
	local temp = Instance.new("ImageButton",p)
	local UICorner = Instance.new("UICorner")
	local RowLabel = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local StyledTextLabel = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIPadding = Instance.new("UIPadding")
	local IconHost = Instance.new("Frame")
	local IntegrationIconFrame = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local IntegrationIcon = Instance.new("ImageLabel")
	local SelectedHighlighter = Instance.new("Frame")
	local corner = Instance.new("UICorner")
	local Highlighter = Instance.new("Frame")
	local corner_2 = Instance.new("UICorner")
	local _5 = Instance.new("Frame")

	temp.Name = Text
	temp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	temp.BackgroundTransparency = 1.000
	temp.BorderSizePixel = 0
	temp.LayoutOrder = ord
	temp.Size = UDim2.new(1, 0, 0, 56)
	temp.AutoButtonColor = false

	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = temp

	RowLabel.Name = "RowLabel"
	RowLabel.Parent = temp
	RowLabel.BackgroundTransparency = 1.000
	RowLabel.BorderSizePixel = 0
	RowLabel.LayoutOrder = 9
	RowLabel.Size = UDim2.new(1, 0, 1, 0)

	UIListLayout.Parent = RowLabel
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 8)

	StyledTextLabel.Name = "StyledTextLabel"
	StyledTextLabel.Parent = RowLabel
	StyledTextLabel.BackgroundTransparency = 1.000
	StyledTextLabel.Size = UDim2.new(1, -52, 1, 0)
	StyledTextLabel.Font = Enum.Font.BuilderSansBold
	StyledTextLabel.Text = Text
	StyledTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	StyledTextLabel.TextScaled = true
	StyledTextLabel.TextSize = 20.000
	StyledTextLabel.TextWrapped = true
	StyledTextLabel.TextXAlignment = Enum.TextXAlignment.Left

	UITextSizeConstraint.Parent = StyledTextLabel
	UITextSizeConstraint.MaxTextSize = 20
	UITextSizeConstraint.MinTextSize = 15

	UIPadding.Parent = RowLabel
	UIPadding.PaddingLeft = UDim.new(0, 8)
	UIPadding.PaddingRight = UDim.new(0, 8)

	IconHost.Name = "IconHost"
	IconHost.Parent = RowLabel
	IconHost.BackgroundTransparency = 1.000
	IconHost.BorderSizePixel = 0
	IconHost.LayoutOrder = 9
	IconHost.Size = UDim2.new(0, 44, 0, 44)
	IconHost.ZIndex = 9

	IntegrationIconFrame.Name = "IntegrationIconFrame"
	IntegrationIconFrame.Parent = IconHost
	IntegrationIconFrame.BackgroundTransparency = 1.000
	IntegrationIconFrame.BorderSizePixel = 0
	IntegrationIconFrame.Size = UDim2.new(1, 0, 1, 0)

	UIListLayout_2.Parent = IntegrationIconFrame
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

	IntegrationIcon.Name = "IntegrationIcon"
	IntegrationIcon.Parent = IntegrationIconFrame
	IntegrationIcon.BackgroundTransparency = 1.000
	IntegrationIcon.Size = UDim2.new(0, 36, 0, 36)
	IntegrationIcon.Image = Img.Image or Img.I or Img.i
	IntegrationIcon.ImageRectOffset = Img.ImageRectOffset or Img.IRO or Img.iro
	IntegrationIcon.ImageRectSize = Img.ImageRectSize or Img.IRS or Img.irs

	SelectedHighlighter.Name = "SelectedHighlighter"
	SelectedHighlighter.Parent = IconHost
	SelectedHighlighter.AnchorPoint = Vector2.new(0.5, 0.5)
	SelectedHighlighter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SelectedHighlighter.BackgroundTransparency = 0.900
	SelectedHighlighter.BorderSizePixel = 0
	SelectedHighlighter.Position = UDim2.new(0.5, 0, 0.5, 0)
	SelectedHighlighter.Size = UDim2.new(0, 36, 0, 36)
	SelectedHighlighter.Visible = false

	corner.CornerRadius = UDim.new(1, 0)
	corner.Name = "corner"
	corner.Parent = SelectedHighlighter

	Highlighter.Name = "Highlighter"
	Highlighter.Parent = IconHost
	Highlighter.AnchorPoint = Vector2.new(0.5, 0.5)
	Highlighter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Highlighter.BackgroundTransparency = 0.900
	Highlighter.BorderSizePixel = 0
	Highlighter.Position = UDim2.new(0.5, 0, 0.5, 0)
	Highlighter.Size = UDim2.new(0, 36, 0, 36)
	Highlighter.Visible = false

	corner_2.CornerRadius = UDim.new(1, 0)
	corner_2.Name = "corner"
	corner_2.Parent = Highlighter

	_5.Name = "5"
	_5.Parent = IconHost
	_5.BackgroundTransparency = 1.000
	_5.Size = UDim2.new(1, 0, 1, 0)
	_5.ZIndex = 2

	local function setcolor(m)
		m = m or 0
		if m == 0 then
			temp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			temp.BackgroundTransparency = 0.900
		elseif m == 1 then
			temp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			temp.BackgroundTransparency = 1
		elseif m == 2 then
			temp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			temp.BackgroundTransparency = .7
		end
	end
	local db_ig = true
	temp.MouseEnter:Connect(function()
		setcolor()
		db_ig = false
	end)
	temp.MouseLeave:Connect(function()
		setcolor(1)	
		db_ig = true
	end)
	temp.MouseButton1Down:Connect(function()
		setcolor(2)
	end)
	temp.MouseButton1Click:Connect(function()
		if db_ig then
			return
		end
		Callback()
	end)
end

table.insert(topBarAddon.serv,game:GetService("CoreGui").TopBarApp.UnibarLeftFrame.UnibarMenu.SubMenuHost.DescendantAdded:Connect(function(c)
	if c.Name == "BottomPadding" and c:IsA("Frame") then
		c.Size = UDim2.fromOffset(0,56)
		c.LayoutOrder = 999999
	end
	if c.Name == "MainCanvas" and c:IsA("ScrollingFrame") then
		local am = 2-- idk the 1st button has a value of 3 so like act like 2 is 0
		for i,c1 in pairs(c:GetChildren()) do
			if c1:IsA("ImageButton") then
				am+=1
			end
		end
		local lO = am
		for i,butts in ipairs(topBarAddon.Buttons) do
			lO+=1
			CreateButton(butts.Text,butts.Callback,butts.Img,lO,c)
		end
		if lO > am then
			c.Size = c.Size + UDim2.fromOffset(0,56)
			c.AutomaticCanvasSize = "Y"
		end
	end
end))

--[[for i=1,10,1 do
    topBarAddon.Button(tostring(i))
end

topBarAddon.Button("test",function()
  print("hi")
end,{
			Image = "rbxasset://LuaPackages/Packages/_Index/FoundationImages/FoundationImages/SpriteSheets/img_set_1x_7.png",
			ImageRectOffset = Vector2.new(304, 266),
			ImageRectSize = Vector2.new(36, 36)
})

loadstring(game:HttpGet(('https://raw.githubusercontent.com/IAmMrNoob/RFE/main/NoobsUI/lilTopbarPlugin.lua'),true))()
]]
