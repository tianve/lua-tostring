


local tostring = require("tostring")


return function(...)
    local maxn = 0
    local args = {...}
    for i,v in pairs(args) do
        args[i] = tostring(v)
        maxn = i > maxn and i or maxn
    end
    for i = 1, maxn do
        if args[i] == nil then
            args[i] = "nil"
        end
    end
    print(table.unpack(args))
end














