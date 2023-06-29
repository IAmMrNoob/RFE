local incestui,nIns,rS = {},Instance.new,game:GetService("RunService")
local uis = game:GetService("UserInputService")
local _Lc = game.Players.LocalPlayer
if game:GetService('RunService'):IsStudio() then
    incestui.Parent = _Lc.PlayerGui:WaitForChild("Chat")
else
	incestui.Parent = gethui()
end
--incestui.Parent = game.StarterGui

function incestui:UI(Title,OpenCloseBinding,color)
	Title,OpenCloseBinding = (Title or "I did not enter a title"),(OpenCloseBinding or Enum.KeyCode.M)
    local UI = {}
    UI.Color = {
        Main = (color and (color['Main'] or color['main'])) or  Color3.fromRGB(33, 33, 33),
        Text = (color and (color['Text'] or color['text'])) or  Color3.fromRGB(255, 255, 255),
        TransparentLayer = (color and (color['TransparentLayer'] or color['transparentLayer'])) or  Color3.fromRGB(255, 255, 255),
        ToggledOn = (color and (color['ToggledOn'] or color['toggledOn'])) or  Color3.fromRGB(0, 255, 0),
        ToggledOff = (color and (color['ToggledOff'] or color['toggledOff'])) or  Color3.fromRGB(33, 33, 33)
    }
    
    local ScreenGui = nIns('ScreenGui',incestui.Parent)
    local Modal = nIns("TextButton",ScreenGui)
	local Main = nIns("Frame",ScreenGui)
	local Things = nIns("Frame",Main)
	local UICA = nIns("UICorner",Things)
	local TabsFrame = nIns("Frame",Things)
	local UICA_2 = nIns("UICorner",TabsFrame)
	local Tabs = nIns("ScrollingFrame",Things)
	local UICA_3 = nIns("UICorner",Tabs)
	local UIListLayout = nIns("UIListLayout",Tabs)
	local Stub = nIns("Frame",Tabs)
	local ShowActivity = nIns("ScrollingFrame",Things)
    local UIListLayout_2 = nIns("UIListLayout",ShowActivity)
	local Stub_2 = nIns("Frame",ShowActivity)
	local UICA_6 = nIns("UICorner",ShowActivity)
	local UICA_7 = nIns("UICorner",Main)
	local Top = nIns("Frame",Main)
	local close = nIns("ImageButton",Top)
    local TextTitle = nIns("TextLabel",Top)
    
    Modal.Transparency = 1
    Modal.Text = ""
    Modal.Modal = true
	Main.Name = "Main"
    Main.BackgroundColor3 = UI.Color.Main
	Main.BorderColor3 = Color3.fromRGB(9, 9, 9)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0, 0, 0, 0)
    Main.Size = UDim2.new(0, 423, 0, 311)
	
	Things.Name = "Things"
	Things.BackgroundColor3 = UI.Color.TransparentLayer
	Things.BackgroundTransparency = 0.900
	Things.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Things.BorderSizePixel = 0
	Things.Position = UDim2.new(0, 5, 0, 27)
	Things.Size = UDim2.new(0, 413, 0.899999976, 0)
	
	TabsFrame.Name = "Tabs"
	TabsFrame.BackgroundColor3 = UI.Color.TransparentLayer
	TabsFrame.BackgroundTransparency = 0.900
	TabsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabsFrame.BorderSizePixel = 0
	TabsFrame.Size = UDim2.new(0, 105, 1, 0)

	Tabs.Name = "Tabs"
	Tabs.Active = true
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Tabs.BorderSizePixel = 0
	Tabs.Size = UDim2.new(0, 105, 1, 0)
	Tabs.CanvasSize = UDim2.new(0, 0, 0, 0)
	Tabs.AutomaticCanvasSize = "Y"
	Tabs.ScrollBarThickness = 6
	
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)
	
	Stub.Name = "Stub"
	Stub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Stub.BackgroundTransparency = 1.000
	Stub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Stub.BorderSizePixel = 0
	Stub.LayoutOrder = -9999
	Stub.Position = UDim2.new(0, 5, 0, 0)
	Stub.Size = UDim2.new(0, 298, 0, 0)

	ShowActivity.Name = "ShowActivity"
	ShowActivity.Active = true
	ShowActivity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ShowActivity.BackgroundTransparency = 1.000
	ShowActivity.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ShowActivity.BorderSizePixel = 0
	ShowActivity.Position = UDim2.new(0, 105, 0, 0)
	ShowActivity.Size = UDim2.new(0, 308, 1, 0)
    ShowActivity.CanvasSize = UDim2.new(0, 0, 0, 0)
    ShowActivity.AutomaticCanvasSize = "Y"
	ShowActivity.ScrollBarThickness = 6

	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 4)

	Stub_2.Name = "Stub"
	Stub_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Stub_2.BackgroundTransparency = 1.000
	Stub_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Stub_2.BorderSizePixel = 0
	Stub_2.LayoutOrder = -9999
	Stub_2.Position = UDim2.new(0, 5, 0, 0)
	Stub_2.Size = UDim2.new(0, 298, 0, 0)

	Top.Name = "Top"
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Position = UDim2.new(0, 5, 0, 3)
    Top.Size = UDim2.new(0, 413, 0, 25)
    local dragging,dragInput,dragStart,startPos
    local function update(input)
        local delta = input.Position - dragStart
        rS.RenderStepped:Wait()
        Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    Top.InputBegan:Connect(function(input)
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
    Top.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    uis.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

	close.Name = "close"
	close.BackgroundTransparency = 1.000
	close.Position = UDim2.new(0.938256621, 0, -0.0200000033, 0)
	close.Size = UDim2.new(0, 25, 0, 25)
	close.ZIndex = 2
	close.Image = "rbxassetid://3926305904"
	close.ImageRectOffset = Vector2.new(284, 4)
    close.ImageRectSize = Vector2.new(24, 24)
    local isMinimized = {
        PosBefore = UDim2.new(0, 4, 0, 0),
        State = false,
        inCorner = false
    }
    local function Minimize(ToCorner)
        isMinimized.State = not isMinimized.State
        if isMinimized.State then
            Main:TweenSize(UDim2.new(0, 423, 0, 32),
                Enum.EasingDirection.InOut,
                Enum.EasingStyle.Sine,
                .1,
                true)
            Things.Visible = false
            Modal.Modal = false
            if ToCorner then
                isMinimized.PosBefore = Main.Position
                local ysize = workspace.CurrentCamera.ViewportSize.Y
                    Main:TweenPosition(UDim2.new(0, 100, 0, -32),
                     Enum.EasingDirection.InOut,
                     Enum.EasingStyle.Sine,
                     .1,
                     true)
            end
        else
            Main:TweenSize(UDim2.new(0, 423, 0, 311),
                Enum.EasingDirection.InOut,
                Enum.EasingStyle.Sine,
                .1,
                true)
            Things.Visible = true
            Modal.Modal = true
            if ToCorner then
                Main:TweenPosition(isMinimized.PosBefore,
                    Enum.EasingDirection.InOut,
                    Enum.EasingStyle.Sine,
                    .1,
                    true)
                
            end
        end
    end
    close.MouseButton1Click:Connect(Minimize)
    uis.InputEnded:Connect(function(inp)
        if uis:GetFocusedTextBox() == nil then
            if inp[tostring(OpenCloseBinding.EnumType)] == OpenCloseBinding then
                Minimize(true)
            end
        end
    end)

	TextTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextTitle.BackgroundTransparency = 1.000
	TextTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextTitle.BorderSizePixel = 0
	TextTitle.Position = UDim2.new(0, 4, -0.0399999991, 0)
	TextTitle.Size = UDim2.new(0, 250, 0, 25)
	TextTitle.Font = Enum.Font.SourceSansBold
	TextTitle.Text = Title
	TextTitle.TextColor3 = UI.Color.Text
	TextTitle.TextSize = 17.000
	TextTitle.TextXAlignment = Enum.TextXAlignment.Left
    
	function UI:Tab(Name)
        local TabButton = Instance.new("Frame",Tabs)
        local Page = Instance.new("Frame",ShowActivity)
		local TheActuallButton = Instance.new("TextButton",TabButton)
		local UIListLayout = Instance.new("UIListLayout",Page)
		local Stub = Instance.new("Frame",Page)
		local UICTab = Instance.new("UICorner",TheActuallButton)
		local UICTab_2 = Instance.new("UICorner",TabButton)
		local PageUIC_3 = Instance.new("UICorner",Page)

		TabButton.Name = "TabButton"
		TabButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TabButton.BackgroundTransparency = 0.750
		TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabButton.BorderSizePixel = 0
		TabButton.Position = UDim2.new(-0.761904776, 0, 0, 0)
		TabButton.Size = UDim2.new(0, 98, 0, 35)

		TheActuallButton.Name = "TheActuallButton"
		TheActuallButton.BackgroundColor3 = UI.Color.TransparentLayer
		TheActuallButton.BackgroundTransparency = 0.950
		TheActuallButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TheActuallButton.BorderSizePixel = 0
		TheActuallButton.Position = UDim2.new(0, 2, 0, 2)
		TheActuallButton.Size = UDim2.new(0, 94, 0, 31)
		TheActuallButton.Font = Enum.Font.SourceSans
        TheActuallButton.TextColor3 = UI.Color.Text
        TheActuallButton.Text = Name
		TheActuallButton.TextSize = 14.000
		TheActuallButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		--------------
		Page.Name = "Page"
		Page.BackgroundColor3 = UI.Color.TransparentLayer
		Page.BackgroundTransparency = 0.950
		Page.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Page.BorderSizePixel = 0
        Page.Position = UDim2.new(0, 5, 0, 0)
        Page.Size = UDim2.new(0, 298, 0, 150)
        Page.Visible = false
        Page.AutomaticSize = "Y"

		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)

		Stub.Name = "Stub"
		Stub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Stub.BackgroundTransparency = 1.000
		Stub.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Stub.BorderSizePixel = 0
		Stub.LayoutOrder = -9999
		Stub.Position = UDim2.new(0, 5, 0, 0)
		Stub.Size = UDim2.new(0, 298, 0, 0)
        TheActuallButton.MouseButton1Click:Connect(function()
            for i,v in pairs(ShowActivity:GetChildren()) do
                if v:IsA("Frame") then
                    v.Visible = false
                end
            end
            Page.Visible = not Page.Visible
        end)
        local Tab = {}
        function Tab:Button(Text,CallBack)
            Text,CallBack = (Text or "Button"),(CallBack or function()
                print("Pressed")
            end)
            local Button = Instance.new("Frame",Page)
            local TheActuallButton = Instance.new("TextButton",Button)
            local ButtonUICorner = Instance.new("UICorner",TheActuallButton)
            local TheActuallButtonUICorner = Instance.new("UICorner",Button)

            Button.Name = "Button"
            Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Button.BackgroundTransparency = 0.750
            Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Button.BorderSizePixel = 0
            Button.Size = UDim2.new(0, 265, 0, 35)

            TheActuallButton.Name = "TheActuallButton"
            TheActuallButton.BackgroundColor3 = UI.Color.TransparentLayer
            TheActuallButton.BackgroundTransparency = 0.950
            TheActuallButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TheActuallButton.BorderSizePixel = 0
            TheActuallButton.Position = UDim2.new(0, 2, 0, 2)
            TheActuallButton.Size = UDim2.new(0, 261, 0, 31)
            TheActuallButton.Font = Enum.Font.SourceSans
            TheActuallButton.TextColor3 = UI.Color.Text
            TheActuallButton.TextSize = 14.000
            TheActuallButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            TheActuallButton.Text = Text
            TheActuallButton.MouseButton1Click:Connect(CallBack)
		end
        function Tab:Toggle(Text,State,CallBack)
            Text,State,CallBack = (Text or "Toggle"),(State or false),(CallBack or function()
                print("Toggled")
            end)
            local Toggle = Instance.new("Frame",Page)
            local TextLabel = Instance.new("TextLabel",Toggle)
            local TheActualToggle = Instance.new("ImageButton",Toggle)
            local ShowToggled = Instance.new("Frame",TheActualToggle)
            local ToggleUICorner = Instance.new("UICorner",Toggle)
            local TheActualToggle_2 = Instance.new("UICorner",TheActualToggle)
            local Toggled_3 = Instance.new("UICorner",ShowToggled)
            Toggle.Name = "Toggle"
            Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Toggle.BackgroundTransparency = 0.750
            Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Toggle.BorderSizePixel = 0
            Toggle.Size = UDim2.new(0, 265, 0, 35)

            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0, 8, 0, 2)
            TextLabel.Size = UDim2.new(0, 166, 0, 31)
            TextLabel.Font = Enum.Font.SourceSans
            TextLabel.TextColor3 = UI.Color.Text
            TextLabel.TextSize = 14.000
            TextLabel.Text = Text
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left

            TheActualToggle.Name = "TheActualToggle"
            TheActualToggle.BackgroundColor3 = UI.Color.TransparentLayer
            TheActualToggle.BackgroundTransparency = 0.950
            TheActualToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TheActualToggle.BorderSizePixel = 0
            TheActualToggle.Position = UDim2.new(0, 184, 0, 2)
            TheActualToggle.Size = UDim2.new(0, 79, 0, 31)
            TheActualToggle.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
            TheActualToggle.ImageTransparency = 1.000

            ShowToggled.Name = "ShowToggled"
            ShowToggled.AnchorPoint = Vector2.new(0, 0.5)
            ShowToggled.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            ShowToggled.BackgroundTransparency = 0.600
            ShowToggled.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ShowToggled.BorderSizePixel = 0
            ShowToggled.Position = UDim2.new(0, 2, 0.5, 0)
            ShowToggled.Size = UDim2.new(0, 38, 0, 27)
            local function setState()
                State = not State
                CallBack(State)
                if State then
                    ShowToggled.BackgroundColor3 = UI.Color.ToggledOn
                    ShowToggled:TweenPosition(
                        UDim2.new(0, 37.5, 0.5, 0),
                        Enum.EasingDirection.InOut,
                        Enum.EasingStyle.Sine,
                        .1,
                        true
                    )
                else
                    ShowToggled.BackgroundColor3 = UI.Color.ToggledOff
                    ShowToggled:TweenPosition(
                        UDim2.new(0, 2, 0.5, 0),
                        Enum.EasingDirection.InOut,
                        Enum.EasingStyle.Sine,
                        .1,
                        true
                    )
                end
            end
            TheActualToggle.MouseButton1Click:Connect(setState)
		end
        function Tab:Open()
            for i,v in pairs(ShowActivity:GetChildren()) do
                if v:IsA("Frame") then
                    v.Visible = false
                end
            end
            Page.Visible = not Page.Visible
        end
		return Tab
	end
    
	return UI
end

return incestui
