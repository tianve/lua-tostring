


local _tostring
_tostring = function(var, tab)
    tab = tab or ""

    local t = type(var)
    if t == "string" then
        return string.format("%q", var)
    elseif t == "number" then
        return tostring(var)
    elseif t == "boolean" then
        return var and "true" or "false"
    elseif t == "table" then
        local strs = {"{\n"}
        for k,v in pairs(var) do
            table.insert(strs, tab)
            table.insert(strs, "    [")

            local tt = type(k)
            if tt == "string" then
                table.insert(strs, string.format("%q", k))
            elseif tt == "number" then
                table.insert(strs, k)
            else
                --k not supported
                table.insert(strs, string.format("%q", tostring(k)))
            end
            table.insert(strs, "]=")
            table.insert(strs, _tostring(v, tab.."    "))
            table.insert(strs, ",\n")
        end
        table.insert(strs, tab)
        table.insert(strs, "}")
        return table.concat(strs)
    elseif t == "nil" then
        return "nil"
    else
        return t
    end
end


return _tostring

