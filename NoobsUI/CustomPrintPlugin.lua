--[[
  Why am i still doing ts </3

https://discord.gg/Wn4YQ7vG4S (btw got like 2 members)
3]]
if getgenv().devC then
    devC.Clear()
else
    getgenv().devC = {
        Con = {},
        fakePrints = {},
        Clear = function()
            for i,v in pairs(devC.Con) do
                v:Disconnect()
            end
            if devC.CLCon then
                devC.CLCon:Disconnect()
            end
            if devC.setCon then
                devC.setCon:Disconnect()
            end
        end
    }
    getgenv().devConsole = getgenv().devC
end
local function sexify(text:string,unsexify)
    if unsexify then
        return base64_decode(text):gsub("%s+", "")
    end
    return base64_encode(text)
end
local function getDesc(p,func)
    for _, v in pairs(p:GetDescendants()) do
        func(v)
    end
end
local function devlogshit(Child)
    if tonumber(Child.Name) ~= nil and Child:IsA("Frame") then
        Child.msg.AutomaticSize = "Y"
        Child.AutomaticSize = "Y"
        local consoleTS = Child.msg.Text:split(" -- ")[1]
        local consolemsg = Child.msg.Text:split(" -- ")[2]
        for id,_ in pairs(devC.fakePrints) do
            if sexify(consolemsg,true):sub(0,id:len()) == id then
                Child.msg.RichText = true
                local this = devC.fakePrints[id]
                this.label = Child.msg
                this.TS = consoleTS.." -- "
                this.setText(this.cText)
            end
        end
    end
end
local function terribleSetup(v)
    if v.Name == "DevConsoleUI" and v:IsA("Frame") then
        devC.setCon:Disconnect()
        devC.Inst = v
        local function slightSetupWithinASetup(clV)
            if clV.Name == "ClientLog" and clV:IsA("ScrollingFrame") then
                devC.CL = clV
                clV.AutomaticCanvasSize = Enum.AutomaticSize.Y
                table.insert(devC.Con,clV.ChildAdded:Connect(devlogshit))
                for i, x in pairs(clV:GetChildren()) do
                    devlogshit(x)
                end
            end
        end
        devC.CLCon = v.DescendantAdded:Connect(slightSetupWithinASetup)
        getDesc(v,slightSetupWithinASetup)
    end
end
devC.setCon = game:GetService("CoreGui").DescendantAdded:Connect(terribleSetup)
getDesc(game:GetService("CoreGui"),terribleSetup)
devC.cmPrint = function (printVar:string,CurrentText)
    if devC.fakePrints[printVar] ~= nil then
        return devC.fakePrints[printVar]
    end
    local thing = {
        cText = CurrentText,
        label = nil,
        TS = "timestamp",
        reprint = function()
            print(sexify(printVar))
        end,
        remove = function()
            table.clear(devC.fakePrints[printVar])
            devC.fakePrints[printVar] = nil
        end
    }
    thing.reprint()
    thing.setText = function(text)
        text = typeof(text) == "string" and text or "Hello, World!"
        if thing.label ~= nil then
            thing.cText = text
            thing.label.Text = thing.TS..text
        end
    end
    devC.fakePrints[printVar] = thing
    return thing
end
