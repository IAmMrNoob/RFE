--[[
extra note that this can be risky to use on your account since it requests for messages every 3 seconds constantly unless turned off
]]
--[[
	unorganized code but this was a small demo and the actual thing is being worked slowly ig!!
	i mainly wanted it to be open source to gain trust but idk if i should do that with the one thats being worked on (also @celery devs slide websockets i wanna try using it)
	even tho idk how to use websockets i have done research on it and will procceed with experimenting with it but i wanna keep try it in lua idk why but im stupid

	
	Using a new gui converter that is seems to be like updated or something idk
	now i dont really need to manually input certain stuff manually!!!
	
	Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

]]
local accountToken = ""--[[
replaced withe mod.token for the plugin
i would like to make it save but i think its risky if other scrips poke into the workspace folder also it is still risky that this is a script since hooking and other stuff exist


ignore notes beyod this point(if there is any) since it is a demo and i was still researching and just wanted to put stuff i found together 
]]
local CurrentChannel = {
    id = "",
    messages = {}
}
if _G.fakebuiltinDiscord and _G.fakebuiltinDiscord.isrunning == true then
	return warn("shitty discrd(rblxedition) is already running")
end
local mod = {}
local Fake_ass_discord = {
	["_Fake ass discord"] = Instance.new("ScreenGui");--[[
	["_StateFrame"] = Instance.new("Frame");
	["_OpenButton"] = Instance.new("ImageButton");
	["_OpenButton_Corner"] = Instance.new("UICorner");
	["_ButtonText"] = Instance.new("TextLabel");]]
	["_ThePlaceofInsanity"] = Instance.new("Frame");
	["_ThePlaceofInsanity_Corner"] = Instance.new("UICorner");
	["_DirectMesagesOrChannelsTab"] = Instance.new("Frame");
	["_DirectMesagesTab_Corner"] = Instance.new("UICorner");
	["_DMUserList"] = Instance.new("ScrollingFrame");
	["_DMUserList_ListLayout"] = Instance.new("UIListLayout");
	["_DMUserList_Padding"] = Instance.new("UIPadding");
	["_ThePlaceofInsanity_Padding"] = Instance.new("UIPadding");
	["_ThePlaceofInsanity_ListLayout"] = Instance.new("UIListLayout");
	["_ChannelFrame"] = Instance.new("Frame");
	["_ChannelFrame_Corner"] = Instance.new("UICorner");
	["_MainChannelView"] = Instance.new("Frame");
	["_ChannelTopBar"] = Instance.new("Frame");
	["_ChannelTopBar_Corner"] = Instance.new("UICorner");
	["_TextLabel"] = Instance.new("TextLabel");
	["_StatusIndicator"] = Instance.new("Frame");
	["_StatusIndicator_Corner"] = Instance.new("UICorner");
	["_ChannelTopBar_ListLayout"] = Instance.new("UIListLayout");
	["_ChannelTopBar_Padding"] = Instance.new("UIPadding");
	["_MesageList"] = Instance.new("ScrollingFrame");
	["_MesageList_ListLayout"] = Instance.new("UIListLayout");
	["_MesageList_Padding"] = Instance.new("UIPadding");
	["_InputContainer"] = Instance.new("Frame");
	["_InputContainer_Corner"] = Instance.new("UICorner");
	["_MessageInput"] = Instance.new("TextBox");
	["_MessageInput_Padding"] = Instance.new("UIPadding");
	["_ServersTab"] = Instance.new("Frame");
	["_ServersTab_Corner"] = Instance.new("UICorner");
	["_DirectMessages"] = Instance.new("ImageButton");
}
_G.fakebuiltinDiscord = {
	isrunning = true,
	kill = function()
		for i,v in pairs(Fake_ass_discord["_Fake ass discord"]:GetDescendants()) do
			v:Destroy()
		end
		Fake_ass_discord["_Fake ass discord"]:Destroy()
        _G.fakebuiltinDiscord.isrunning = false
	end,
	connections = {}
}
function con(x)
	if typeof(x) == 'RBXScriptConnection' then
		table.insert(_G.fakebuiltinDiscord.connections,x)
	else
		error("not rbxsignal")
	end
end
local twS,rS,uis = game:GetService("TweenService"),game:GetService("RunService"),game:GetService("UserInputService")
local twi = {Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.2,true}
local json = {
    decode = function(x:"json string")
        return game:GetService("HttpService"):JSONDecode(x)
    end,
    encode = function(x:"table")
        return game:GetService("HttpService"):JSONEncode(x)
    end
}
function discordrest(url:string,method:string, body:string)
	if mod.token:len() < 20 then
		return 
	end
    local quest = request({
        Url = url,
        Method = (method ~= nil and method:upper() or "GET"),
        Headers = {
            ["authorization"] = mod.token,
            ["Content-Type"] = "application/json",
            ["accept-language"] = "en-US,en;q=0.9,es-US;q=0.8,es;q=0.7,nl;q=0.6",--[[idk if these are needed but ill keep it just incase cause idk replace them with your own btw you can get them in dev console on discord in the network tab]]
            ["priority"] = "u=1, i",
            ["sec-ch-ua"] = "\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"",
            ["sec-ch-ua-platform"] = "\"Windows\"",
            ["referrer"] = "https://discord.com/channels/@me"
        },
        Body = body or nil
    })
    return json.decode(quest.Body)
