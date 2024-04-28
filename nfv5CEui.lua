--loadstring(game:HttpGet('https://raw.githubusercontent.com/IAmMrNoob/RFE/main/nfv5CEui.lua'))()
local exec = identifyexecutor():lower()
if not exec:match("netflix") and not exec:match("v5") then
    return
end
local plr = game:GetService("Players").LocalPlayer
local pGui = plr:WaitForChild("PlayerGui")
local netflix
local nfUi = {
	sG = nil,
	Main = nil,
	Notif = nil,
	Open = nil
}
for i,v in pairs(pGui:GetDescendants()) do -- idk why im doing this i could just easily do pGui[""]
	if v:IsA("TextLabel") and v.FontFace.Family:match("Oswald.json") == "Oswald.json" then
		nfUi.sG = v.Parent.Parent;break
	end
end
nfUi.Main = nfUi.sG.All
nfUi.Notif = nfUi.sG.Notify
nfUi.Open = nfUi.sG.Open
netflix = nfUi.sG
local button = netflix.Open:Clone()
button.Parent = netflix.Open.Parent
netflix.Open:destroy()
nfUi.Open = button
local opened = true
local openclose = function()
    local main = nfUi.Main--
    local un = {Enum.EasingDirection.In,Enum.EasingStyle.Sine,.2}
    local un2 = {Enum.EasingDirection.Out,Enum.EasingStyle.Sine,.2}
    opened = not opened
    if opened then
        main:TweenSizeAndPosition(UDim2.new(0.75, 0, 0.6, 0),UDim2.new(0.5, 0, 0.5, 0),unpack(un2))
    else
        local size = (button.AbsoluteSize*button.AnchorPoint)/nfUi.sG.AbsoluteSize
        local posx = button.Position.X + UDim.new(0,-3)
        local posy = button.Position.Y-- + UDim.new(size.Y,0)
        main:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0),UDim2.new(posx,posy),unpack(un))
    end
end
button.MouseButton1Click:Connect(openclose)
-- maybe i just wanna be fancy idk
local button = nfUi.Open
button.Size = UDim2.new(0.03, 0,0.03, 0)
button.Position = UDim2.new(0.97, 0,0.02, 0)
button.AnchorPoint = Vector2.new(1, 0.5)
for i,v in pairs(nfUi.Main:GetDescendants()) do
    if v:IsA("TextButton") and v.Text == "-" then
        button = v;break
    end
end
local minButton = button:Clone()
minButton.Parent = button.Parent
minButton.MouseButton1Click:Connect(openclose)
minButton.LayoutOrder = -1
button:destroy()
local editor
for i,v in pairs(nfUi.Main:GetDescendants()) do
    if v:IsA("TextBox") and v.PlaceholderText:match("Netflix") then
        editor = v;break
    end
end
editor.MultiLine = true
editor.TextWrapped = false
editor.LineHeight = 1.3
editor.Parent.AutomaticCanvasSize = Enum.AutomaticSize.Y
editor.AutomaticSize = Enum.AutomaticSize.Y
local number = editor.Parent:FindFirstChildOfClass("TextLabel")
number.AutomaticSize = Enum.AutomaticSize.Y
number.LineHeight = 1.3
for i,v in pairs(nfUi.Main:GetDescendants()) do
    if v:IsA("TextButton") then
        if v.Text == "Options" then
            v.Name = v.Name:gsub("%d+","5")
        elseif v.Text == "Discord" then
            v.Name = v.Name:gsub("%d+","4")
        elseif v.Text == "Execute" then
            v.Name = v.Name:gsub("%d+","1")
        elseif v.Text == "Clear" then
            v.Name = v.Name:gsub("%d+","2")
        elseif v.Text == "Save" then
            v.Name = v.Name:gsub("%d+","3")
        end
    end
end
