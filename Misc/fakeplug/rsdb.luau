--[[
 tank you @[http://www.rsdb.org/full] for this list!!
]]
local mod = {}

mod.SOTD = {
    slur = "[Not loaded or try refresh]",
    affacted = "[Not loaded or try refresh]",
    details = "[Not loaded or try refresh]"
}
mod.SlurList = {
    {
        slur = "[Not loaded or try refresh]",
        represent = "[Not loaded or try refresh]",
        origin_reason = "[Not loaded or try refresh]"
    }
}
mod.Refresh = function(v)
    local x = request{
        Url = (v ~= nil and "http://www.rsdb.org/full" or "http://www.rsdb.org/"),
        Method = "GET",
        Headers = {
            Accept = "*/*"
        }
    }
    local slurpage = x.Body
    slurpage = slurpage:split("<!-- START EXTRAS -->")[2]
    slurpage = slurpage:split("<!-- END SLURS -->")[1]
    local sotd,sl = unpack(slurpage:split("\n<!-- END EXTRAS -->\n<!-- START SLURS -->\n"))
    sotd = sotd:split([[<h1>Racial Slur Of The Day</h1>]])[2]:gsub("\n",""):gsub("\t","")
    sotd = sotd:split([[<div class="usage">]])[1]:split([[</div>]])
    sotd[1] = sotd[1]:gsub([[<div class="slur">]],""):gsub([[</a>]],""):split(">")[2]
    sotd[2] = sotd[2]:gsub([[><a href=]],""):gsub([[</a>]],""):split(">")[2]
    sotd[3] = sotd[3]:split(">")[2]:split(" ")
    local sentence = ""
    table.foreach(sotd[3],function(_,v)
        if v ~= "" then
            sentence = sentence ..v.. " "
        end
    end)
    sotd[3] = sentence:sub(0,sentence:len()-1)
    mod.SOTD = {
        slur = sotd[1],
        affacted = sotd[2],
        details = sotd[3]
    }
    sl = sl:gsub("\n",""):split([[</thead>]])[2]:split([[</table>]])[1]:split([[</tr>]])
    table.foreach(sl, function (i,v)
        if v=="" then
            sl[i] = nil
            return
        end
        local set = v:split([[</td>]])
        set[1] = set[1]:gsub([[</a>]],""):split(">")
        set[2] = set[2]:gsub([[</a>]],""):split(">")
        set[1] = set[1][#set[1]]
        set[2] = set[2][#set[2]]
        set[3] = set[3]:gsub([[<td>]],"")
        sl[i] = {
            slur = set[1],
            represent = set[2],
            origin_reason = set[3],
        }
    end)
    mod.SlurList = sl
end

return mod