end
function sendmswg(MSGcontent)
    local res = discordrest(`https://discord.com/api/v9/channels/{CurrentChannel.id}/messages`,"post",json.encode({
        content = MSGcontent
    }))
end
do
	Fake_ass_discord["_Fake ass discord"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Fake_ass_discord["_Fake ass discord"].Name = "Fake ass discord"
	Fake_ass_discord["_Fake ass discord"].Parent = gethui()

	Fake_ass_discord["_StateFrame"].AnchorPoint = Vector2.new(0.5, 1)
	Fake_ass_discord["_StateFrame"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
	Fake_ass_discord["_StateFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_StateFrame"].BorderSizePixel = 0
	Fake_ass_discord["_StateFrame"].Position = UDim2.new(0.5, 0, 1, 0)
	Fake_ass_discord["_StateFrame"].Size = UDim2.new(0, 150, 0, 10)
	Fake_ass_discord["_StateFrame"].Name = "StateFrame"
	Fake_ass_discord["_StateFrame"].Parent = Fake_ass_discord["_Fake ass discord"]
	Fake_ass_discord["_StateFrame"].ZIndex = 2

	Fake_ass_discord["_OpenButton"].Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	Fake_ass_discord["_OpenButton"].ImageTransparency = 1
	Fake_ass_discord["_OpenButton"].AnchorPoint = Vector2.new(0.5, 1)
	Fake_ass_discord["_OpenButton"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
	Fake_ass_discord["_OpenButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_OpenButton"].BorderSizePixel = 0
	Fake_ass_discord["_OpenButton"].Position = UDim2.new(0.5, 0, 1, 0)
	Fake_ass_discord["_OpenButton"].Size = UDim2.new(0, 150, 0, 20)
	Fake_ass_discord["_OpenButton"].Name = "OpenButton"
	Fake_ass_discord["_OpenButton"].Parent = Fake_ass_discord["_StateFrame"]
	Fake_ass_discord["_OpenButton"].AutoButtonColor = false
	local state = true
	local setstateinsanityframe = function()
		state = not state
		if state then
			Fake_ass_discord["_ThePlaceofInsanity"]:TweenPosition(UDim2.new(0.5, 0, 0.5, 0),unpack(twi)) 
		else
			Fake_ass_discord["_ThePlaceofInsanity"]:TweenPosition(UDim2.new(0.5, 0, 1.3, 0),unpack(twi)) 
		end
	end
	Fake_ass_discord._OpenButton.MouseButton1Click:Connect(setstateinsanityframe)

	Fake_ass_discord["_OpenButton_Corner"].Name = "OpenButton_Corner"
	Fake_ass_discord["_OpenButton_Corner"].Parent = Fake_ass_discord["_OpenButton"]

	Fake_ass_discord["_ButtonText"].Font = Enum.Font.SourceSans
	Fake_ass_discord["_ButtonText"].Text = "Discord"
	Fake_ass_discord["_ButtonText"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_ButtonText"].TextSize = 14
	Fake_ass_discord["_ButtonText"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_ButtonText"].BackgroundTransparency = 1
	Fake_ass_discord["_ButtonText"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_ButtonText"].BorderSizePixel = 0
	Fake_ass_discord["_ButtonText"].Size = UDim2.new(1, 0, 1, 0)
	Fake_ass_discord["_ButtonText"].Name = "ButtonText"
	Fake_ass_discord["_ButtonText"].Parent = Fake_ass_discord["_OpenButton"]

	Fake_ass_discord["_ThePlaceofInsanity"].AnchorPoint = Vector2.new(0.5, 0.5)
	Fake_ass_discord["_ThePlaceofInsanity"].AutomaticSize = Enum.AutomaticSize.X
	Fake_ass_discord["_ThePlaceofInsanity"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
	Fake_ass_discord["_ThePlaceofInsanity"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_ThePlaceofInsanity"].BorderSizePixel = 0
	Fake_ass_discord["_ThePlaceofInsanity"].Position = UDim2.new(0.5, 0, 0.5, 0)
	Fake_ass_discord["_ThePlaceofInsanity"].Size = UDim2.new(0, 500, 0, 300)
	Fake_ass_discord["_ThePlaceofInsanity"].Name = "ThePlaceofInsanity"
	Fake_ass_discord["_ThePlaceofInsanity"].Parent = Fake_ass_discord["_Fake ass discord"]
	setstateinsanityframe()

	Fake_ass_discord["_ThePlaceofInsanity_Corner"].Name = "ThePlaceofInsanity_Corner"
	Fake_ass_discord["_ThePlaceofInsanity_Corner"].Parent = Fake_ass_discord["_ThePlaceofInsanity"]

	Fake_ass_discord["_DirectMesagesOrChannelsTab"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_DirectMesagesOrChannelsTab"].BackgroundTransparency = 0.8999999761581421
	Fake_ass_discord["_DirectMesagesOrChannelsTab"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_DirectMesagesOrChannelsTab"].BorderSizePixel = 0
	Fake_ass_discord["_DirectMesagesOrChannelsTab"].LayoutOrder = 2
	Fake_ass_discord["_DirectMesagesOrChannelsTab"].Size = UDim2.new(0, 100, 1, 0)
	Fake_ass_discord["_DirectMesagesOrChannelsTab"].Name = "DirectMesagesOrChannelsTab"
	Fake_ass_discord["_DirectMesagesOrChannelsTab"].Parent = Fake_ass_discord["_ThePlaceofInsanity"]

	Fake_ass_discord["_DirectMesagesTab_Corner"].Name = "DirectMesagesTab_Corner"
	Fake_ass_discord["_DirectMesagesTab_Corner"].Parent = Fake_ass_discord["_DirectMesagesOrChannelsTab"]

	Fake_ass_discord["_DMUserList"].CanvasSize = UDim2.new(0, 0, 0, 0)
	Fake_ass_discord["_DMUserList"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_DMUserList"].ScrollBarThickness = 6
	Fake_ass_discord["_DMUserList"].ScrollingDirection = Enum.ScrollingDirection.Y
	Fake_ass_discord["_DMUserList"].VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
	Fake_ass_discord["_DMUserList"].Active = true
	Fake_ass_discord["_DMUserList"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_DMUserList"].BackgroundTransparency = 1
	Fake_ass_discord["_DMUserList"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_DMUserList"].BorderSizePixel = 0
	Fake_ass_discord["_DMUserList"].Size = UDim2.new(1, 0, 1, 0)
	Fake_ass_discord["_DMUserList"].Name = "DMUserList"
	Fake_ass_discord["_DMUserList"].Parent = Fake_ass_discord["_DirectMesagesOrChannelsTab"]

	Fake_ass_discord["_DMUserList_ListLayout"].Padding = UDim.new(0, 3)
	Fake_ass_discord["_DMUserList_ListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
	Fake_ass_discord["_DMUserList_ListLayout"].Name = "DMUserList_ListLayout"
	Fake_ass_discord["_DMUserList_ListLayout"].Parent = Fake_ass_discord["_DMUserList"]

	Fake_ass_discord["_DMUserList_Padding"].PaddingLeft = UDim.new(0, 4)
	Fake_ass_discord["_DMUserList_Padding"].PaddingRight = UDim.new(0, 4)
	Fake_ass_discord["_DMUserList_Padding"].Name = "DMUserList_Padding"
	Fake_ass_discord["_DMUserList_Padding"].Parent = Fake_ass_discord["_DMUserList"]

	Fake_ass_discord["_ThePlaceofInsanity_Padding"].PaddingBottom = UDim.new(0, 5)
	Fake_ass_discord["_ThePlaceofInsanity_Padding"].PaddingLeft = UDim.new(0, 5)
	Fake_ass_discord["_ThePlaceofInsanity_Padding"].PaddingRight = UDim.new(0, 5)
	Fake_ass_discord["_ThePlaceofInsanity_Padding"].PaddingTop = UDim.new(0, 5)
	Fake_ass_discord["_ThePlaceofInsanity_Padding"].Name = "ThePlaceofInsanity_Padding"
	Fake_ass_discord["_ThePlaceofInsanity_Padding"].Parent = Fake_ass_discord["_ThePlaceofInsanity"]

	Fake_ass_discord["_ThePlaceofInsanity_ListLayout"].Padding = UDim.new(0, 5)
	Fake_ass_discord["_ThePlaceofInsanity_ListLayout"].FillDirection = Enum.FillDirection.Horizontal
	Fake_ass_discord["_ThePlaceofInsanity_ListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
	Fake_ass_discord["_ThePlaceofInsanity_ListLayout"].VerticalAlignment = Enum.VerticalAlignment.Center
	Fake_ass_discord["_ThePlaceofInsanity_ListLayout"].Name = "ThePlaceofInsanity_ListLayout"
	Fake_ass_discord["_ThePlaceofInsanity_ListLayout"].Parent = Fake_ass_discord["_ThePlaceofInsanity"]

	Fake_ass_discord["_ChannelFrame"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)
	Fake_ass_discord["_ChannelFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_ChannelFrame"].BorderSizePixel = 0
	Fake_ass_discord["_ChannelFrame"].LayoutOrder = 3
	Fake_ass_discord["_ChannelFrame"].Size = UDim2.new(0, 385, 1, 0)
	Fake_ass_discord["_ChannelFrame"].Name = "ChannelFrame"
	Fake_ass_discord["_ChannelFrame"].Parent = Fake_ass_discord["_ThePlaceofInsanity"]

	Fake_ass_discord["_ChannelFrame_Corner"].Name = "ChannelFrame_Corner"
	Fake_ass_discord["_ChannelFrame_Corner"].Parent = Fake_ass_discord["_ChannelFrame"]

	Fake_ass_discord["_MainChannelView"].AnchorPoint = Vector2.new(0.5, 0)
	Fake_ass_discord["_MainChannelView"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_MainChannelView"].BackgroundTransparency = 1
	Fake_ass_discord["_MainChannelView"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_MainChannelView"].BorderSizePixel = 0
	Fake_ass_discord["_MainChannelView"].Position = UDim2.new(0.5, 0, 0, 0)
	Fake_ass_discord["_MainChannelView"].Size = UDim2.new(1, 0, 0.899999976, -3)
	Fake_ass_discord["_MainChannelView"].Name = "MainChannelView"
	Fake_ass_discord["_MainChannelView"].Parent = Fake_ass_discord["_ChannelFrame"]

	Fake_ass_discord["_ChannelTopBar"].AnchorPoint = Vector2.new(0.5, 0)
	Fake_ass_discord["_ChannelTopBar"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)
	Fake_ass_discord["_ChannelTopBar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_ChannelTopBar"].BorderSizePixel = 0
	Fake_ass_discord["_ChannelTopBar"].Position = UDim2.new(0.5, 0, 0, 0)
	Fake_ass_discord["_ChannelTopBar"].Size = UDim2.new(1, 0, 0.100000001, 0)
	Fake_ass_discord["_ChannelTopBar"].ZIndex = 2
	Fake_ass_discord["_ChannelTopBar"].Name = "ChannelTopBar"
	Fake_ass_discord["_ChannelTopBar"].Parent = Fake_ass_discord["_MainChannelView"]

	Fake_ass_discord["_ChannelTopBar_Corner"].Name = "ChannelTopBar_Corner"
	Fake_ass_discord["_ChannelTopBar_Corner"].Parent = Fake_ass_discord["_ChannelTopBar"]

	Fake_ass_discord["_TextLabel"].Font = Enum.Font.SourceSans
	Fake_ass_discord["_TextLabel"].Text = "@SelectedUser"
	Fake_ass_discord["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_TextLabel"].TextSize = 14
	Fake_ass_discord["_TextLabel"].AutomaticSize = Enum.AutomaticSize.X
	Fake_ass_discord["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_TextLabel"].BackgroundTransparency = 1
	Fake_ass_discord["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_TextLabel"].BorderSizePixel = 0
	Fake_ass_discord["_TextLabel"].Size = UDim2.new(0, 25, 1, 0)
	Fake_ass_discord["_TextLabel"].Parent = Fake_ass_discord["_ChannelTopBar"]

	Fake_ass_discord["_StatusIndicator"].AnchorPoint = Vector2.new(0.5, 0.5)
	Fake_ass_discord["_StatusIndicator"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_StatusIndicator"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_StatusIndicator"].BorderSizePixel = 0
	Fake_ass_discord["_StatusIndicator"].LayoutOrder = -1
	Fake_ass_discord["_StatusIndicator"].Size = UDim2.new(0, 10, 0, 10)
	Fake_ass_discord["_StatusIndicator"].Name = "StatusIndicator"
	Fake_ass_discord["_StatusIndicator"].Parent = Fake_ass_discord["_ChannelTopBar"]

	Fake_ass_discord["_StatusIndicator_Corner"].CornerRadius = UDim.new(1, 0)
	Fake_ass_discord["_StatusIndicator_Corner"].Name = "StatusIndicator_Corner"
	Fake_ass_discord["_StatusIndicator_Corner"].Parent = Fake_ass_discord["_StatusIndicator"]

	Fake_ass_discord["_ChannelTopBar_ListLayout"].Padding = UDim.new(0, 5)
	Fake_ass_discord["_ChannelTopBar_ListLayout"].FillDirection = Enum.FillDirection.Horizontal
	Fake_ass_discord["_ChannelTopBar_ListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
	Fake_ass_discord["_ChannelTopBar_ListLayout"].VerticalAlignment = Enum.VerticalAlignment.Center
	Fake_ass_discord["_ChannelTopBar_ListLayout"].Name = "ChannelTopBar_ListLayout"
	Fake_ass_discord["_ChannelTopBar_ListLayout"].Parent = Fake_ass_discord["_ChannelTopBar"]

	Fake_ass_discord["_ChannelTopBar_Padding"].PaddingLeft = UDim.new(0, 5)
	Fake_ass_discord["_ChannelTopBar_Padding"].PaddingRight = UDim.new(0, 5)
	Fake_ass_discord["_ChannelTopBar_Padding"].Name = "ChannelTopBar_Padding"
	Fake_ass_discord["_ChannelTopBar_Padding"].Parent = Fake_ass_discord["_ChannelTopBar"]

	Fake_ass_discord["_MesageList"].AutomaticCanvasSize = Enum.AutomaticSize.Y
	Fake_ass_discord["_MesageList"].CanvasSize = UDim2.new(0, 0, 0, 0)
	Fake_ass_discord["_MesageList"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_MesageList"].ScrollBarThickness = 6
	Fake_ass_discord["_MesageList"].ScrollingDirection = Enum.ScrollingDirection.Y
	Fake_ass_discord["_MesageList"].Active = true
	Fake_ass_discord["_MesageList"].AnchorPoint = Vector2.new(0, 1)
	Fake_ass_discord["_MesageList"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_MesageList"].BackgroundTransparency = 1
	Fake_ass_discord["_MesageList"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_MesageList"].BorderSizePixel = 0
	Fake_ass_discord["_MesageList"].Position = UDim2.new(0, 0, 1, 0)
	Fake_ass_discord["_MesageList"].Size = UDim2.new(1, 0, 0.899999976, 0)
	Fake_ass_discord["_MesageList"].Name = "MesageList"
	Fake_ass_discord["_MesageList"].Parent = Fake_ass_discord["_MainChannelView"]
    

	Fake_ass_discord["_MesageList_ListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
	Fake_ass_discord["_MesageList_ListLayout"].VerticalAlignment = Enum.VerticalAlignment.Top
	Fake_ass_discord["_MesageList_ListLayout"].Name = "MesageList_ListLayout"
	Fake_ass_discord["_MesageList_ListLayout"].Parent = Fake_ass_discord["_MesageList"]

	Fake_ass_discord["_MesageList_Padding"].PaddingLeft = UDim.new(0, 5)
	Fake_ass_discord["_MesageList_Padding"].PaddingRight = UDim.new(0, 5)
	Fake_ass_discord["_MesageList_Padding"].Name = "MesageList_Padding"
	Fake_ass_discord["_MesageList_Padding"].Parent = Fake_ass_discord["_MesageList"]

	Fake_ass_discord["_InputContainer"].AnchorPoint = Vector2.new(0.5, 1)
	Fake_ass_discord["_InputContainer"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_InputContainer"].BackgroundTransparency = 0.9700000286102295
	Fake_ass_discord["_InputContainer"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_InputContainer"].BorderSizePixel = 0
	Fake_ass_discord["_InputContainer"].Position = UDim2.new(0.5, 0, 1, 0)
	Fake_ass_discord["_InputContainer"].Size = UDim2.new(1, 0, 0.100000001, 0)
	Fake_ass_discord["_InputContainer"].Name = "InputContainer"
	Fake_ass_discord["_InputContainer"].Parent = Fake_ass_discord["_ChannelFrame"]
	Fake_ass_discord["_InputContainer"].AutomaticSize = Enum.AutomaticSize.Y

	Fake_ass_discord["_InputContainer_Corner"].CornerRadius = UDim.new(0, 6)
	Fake_ass_discord["_InputContainer_Corner"].Name = "InputContainer_Corner"
	Fake_ass_discord["_InputContainer_Corner"].Parent = Fake_ass_discord["_InputContainer"]

	Fake_ass_discord["_MessageInput"].ClearTextOnFocus = false
	Fake_ass_discord["_MessageInput"].CursorPosition = -1
	Fake_ass_discord["_MessageInput"].Font = Enum.Font.SourceSans
	Fake_ass_discord["_MessageInput"].PlaceholderText = "Message <channel>"
	Fake_ass_discord["_MessageInput"].Text = ""
	Fake_ass_discord["_MessageInput"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_MessageInput"].TextSize = 14
	Fake_ass_discord["_MessageInput"].TextWrapped = true
	Fake_ass_discord["_MessageInput"].TextXAlignment = Enum.TextXAlignment.Left
	Fake_ass_discord["_MessageInput"].AutomaticSize = Enum.AutomaticSize.Y
	Fake_ass_discord["_MessageInput"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_MessageInput"].BackgroundTransparency = 1
	Fake_ass_discord["_MessageInput"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_MessageInput"].BorderSizePixel = 0
	Fake_ass_discord["_MessageInput"].Size = UDim2.new(1, -5, 0, 20)
	--Fake_ass_discord["_MessageInput"].Position = UDim2.new(0, 0, .5, 0)
	--Fake_ass_discord["_MessageInput"].AnchorPoint = Vector2.new(0,.5)
	Fake_ass_discord["_MessageInput"].Name = "MessageInput"
	local Messagetoolong = Instance.new("ScrollingFrame",Fake_ass_discord["_InputContainer"])
	Fake_ass_discord["_MessageInput"].Parent = Messagetoolong
	Messagetoolong.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Messagetoolong.BackgroundTransparency = 1.000
	Messagetoolong.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Messagetoolong.BorderSizePixel = 0
	Messagetoolong.AutomaticCanvasSize = "Y"
	Messagetoolong.CanvasSize = UDim2.new()
	Messagetoolong.Size = UDim2.new(1, 0, 1, 0)
	Messagetoolong.ScrollBarThickness = 6
	Messagetoolong.Changed:Connect(function(x)
		if x == "AbsoluteCanvasSize" then
			local x = uis:GetFocusedTextBox()
			if Fake_ass_discord["_MessageInput"] == x then
				Messagetoolong.CanvasPosition = Vector2.new(0,Messagetoolong.AbsoluteCanvasSize.Y)
			end
		end
	end)
	Fake_ass_discord["_MessageInput"].FocusLost:Connect(function(enter, inp) 
		if (uis:IsKeyDown(Enum.KeyCode.LeftShift) or uis:IsKeyDown(Enum.KeyCode.RightShift)) and enter then
			--local x = Fake_ass_discord["_MessageInput"].CursorPosition
			Fake_ass_discord["_MessageInput"].Text = Fake_ass_discord["_MessageInput"].Text .. "\n"
			rS.RenderStepped:Wait()
			Fake_ass_discord["_MessageInput"]:CaptureFocus()
			Messagetoolong.CanvasPosition = Vector2.new(0,Messagetoolong.AbsoluteCanvasSize.Y)
		elseif not (uis:IsKeyDown(Enum.KeyCode.LeftShift) or uis:IsKeyDown(Enum.KeyCode.RightShift)) and enter then
			sendmswg(Fake_ass_discord["_MessageInput"].Text)
			Fake_ass_discord["_MessageInput"].Text = ""
		end
	end)
	defualtinputsizeY = Fake_ass_discord._InputContainer.AbsoluteSize.Y
	Fake_ass_discord["_MessageInput"].Changed:Connect(function(prop)
		if Fake_ass_discord["_MessageInput"].Text:len() > 2000 then
			Fake_ass_discord["_MessageInput"].Text = Fake_ass_discord["_MessageInput"].Text:sub(0,2000)
		end
		Fake_ass_discord["_MainChannelView"].Size = UDim2.new(1, 0, 0.899999976, -3 + (defualtinputsizeY-Fake_ass_discord._InputContainer.AbsoluteSize.Y))
		if (Fake_ass_discord._MessageInput.AbsoluteSize.Y)-Fake_ass_discord["_MessageInput"].Size.Y.Offset < 42 then
			Fake_ass_discord["_InputContainer"].Size = UDim2.new(1, 0, 0.100000001, (Fake_ass_discord._MessageInput.AbsoluteSize.Y)-Fake_ass_discord["_MessageInput"].Size.Y.Offset)
			local x = uis:GetFocusedTextBox()
			if x then
				x:CaptureFocus()
			end
		end
		if prop == "Text" then
			local str,am = Fake_ass_discord["_MessageInput"].Text:gsub("\n","\n",10)
			if am >= 8 then
				Fake_ass_discord["_MessageInput"].TextWrapped = false
				Fake_ass_discord["_MessageInput"].AutomaticSize = "XY"
			else
				Fake_ass_discord["_MessageInput"].TextWrapped = true
				Fake_ass_discord["_MessageInput"].AutomaticSize = "Y"
			end
		end
	end)

	Fake_ass_discord["_MessageInput_Padding"].PaddingBottom = UDim.new(0, 3)
	Fake_ass_discord["_MessageInput_Padding"].PaddingLeft = UDim.new(0, 7)
	Fake_ass_discord["_MessageInput_Padding"].PaddingRight = UDim.new(0, 7)
	Fake_ass_discord["_MessageInput_Padding"].PaddingTop = UDim.new(0, 3)
	Fake_ass_discord["_MessageInput_Padding"].Name = "MessageInput_Padding"
	Fake_ass_discord["_MessageInput_Padding"].Parent = Fake_ass_discord["_InputContainer"]

	Fake_ass_discord["_ServersTab"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_ServersTab"].BackgroundTransparency = 0.8999999761581421
	Fake_ass_discord["_ServersTab"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_ServersTab"].BorderSizePixel = 0
	Fake_ass_discord["_ServersTab"].LayoutOrder = 1
	Fake_ass_discord["_ServersTab"].Size = UDim2.new(0, 48, 1, 0)
	Fake_ass_discord["_ServersTab"].Visible = false
	Fake_ass_discord["_ServersTab"].Name = "ServersTab"
	Fake_ass_discord["_ServersTab"].Parent = Fake_ass_discord["_ThePlaceofInsanity"]

	Fake_ass_discord["_ServersTab_Corner"].Name = "ServersTab_Corner"
	Fake_ass_discord["_ServersTab_Corner"].Parent = Fake_ass_discord["_ServersTab"]

	Fake_ass_discord["_DirectMessages"].Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	Fake_ass_discord["_DirectMessages"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fake_ass_discord["_DirectMessages"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fake_ass_discord["_DirectMessages"].BorderSizePixel = 0
	Fake_ass_discord["_DirectMessages"].Size = UDim2.new(0, 48, 0, 48)
	Fake_ass_discord["_DirectMessages"].Name = "DirectMessages"
	Fake_ass_discord["_DirectMessages"].Parent = Fake_ass_discord["_ServersTab"]
end
--[[ local Channels = {
    {
        id = "",
        messages = {}
    }
}]]
local messageinstances = {}
function createmessage(User,Content,id)
	local Message = {
		["_Message"] = Instance.new("Frame");
		["_ReplyingTo"] = Instance.new("Frame");
		["_Message_ListLayout"] = Instance.new("UIListLayout");
		["_ImageContents"] = Instance.new("Frame");
		["_MessageOwner"] = Instance.new("TextLabel");
		["_MessageContent"] = Instance.new("TextLabel");
		["_Message_Corner"] = Instance.new("UICorner");
		["_Message_Padding"] = Instance.new("UIPadding");
	}
	---https://cdn.discordapp.com/attachments/<channelid>/<?attachmentid>/<name&type>
	Message["_Message"].AutomaticSize = Enum.AutomaticSize.Y
	Message["_Message"].BackgroundColor3 = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	Message["_Message"].BackgroundTransparency = 0.949999988079071
	Message["_Message"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Message["_Message"].BorderSizePixel = 0
	Message["_Message"].Size = UDim2.new(1, 0, 0, 35)
	Message["_Message"].Name = "Message"
	Message["_Message"].Parent = Fake_ass_discord._MesageList

	Message["_ReplyingTo"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Message["_ReplyingTo"].BackgroundTransparency = 1
	Message["_ReplyingTo"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Message["_ReplyingTo"].BorderSizePixel = 0
	Message["_ReplyingTo"].LayoutOrder = -1
	Message["_ReplyingTo"].Size = UDim2.new(1, 0, 0, 16)
	Message["_ReplyingTo"].Visible = false
	Message["_ReplyingTo"].Name = "ReplyingTo"
	Message["_ReplyingTo"].Parent = Message["_Message"]

	Message["_Message_ListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
	Message["_Message_ListLayout"].Name = "Message_ListLayout"
	Message["_Message_ListLayout"].Parent = Message["_Message"]

	Message["_ImageContents"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Message["_ImageContents"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Message["_ImageContents"].BorderSizePixel = 0
	Message["_ImageContents"].LayoutOrder = 999
	Message["_ImageContents"].Size = UDim2.new(0, 100, 0, 100)
	Message["_ImageContents"].Visible = false
	Message["_ImageContents"].Name = "ImageContents"
	Message["_ImageContents"].Parent = Message["_Message"]

	Message["_MessageOwner"].Font = Enum.Font.SourceSansBold
	Message["_MessageOwner"].Text = User or "@Username"
	Message["_MessageOwner"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Message["_MessageOwner"].TextSize = 14
	Message["_MessageOwner"].TextXAlignment = Enum.TextXAlignment.Left
	Message["_MessageOwner"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Message["_MessageOwner"].BackgroundTransparency = 1
	Message["_MessageOwner"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Message["_MessageOwner"].BorderSizePixel = 0
	Message["_MessageOwner"].Size = UDim2.new(1, 0, 0, 17)
	Message["_MessageOwner"].Name = "MessageOwner"
	Message["_MessageOwner"].Parent = Message["_Message"]

	Message["_MessageContent"].Font = Enum.Font.SourceSans
	Message["_MessageContent"].RichText = true
	Message["_MessageContent"].TextWrapped = true
	Message["_MessageContent"].Text = Content or "Message Content"
	Message["_MessageContent"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Message["_MessageContent"].TextSize = 14
	Message["_MessageContent"].TextXAlignment = Enum.TextXAlignment.Left
	Message["_MessageContent"].TextYAlignment = Enum.TextYAlignment.Top
	Message["_MessageContent"].AutomaticSize = Enum.AutomaticSize.Y
	Message["_MessageContent"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Message["_MessageContent"].BackgroundTransparency = 1
	Message["_MessageContent"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Message["_MessageContent"].BorderSizePixel = 0
	Message["_MessageContent"].Size = UDim2.new(1, 0, 0, 23)
	Message["_MessageContent"].Name = "MessageContent"
	Message["_MessageContent"].Parent = Message["_Message"]

	Message["_Message_Corner"].CornerRadius = UDim.new(0, 5)
	Message["_Message_Corner"].Name = "Message_Corner"
	Message["_Message_Corner"].Parent = Message["_Message"]

	Message["_Message_Padding"].PaddingLeft = UDim.new(0, 7)
	Message["_Message_Padding"].PaddingRight = UDim.new(0, 7)
	Message["_Message_Padding"].Name = "Message_Padding"
	Message["_Message_Padding"].Parent = Message["_Message"]
    messageinstances[tostring(id)] = {
        edittext = function(x)
            Message["_MessageContent"] = x
        end,
        edituser= function(x)
            Message["_MessageOwner"] = x
        end,
        remove = function()
            Message["_Message"]:Destroy()
            messageinstances[tostring(id)]=nil
        end
    }
end
local isbusyloadingmsgs = false
function loadmessages()
    isbusyloadingmsgs = true
	local msg = discordrest(`https://discord.com/api/v9/channels/{CurrentChannel.id}/messages?limit=10`)
    for i,v in pairs(msg) do
        local found
        for i,c in pairs(CurrentChannel.messages) do
            if c.id == v.id then
                found = i
                break
            end
        end
        local zzz,qwe = pcall(function()
            return CurrentChannel.messages[found]
        end)
        if zzz and not CurrentChannel.messages[found] then
            table.insert(CurrentChannel.messages,{
                name = v.author.global_name or v.author.username,
                content = v.content,
                id = v.id
            })
            table.sort(CurrentChannel.messages,function(id1,id2)
                return tonumber(id1.id)<tonumber(id2.id)
            end)
        else
            CurrentChannel.messages[found].name = v.author.global_name or v.author.username
            CurrentChannel.messages[found].content = v.content
        end
    end
    table.foreach(CurrentChannel.messages,function(i,v)
        local found
        for i,c in pairs(CurrentChannel.messages) do
            if c.id == v.id then
                found = i
                break
            end
        end
        local zzz,qwe = pcall(function()
            return CurrentChannel.messages[found]
        end)
        if zzz and messageinstances[tostring(CurrentChannel.messages[found].id)] then
            local ins = messageinstances[tostring(CurrentChannel.messages[found].id)]
            ins.edittext(CurrentChannel.messages[found].content)
            ins.edituser(CurrentChannel.messages[found].name)
        else
            createmessage(v.name,v.content,v.id)
        end
    end)
    isbusyloadingmsgs = false
end
function dmUserButton(name,id)
	local UserButtonUI = {
		["_UserSelect"] = Instance.new("ImageButton");
		["_UserSelect_Corner"] = Instance.new("UICorner");
		["_Username"] = Instance.new("TextLabel");
	}
	UserButtonUI["_UserSelect"].Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	UserButtonUI["_UserSelect"].ImageTransparency = 1
	UserButtonUI["_UserSelect"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserButtonUI["_UserSelect"].BackgroundTransparency = 0.9900000095367432
	UserButtonUI["_UserSelect"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserButtonUI["_UserSelect"].BorderSizePixel = 0
	UserButtonUI["_UserSelect"].Size = UDim2.new(1, 0, 0, 26)
	UserButtonUI["_UserSelect"].Name = "UserSelect"
	UserButtonUI._UserSelect.Parent = Fake_ass_discord._DMUserList
	UserButtonUI["_UserSelect"].MouseButton1Click:Connect(function()
        if CurrentChannel.id ~= id then
            CurrentChannel.id = id
            for i,v in pairs(Fake_ass_discord._MesageList:GetChildren()) do
                if v:IsA("Frame") then
                    v:Destroy()
                end
            end
            table.clear(CurrentChannel.messages)
            table.clear(messageinstances)
            Fake_ass_discord["_MessageInput"].PlaceholderText = "Message @" .. name
            Fake_ass_discord["_TextLabel"].Text = "@" .. name
        end
        loadmessages()
	end)

	UserButtonUI["_UserSelect_Corner"].Name = "UserSelect_Corner"
	UserButtonUI["_UserSelect_Corner"].Parent = UserButtonUI["_UserSelect"]

	UserButtonUI["_Username"].Font = Enum.Font.SourceSans
	UserButtonUI["_Username"].Text = name
	UserButtonUI["_Username"].TextColor3 = Color3.fromRGB(255, 255, 255)
	UserButtonUI["_Username"].TextSize = 14
	UserButtonUI["_Username"].TextXAlignment = Enum.TextXAlignment.Left
	UserButtonUI["_Username"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserButtonUI["_Username"].BackgroundTransparency = 1
	UserButtonUI["_Username"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserButtonUI["_Username"].BorderSizePixel = 0
	UserButtonUI["_Username"].Size = UDim2.new(1, 0, 1, 0)
	UserButtonUI["_Username"].Name = "Username"
	UserButtonUI["_Username"].Parent = UserButtonUI["_UserSelect"]
	UserButtonUI["_Username"].TextTruncate = Enum.TextTruncate.AtEnd
end
function loaddms()
	local dmChannels =  discordrest("https://discord.com/api/v9/users/@me/channels")
    table.foreach(dmChannels,function (i,v)
        if #v.recipients>1 then
            local groupname = ""
            for i,user in pairs(v.recipients) do
                if i == 1 then
                    groupname = (user.global_name or user.username)
                else
                    groupname = groupname ..", ".. (user.global_name or user.username)
                end
            end
            dmUserButton(v.name or groupname,v.id)
        else
            local name = v.recipients[1].global_name or v.recipients[1].username
            dmUserButton(name,v.id)
        end
    end)
end
loaddms()
local show = false
mod.token = "your token here"
mod.open = function()
	if mod.token:len() < 20 then
		return warn("enter a valid token")
	end
	show = not show
	Fake_ass_discord["_Fake ass discord"].Enabled = show
	if show then
		coroutine.wrap(function()
			_G.fakebuiltinDiscord.isrunning = true
			while _G.fakebuiltinDiscord.isrunning do
				if not isbusyloadingmsgs and CurrentChannel.id ~= "" then
					loadmessages()
				end
				wait(3)
			end
		end)
	else
		_G.fakebuiltinDiscord.isrunning = true
	end
end

return mod
