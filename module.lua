---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ashing.
--- DateTime: 2022/12/7 23:49
---

m = {}

m.name = "panda"

function m.fun1()
    io.write("public fun1")
end

local function func2()
    io.write("private fun2")
end

function m.fun3()
    print("public func3")
    func2()
end

-- 最后需要 return
return m