


local print = require("print")

print(1, 123, "string", nil, {}, {1,2,3}, {a=1,b=2,c=3})

print({1,2,3,4,5,6,7,8,9})
print({1,2,3,4,nil,6,7,8,9})

print({"aaaaaaaaa", "123456789", "bbbbbbbbb"})
print({"aaaaaaaaa", "123456789", "bbbbbbbbb", "aaaaaaaaa", "123456789", "bbbbbbbbb", "aaaaaaaaa", "123456789", "bbbbbbbbb", "aaaaaaaaa", "123456789", "bbbbbbbbb"})

print({
    hello = "world",
    test = "test",
    table = {
        a = 1,
        b = 2,
        c = {},
        d = {1,2,3},
        e = {
            subkey = "subkey",
            subtab = {
                first = 111,
                last = 222
            }
        },
    }
})

print({
    ["key.x"] = 1,
    key = 2,
    tab = {
        name = "tab",
        [101] = 102,
    },
    [10001] = 10001,
    [10002] = 10002,
})









