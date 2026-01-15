--- id say is of low quality(by my standards ig???) and id rather not even notify my server about it 
--- its almost basicly a copy paste of my topbar one

local TopBarAppSGui
for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
	if v:IsA("ScreenGui") and v.Name == "TopBarApp" then
		TopBarAppSGui = v
		break
	end
end
if TopBarAppSGui == nil then
	return "Roblox topbar didnt load ig"
end
local UnibarMenu:Frame

for i,v in pairs(TopBarAppSGui:GetDescendants()) do
	if v.Name == "UnibarMenu" and v:IsA("Frame") then	
		UnibarMenu = v
		break
	end
end

if UnibarMenu == nil then
	return "couldnt find unibar"
end
UnibarMenu.AutomaticSize = "X"
UnibarMenu:WaitForChild("2").AutomaticSize = "X"
local bigone:Frame = UnibarMenu:WaitForChild("2"):WaitForChild("3")
bigone.AutomaticSize = "X"
local listlayout = Instance.new("UIListLayout",bigone)
listlayout.FillDirection = "Horizontal"
listlayout.SortOrder = Enum.SortOrder.LayoutOrder
bigone:WaitForChild("nine_dot").LayoutOrder = -2
bigone:WaitForChild("chat").LayoutOrder = -1
if getgenv().menuTopBarPlugin ~= nil then
	return
end
getgenv().menuTopBarPlugin = {}

--- lowkey got no members in it and i post nothing in it btw
writefile("discord Wn4YQ7vG4S", game:HttpGet("https://cdn.discordapp.com/icons/934681119645921280/2e08b9d6b73e7dab3467a9c84c5f50c4.png?quality=lossless"))

function menuTopBarPlugin.createButton(IconUrl,Callback)
	Callback = Callback or function()
		print("come on do something")
	end
	IconUrl = IconUrl or getcustomasset("discord Wn4YQ7vG4S")
	local clone = bigone:WaitForChild("chat"):Clone()
	clone.LayoutOrder = 0
	clone.Parent = bigone:WaitForChild("chat").Parent
	local hitb = clone:FindFirstChildOfClass("ImageButton")
	hitb.Image = IconUrl
	
	local db_ig = true
	hitb.MouseEnter:Connect(function()
		clone:WaitForChild("Highlighter").Visible = true
		db_ig = false
	end)
	hitb.MouseLeave:Connect(function()
		clone:WaitForChild("Highlighter").Visible = false
		db_ig = true
	end)
	hitb.MouseButton1Click:Connect(function()
		if db_ig then
			return
		end
		Callback()
	end)
end

--[[
writefile("cat.png", game:HttpGet("https://i.kym-cdn.com/entries/icons/original/000/043/403/cover3.jpg"))

menuTopBarPlugin.createButton("cat.png",function()
  print"son im crine"
end)

loadstring(game:HttpGet(('https://raw.githubusercontent.com/IAmMrNoob/RFE/main/NoobsUI/menuTopBarPlugin.lua'),true))()

]]
