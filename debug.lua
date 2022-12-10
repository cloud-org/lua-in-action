---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ashing.
--- DateTime: 2022/12/11 00:22
---

function myfunction ()
    print(debug.traceback("Stack trace"))
    print(debug.getinfo(1))
    print("Stack trace end")
    return 10
end
myfunction ()
print(debug.getinfo(1))

print("====")
-- new sample
function newCounter ()
    local n = 0
    local k = 0
    return function ()
        k = n
        n = n + 1
        return n
    end
end

counter = newCounter ()
print(counter())
print(counter())

local i = 1

repeat
    name, val = debug.getupvalue(counter, i)
    if name then
        print ("index", i, name, "=", val)
        if(name == "n") then
            debug.setupvalue (counter,2,10) -- debug 设置 n 为 10 下一步 n == 11
        end
        i = i + 1
    end -- if
until not name

print(counter())