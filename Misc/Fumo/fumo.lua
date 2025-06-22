loadstring(game:HttpGet(('https://raw.githubusercontent.com/IAmMrNoob/RFE/main/NoobsUI/lilTopbarPlugin.lua'),true))()
local ShittyMediaViewer = {}
local mainF = "Fumo"
local currentLogin = DateTime.now().UnixTimestamp
local lastLogin = 0
if not isfolder(mainF) then
    makefolder(mainF)
end
if isfile(mainF.."/".."lastLogin") then
    lastLogin = tonumber(readfile(mainF.."/".."lastLogin")) or 0
else
    writefile(mainF.."/".."lastLogin",currentLogin)
end
if not isfile(mainF.."/".."logo") then
	writefile(mainF.."/".."logo",game:HttpGet("https://raw.githubusercontent.com/IAmMrNoob/RFE/refs/heads/main/Misc/Fumo/Fumo%20Logo.png"))
end

function ShittyMediaViewer.Create(_Title,LogoAsset)
	local ScreanGui = Instance.new("ScreenGui",gethui())
	local Main = Instance.new("Frame",ScreanGui)
	local Topbar = Instance.new("Frame",Main)
	local Logo = Instance.new("ImageLabel",Topbar)
	local UICorner = Instance.new("UICorner",Logo)
	local UIListLayout = Instance.new("UIListLayout",Topbar)
	local Title = Instance.new("TextLabel",Topbar)
	local Close = Instance.new("ImageButton",Topbar)
	local Frame = Instance.new("Frame",Main)
	local flex = Instance.new("UIFlexItem",Frame)
	local Frame_2 = Instance.new("Frame",Frame)
	local image = Instance.new("ImageLabel",Frame_2)
	local video = Instance.new("VideoFrame",Frame_2)
	local UICorner_2 = Instance.new("UICorner",Frame_2)
	local Frame_3 = Instance.new("Frame",Frame)
	local Previous = Instance.new("ImageButton",Frame_3)
	local Counter = Instance.new("TextLabel",Frame_3)
	local cflex = Instance.new("UIFlexItem",Counter)
	local Next = Instance.new("ImageButton",Frame_3)
	local UIListLayout_2 = Instance.new("UIListLayout",Frame_3)
	local UICorner_3 = Instance.new("UICorner",Frame_3)
	local UIListLayout_3 = Instance.new("UIListLayout",Frame)
	local UIListLayout_4 = Instance.new("UIListLayout",Main)
	local UICorner_4 = Instance.new("UICorner",Main)

	Main.Name = "Main"
	Main.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.ClipsDescendants = true
	--Main.Visible = false
	Main.Position = UDim2.new(0.419667751, 0, 0.334123224, 0)
	Main.Size = UDim2.new(0, 230, 0, 280)

	Topbar.Name = "Topbar"
	Topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Topbar.BackgroundTransparency = 0.950
	Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Topbar.BorderSizePixel = 0
	Topbar.Size = UDim2.new(1, 0, 0, 20)
	local UserInputService = game:GetService("UserInputService")
	local dragging,dragInput,dragStart,startPos
	local UIToDrag,ThingToGrab = Main,Topbar
	local function update(input)
		local delta = input.Position - dragStart
		wait(1/120)
		UIToDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	ThingToGrab.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = UIToDrag.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	ThingToGrab.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	Logo.Name = "Logo"
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.ImageTransparency = 1
	Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Logo.BorderSizePixel = 0
	Logo.Size = UDim2.new(0, 20, 0, 20)
	Logo.Image = getcustomasset(mainF.."/".."logo") or "rbxasset://textures/ui/GuiImagePlaceholder.png"

	UICorner.CornerRadius = UDim.new(0, 5)

	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	Title.Name = "Title"
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(1, -46, 1, 0)
	Title.Font = Enum.Font.Roboto
	Title.Text = _Title or "Viewer"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 18.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.BorderSizePixel = 1

	Close.Name = "Close"
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.LayoutOrder = 2
	Close.Size = UDim2.new(0, 20, 0, 20)
	Close.Image = "rbxassetid://10747384394"

	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.LayoutOrder = 1
	Frame.ClipsDescendants = true
	Frame.Size = UDim2.new(1, 0, 1, 0)

	flex.FlexMode = Enum.UIFlexMode.Fill

	Frame_2.AnchorPoint = Vector2.new(0.5, 0)
	Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_2.BackgroundTransparency = 0.900
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.ClipsDescendants = true
	Frame_2.Position = UDim2.new(0.5, 0, 0, 10)
	Frame_2.Size = UDim2.new(0.800000012, 0, 0.699999988, 0)
	Frame_2.LayoutOrder = 2

	image.Name = "image"
	image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	image.BorderColor3 = Color3.fromRGB(0, 0, 0)
	image.BorderSizePixel = 0
	image.BackgroundTransparency = 1
	image.Size = UDim2.new(1, 0, 1, 0)
	image.Visible = false
	image.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	image.ScaleType = Enum.ScaleType.Fit
	
	video.Name = "video"
	video.Visible = false
	video.BackgroundTransparency = 1
	image.Size = UDim2.new(1, 0, 1, 0)

	UICorner_2.CornerRadius = UDim.new(0, 5)

	Frame_3.AnchorPoint = Vector2.new(0.5, 1)
	Frame_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BackgroundTransparency = 0.850
	Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.5, 0, 1, -15)
	Frame_3.Size = UDim2.new(0.800000012, 0, 0, 30)
	Frame_3.LayoutOrder = 3

	Previous.Name = "Previous"
	Previous.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Previous.BackgroundTransparency = 1.000
	Previous.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Previous.BorderSizePixel = 0
	Previous.Size = UDim2.new(0, 30, 0, 30)
	Previous.Image = "rbxassetid://10709791281"

	Counter.Name = "Counter"
	Counter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Counter.BackgroundTransparency = 1.000
	Counter.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Counter.BorderSizePixel = 0
	Counter.Size = UDim2.new(0, 0, 1, 0)
	Counter.Font = Enum.Font.Roboto
	Counter.Text = "0/0"
	Counter.LayoutOrder = 1
	Counter.TextColor3 = Color3.fromRGB(255, 255, 255)
	Counter.TextSize = 24.000

	cflex.FlexMode = Enum.UIFlexMode.Fill

	Next.Name = "Next"
	Next.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Next.BackgroundTransparency = 1.000
	Next.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Next.BorderSizePixel = 0
	Next.LayoutOrder = 2
	Next.Size = UDim2.new(0, 30, 0, 30)
	Next.Image = "rbxassetid://10709791437"

	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	UICorner_3.CornerRadius = UDim.new(0, 5)

	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_3.Padding = UDim.new(0, 11)

	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

	UICorner_4.CornerRadius = UDim.new(0, 5)
	local MediaViewer = {}
	MediaViewer.Viewer = {
		Current = 0,
		Assets = {}
	}
	function MediaViewer.Visibility(x)
		ScreanGui.Enabled = x or not ScreanGui.Enabled
		video:Pause()
	end
	Close.MouseButton1Click:Connect(MediaViewer.Visibility)
	local function display()
		Counter.Text = tostring(MediaViewer.Viewer.Current).."/"..tostring(#MediaViewer.Viewer.Assets)
	end
	Previous.MouseButton1Click:Connect(function()
		local Current,Assets = MediaViewer.Viewer.Current,MediaViewer.Viewer.Assets
		if #Assets > 0 and Current > 1 then
			MediaViewer.Viewer.Current -= 1
			Current,Assets = MediaViewer.Viewer.Current,MediaViewer.Viewer.Assets
			if Assets[Current].Type == 0 then
				video.Visible = false
				image.Visible = true
				video:Pause()
				image.Image = Assets[Current].Id
			elseif Assets[Current].Type == 1 then
				image.Visible = false
				video.Visible = true
				video.Video = Assets[Current].Id
				video.TimePosition = 0
				video:Play()
			end
		end
		display()
	end)
	Next.MouseButton1Click:Connect(function()
		local Current,Assets = MediaViewer.Viewer.Current,MediaViewer.Viewer.Assets
		if #Assets > 0 and Current < #Assets then
			MediaViewer.Viewer.Current += 1
			Current,Assets = MediaViewer.Viewer.Current,MediaViewer.Viewer.Assets
			if Assets[Current].Type == 0 then
				video.Visible = false
				image.Visible = true
				video:Pause()
				image.Image = Assets[Current].Id
			elseif Assets[Current].Type == 1 then
				image.Visible = false
				video.Visible = true
				video.Video = Assets[Current].Id
				video.Loaded:Wait()
				video:Play()
			end
		end
		display()
	end)

	function MediaViewer.AddImage(AssetId)
		table.insert(MediaViewer.Viewer.Assets,{
			Type = 0,
			Id = AssetId
		})
		display()
	end
	function MediaViewer.AddVideo(AssetId) -- thing is with exploits(or i mean executors) i dont think they support .mp4 just webm and i tried it idk what i was doing lowkey but it said something about video resolution not supported but if yk why tell me so i can probably fix that
		table.insert(MediaViewer.Viewer.Assets,{
			Type = 1,
			Id = AssetId
		})
		display()
	end
	
	return MediaViewer
end

local json = {
    decode = function(x:"json string")
        return game:GetService("HttpService"):JSONDecode(x)
    end,
    encode = function(x:"table")
        return game:GetService("HttpService"):JSONEncode(x)
    end
}
local req = {
    Get = function(url,head,cookie)
        return request({
            Url = url,
            Method = "GET",
            Headers = head or {},
            Cookies = cookie or {}
        })
    end
    --[[Post = function(url,head,body,cookie)
        local response = request({
            Url = url,
            Method = "GET",
            Headers = head or {
                Accept = "application/json",
            }, -- Optional | HTTP Headers
            Body = body or {},
            Cookies = cookie or {}
        })
    end]]
}
local function date(seconds)
    return DateTime.fromUnixTimestamp(seconds):FormatLocalTime("DD/MM/YYYY","en-us")
end
local mediaviewer = ShittyMediaViewer.Create("Touhou Everyday")
mediaviewer.Visibility(true)
topBarAddon.Button( 
    "Daily Touhou",
    function()
        mediaviewer.Visibility()
    end,{
        Image = getcustomasset(mainF.."/".."logo"),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(360, 360)
})
local function checkFileType(ext:string)
	local imgs,vids = {
		"jpg","png"
	},{
		"mp4"
	}
	local returnType
	for i,v in pairs(imgs) do
		if v:match(ext) then
			returnType = 0
			break
		end
	end
	for i,v in pairs(vids) do
		if v:match(ext) then
			returnType = 1
			break
		end
	end
	return returnType
end
if currentLogin > lastLogin and date(lastLogin) ~= date(currentLogin) then
    writefile(mainF.."/".."lastLogin",currentLogin)
    local treeItems = json.decode(req.Get("https://github.com/IAmMrNoob/RFE/tree/main/Misc/Fumo",{
            Accept = "application/json",
    }).Body).payload.tree.items
    local dir = {}
    for i,v in pairs(treeItems) do
        if v.contentType == "directory" then
            table.insert(dir,v.path)
        end
    end--https://github.com/IAmMrNoob/RFE/tree-commit-info/main/
    local selectedDir = dir[math.random(1,#dir)]
    local file = json.decode(req.Get("https://github.com/IAmMrNoob/RFE/tree-commit-info/main/"..selectedDir,{
            Accept = "application/json",
    }).Body)
    local files = {}
    for i,_ in pairs(file) do
        table.insert(files,i)
    end
    --https://raw.githubusercontent.com/IAmMrNoob/RFE/refs/heads/main/Misc/Fumo/Puck_227/1909353480583774265_1.jpg
    local allimages = {}
    local dopick 
	dopick = function()
		local selcetedFile:string = files[math.random(1,#files)]
		local name = selcetedFile:split("_")[1]
		for i,v in pairs(files) do
			if v:split("_")[1] == name then
				local ext = checkFileType(v:split(".")[2])
				if ext == 0 then
					table.insert(allimages,v)
				end
			end
		end
		if #allimages == 0 then
			dopick()
		end
	end
	dopick()
    writefile(mainF.."/".."files",json.encode({
        ["sDir"] = selectedDir,
        ["imageNames"] = allimages
    }))
    for i=1,4 do
        local v = allimages[i]
        if v then
			local ext = checkFileType(v:split(".")[2])
            local filelocation = mainF.."/"..tostring(i)
            writefile(filelocation, game:HttpGet("https://raw.githubusercontent.com/IAmMrNoob/RFE/refs/heads/main/"..selectedDir..'/'..v))
			print("https://x.com/"..selectedDir:split("/")[3].."/status/"..v:split("_")[1])
			if ext == 0 then
				mediaviewer.AddImage(getcustomasset(filelocation))
			end
        end
    end
else
    local info = json.decode(readfile(mainF.."/".."files"))
    for i=1,4 do
        local v = info.imageNames[i]
        if v then
			local ext = checkFileType(v:split(".")[2])
            local filelocation = mainF.."/"..tostring(i)
			print("https://x.com/"..info.sDir:split("/")[3].."/status/"..v:split("_")[1])
			if ext == 0 then
				mediaviewer.AddImage(getcustomasset(filelocation))
			end
        end
    end
end
